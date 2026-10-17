#!/usr/bin/env python3
"""
XXTEA Encryption/Decryption for Cocos2d-x Lua files.

File format:
  Encrypted .luac file:
    [10 bytes] Signature: "RICKTOPINC"
    [N bytes]  XXTEA encrypted: [Lua source][null padding][4-byte LE length]

  After decryption:
    [Lua source code (N bytes)]
    [null padding to 4-byte alignment (0-3 bytes)]
    [4-byte little-endian uint32: original source length N]

The length field is CRITICAL - it must match the actual Lua source code size
for the Cocos2d-x engine to load the file correctly.
"""

import sys
import os
import struct
from pathlib import Path


def xxtea_encrypt(data, key):
    """XXTEA encryption implementation."""
    def MX(z, y, sum_val, p, e, key):
        return (((z >> 5) ^ (y << 2)) + ((y >> 3) ^ (z << 4))) ^ ((sum_val ^ y) + (key[(p & 3) ^ e] ^ z))

    def btea_encrypt(v, k):
        """XXTEA encryption"""
        n = len(v)
        if n < 2:
            return v

        rounds = 6 + 52 // n
        sum_val = 0
        z = v[n - 1]

        while rounds > 0:
            sum_val = (sum_val + 0x9E3779B9) & 0xFFFFFFFF
            e = (sum_val >> 2) & 3
            for p in range(n - 1):
                y = v[p + 1]
                v[p] = (v[p] + MX(z, y, sum_val, p, e, k)) & 0xFFFFFFFF
                z = v[p]
            y = v[0]
            v[n - 1] = (v[n - 1] + MX(z, y, sum_val, n - 1, e, k)) & 0xFFFFFFFF
            z = v[n - 1]
            rounds -= 1

        return v

    # Ensure key is bytes
    if isinstance(key, str):
        key = key.encode('utf-8')

    # Pad key to 16 bytes
    if len(key) < 16:
        key = key + b'\x00' * (16 - len(key))
    else:
        key = key[:16]

    # Convert key to uint32 array
    key_ints = list(struct.unpack('<4I', key))

    # Pad data to multiple of 4
    data_len = len(data)
    if data_len % 4 != 0:
        data = data + b'\x00' * (4 - data_len % 4)

    # Convert to uint32 array
    data_ints = list(struct.unpack(f'<{len(data)//4}I', data))

    # Encrypt
    encrypted_ints = btea_encrypt(data_ints, key_ints)

    # Convert back to bytes
    encrypted_data = struct.pack(f'<{len(encrypted_ints)}I', *encrypted_ints)

    return encrypted_data


def xxtea_decrypt(data, key):
    """XXTEA decryption implementation."""
    def MX(z, y, sum_val, p, e, key):
        return (((z >> 5) ^ (y << 2)) + ((y >> 3) ^ (z << 4))) ^ ((sum_val ^ y) + (key[(p & 3) ^ e] ^ z))

    def btea_decrypt(v, k):
        """XXTEA decryption"""
        n = len(v)
        if n < 2:
            return v

        rounds = 6 + 52 // n
        sum_val = (rounds * 0x9E3779B9) & 0xFFFFFFFF
        y = v[0]

        while rounds > 0:
            e = (sum_val >> 2) & 3
            for p in range(n - 1, 0, -1):
                z = v[p - 1]
                v[p] = (v[p] - MX(z, y, sum_val, p, e, k)) & 0xFFFFFFFF
                y = v[p]
            z = v[n - 1]
            v[0] = (v[0] - MX(z, y, sum_val, 0, e, k)) & 0xFFFFFFFF
            y = v[0]
            sum_val = (sum_val - 0x9E3779B9) & 0xFFFFFFFF
            rounds -= 1

        return v

    # Ensure key is bytes
    if isinstance(key, str):
        key = key.encode('utf-8')

    # Pad key to 16 bytes
    if len(key) < 16:
        key = key + b'\x00' * (16 - len(key))
    else:
        key = key[:16]

    # Convert key to uint32 array
    key_ints = list(struct.unpack('<4I', key))

    # Pad data to multiple of 4
    data_len = len(data)
    if data_len % 4 != 0:
        data = data + b'\x00' * (4 - data_len % 4)

    # Convert to uint32 array
    data_ints = list(struct.unpack(f'<{len(data)//4}I', data))

    # Decrypt
    decrypted_ints = btea_decrypt(data_ints, key_ints)

    # Convert back to bytes
    decrypted_data = struct.pack(f'<{len(decrypted_ints)}I', *decrypted_ints)

    return decrypted_data


def decrypt_luac_file(input_path, output_path, key="RICKTOPCOCOS2DX", signature=b"RICKTOPINC"):
    """
    Decrypt a .luac file encrypted with XXTEA.
    Properly extracts the Lua source using the length field.
    """
    print(f"Decrypting: {input_path}")

    with open(input_path, 'rb') as f:
        encrypted_data = f.read()

    # Check for signature
    sig_len = len(signature)
    file_signature = encrypted_data[:sig_len]

    if file_signature != signature:
        print(f"  ✗ Error: File doesn't have expected signature '{signature.decode()}'")
        print(f"  Found: {file_signature[:20]}")
        return False

    # Remove signature
    encrypted_content = encrypted_data[sig_len:]

    try:
        # Decrypt (returns data with padding and length field intact)
        decrypted_data = xxtea_decrypt(encrypted_content, key)

        # Read the length field (at position -4:, little-endian uint32)
        # Format: [content][null padding to 4-byte alignment][4-byte length field]
        if len(decrypted_data) < 4:
            print(f"  ✗ Error: Decrypted data too short")
            return False

        stored_length = struct.unpack('<I', decrypted_data[-4:])[0]

        # Extract only the actual Lua source code
        if stored_length > len(decrypted_data) - 4:
            print(f"  ✗ Error: Stored length {stored_length} exceeds available data {len(decrypted_data) - 4}")
            return False

        lua_source = decrypted_data[:stored_length]

        print(f"  ✓ Decrypted successfully")
        print(f"  ✓ Extracted {stored_length} bytes of Lua source code")

        # Verify it looks like Lua code
        is_lua_source = False
        try:
            decoded = lua_source[:200].decode('utf-8', errors='ignore')
            if any(pattern in decoded for pattern in ['--', 'local', 'function', 'require', 'return', 'end']):
                is_lua_source = True
                print(f"  ✓ Lua source code detected")
        except:
            pass

        if not is_lua_source:
            print(f"  ⚠ Warning: Content may not be valid Lua source")

        # Save decrypted file
        os.makedirs(os.path.dirname(output_path) or '.', exist_ok=True)
        with open(output_path, 'wb') as f:
            f.write(lua_source)
        print(f"  ✓ Saved to: {output_path}")

        return True

    except Exception as e:
        print(f"  ✗ Error during decryption: {e}")
        import traceback
        traceback.print_exc()
        return False


def encrypt_luac_file(input_path, output_path, key="RICKTOPCOCOS2DX", signature=b"RICKTOPINC"):
    """
    Encrypt a Lua source file to .luac format with XXTEA.
    Automatically adds the required length field.
    """
    print(f"Encrypting: {input_path}")

    with open(input_path, 'rb') as f:
        lua_source = f.read()

    # Store the original source length
    source_length = len(lua_source)
    print(f"  Source length: {source_length} bytes")

    # Format: [source][null padding to 4-byte alignment][4-byte length field]
    # The length field is ALWAYS at position [-4:] (last 4 bytes)
    # We need the total to be a multiple of 4 for XXTEA
    # Total = source + padding_before + 4 (length)
    # So: (source_length + padding_before + 4) % 4 == 0
    # padding_before = (4 - (source_length + 4) % 4) % 4

    padding_before_length = (4 - (source_length + 4) % 4) % 4

    # Create data to encrypt: [source][padding][4-byte length]
    data_to_encrypt = (
        lua_source +
        b'\x00' * padding_before_length +
        struct.pack('<I', source_length)
    )

    print(f"  Added {padding_before_length} byte(s) padding + 4 bytes length field")
    print(f"  Total data to encrypt: {len(data_to_encrypt)} bytes (should be multiple of 4: {len(data_to_encrypt) % 4 == 0})")

    try:
        # Encrypt
        encrypted_data = xxtea_encrypt(data_to_encrypt, key)

        # Prepend signature
        final_data = signature + encrypted_data

        # Save encrypted file
        os.makedirs(os.path.dirname(output_path) or '.', exist_ok=True)
        with open(output_path, 'wb') as f:
            f.write(final_data)

        print(f"  ✓ Encrypted successfully")
        print(f"  ✓ Saved to: {output_path}")
        print(f"  ✓ Final size: {len(final_data)} bytes")

        return True

    except Exception as e:
        print(f"  ✗ Error during encryption: {e}")
        import traceback
        traceback.print_exc()
        return False


def decrypt_directory(input_dir, output_dir, key="RICKTOPCOCOS2DX"):
    """Recursively decrypt all .luac files in a directory."""
    input_path = Path(input_dir)
    output_path = Path(output_dir)

    luac_files = list(input_path.rglob("*.luac"))
    print(f"Found {len(luac_files)} .luac files\n")

    success_count = 0
    for luac_file in luac_files:
        relative_path = luac_file.relative_to(input_path)
        output_file = output_path / relative_path.with_suffix('.lua')

        if decrypt_luac_file(str(luac_file), str(output_file), key):
            success_count += 1
        print()

    print(f"\nDecryption complete: {success_count}/{len(luac_files)} files successfully decrypted")


def encrypt_directory(input_dir, output_dir, key="RICKTOPCOCOS2DX"):
    """Recursively encrypt all .lua files in a directory."""
    input_path = Path(input_dir)
    output_path = Path(output_dir)

    lua_files = list(input_path.rglob("*.lua"))
    print(f"Found {len(lua_files)} .lua files\n")

    success_count = 0
    for lua_file in lua_files:
        relative_path = lua_file.relative_to(input_path)
        output_file = output_path / relative_path.with_suffix('.luac')

        if encrypt_luac_file(str(lua_file), str(output_file), key):
            success_count += 1
        print()

    print(f"\nEncryption complete: {success_count}/{len(lua_files)} files successfully encrypted")


def main():
    if len(sys.argv) < 2:
        print("XXTEA Lua Encryption/Decryption Tool")
        print("=" * 50)
        print("\nUsage:")
        print("  Decrypt single file:")
        print(f"    {sys.argv[0]} decrypt <input.luac> <output.lua> [key]")
        print("\n  Encrypt single file:")
        print(f"    {sys.argv[0]} encrypt <input.lua> <output.luac> [key]")
        print("\n  Decrypt directory:")
        print(f"    {sys.argv[0]} decrypt -d <input_dir> <output_dir> [key]")
        print("\n  Encrypt directory:")
        print(f"    {sys.argv[0]} encrypt -d <input_dir> <output_dir> [key]")
        print("\nExamples:")
        print(f"  {sys.argv[0]} decrypt init.luac init.lua")
        print(f"  {sys.argv[0]} encrypt init.lua init.luac")
        print(f"  {sys.argv[0]} decrypt -d apktool-dec/assets/src decrypted_lua")
        print(f"  {sys.argv[0]} encrypt -d decrypted_lua encrypted_lua")
        print("\nNote: This script properly handles the 4-byte length field")
        print("      required by Cocos2d-x for file integrity verification.")
        sys.exit(1)

    command = sys.argv[1].lower()

    if command == 'decrypt':
        if len(sys.argv) > 3 and sys.argv[2] == '-d':
            # Directory mode
            input_dir = sys.argv[3]
            output_dir = sys.argv[4] if len(sys.argv) > 4 else "decrypted_lua"
            key = sys.argv[5] if len(sys.argv) > 5 else "RICKTOPCOCOS2DX"
            decrypt_directory(input_dir, output_dir, key)
        else:
            # Single file mode
            input_file = sys.argv[2]
            output_file = sys.argv[3] if len(sys.argv) > 3 else input_file.replace('.luac', '.lua')
            key = sys.argv[4] if len(sys.argv) > 4 else "RICKTOPCOCOS2DX"
            decrypt_luac_file(input_file, output_file, key)

    elif command == 'encrypt':
        if len(sys.argv) > 3 and sys.argv[2] == '-d':
            # Directory mode
            input_dir = sys.argv[3]
            output_dir = sys.argv[4] if len(sys.argv) > 4 else "encrypted_lua"
            key = sys.argv[5] if len(sys.argv) > 5 else "RICKTOPCOCOS2DX"
            encrypt_directory(input_dir, output_dir, key)
        else:
            # Single file mode
            input_file = sys.argv[2]
            output_file = sys.argv[3] if len(sys.argv) > 3 else input_file.replace('.lua', '.luac')
            key = sys.argv[4] if len(sys.argv) > 4 else "RICKTOPCOCOS2DX"
            encrypt_luac_file(input_file, output_file, key)

    else:
        print(f"Unknown command: {command}")
        print("Use 'decrypt' or 'encrypt'")
        sys.exit(1)


if __name__ == "__main__":
    main()
