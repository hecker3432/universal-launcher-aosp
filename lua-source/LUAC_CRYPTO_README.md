# Lua Encryption/Decryption for Cocos2d-x

## Problem Identified

The Lua files in this APK use XXTEA encryption with a **critical integrity check**: a 2-byte length field stored at a fixed position within the encrypted data.

### File Format After XXTEA Decryption

```
┌─────────────────────────────────────────────────────┐
│ Lua Source Code (N bytes)                           │
├─────────────────────────────────────────────────────┤
│ Null Padding (0-3 bytes, for alignment)             │
├─────────────────────────────────────────────────────┤
│ Length Field (2 bytes, little-endian uint16 = N)    │
├─────────────────────────────────────────────────────┤
│ Fixed Padding (2 bytes, always 0x00 0x00)           │
└─────────────────────────────────────────────────────┘

Total size is always a multiple of 4 (required by XXTEA)
Length field is ALWAYS at position [-4:-2] from end
```

### Why Files Wouldn't Run After Editing

When you edit a decrypted Lua file and re-encrypt it, **you must update the 2-byte length field** to match the new source code size. If the length field doesn't match, the Cocos2d-x engine will reject the file.

The previous decryption scripts removed all trailing bytes including this length field, making it impossible to correctly re-encrypt modified files.

## Solution: `luac_crypto.py`

A complete tool for encrypting and decrypting these files with proper length field handling.

### Features

- ✅ Correctly preserves/adds the 2-byte length field
- ✅ Handles null padding for XXTEA alignment
- ✅ Supports both single files and directory operations
- ✅ Produces byte-identical re-encrypted files
- ✅ Validates Lua source code after decryption
- ✅ Pure Python implementation (no external dependencies)

### Usage

#### Decrypt Single File
```bash
python3 luac_crypto.py decrypt input.luac output.lua
```

#### Encrypt Single File
```bash
python3 luac_crypto.py encrypt input.lua output.luac
```

#### Decrypt Directory
```bash
python3 luac_crypto.py decrypt -d apktool-dec/assets/src decrypted_lua
```

#### Encrypt Directory
```bash
python3 luac_crypto.py encrypt -d modified_lua encrypted_lua
```

### Example Workflow

1. **Decrypt all Lua files:**
   ```bash
   python3 luac_crypto.py decrypt -d apktool-dec/assets/src decrypted_lua
   ```

2. **Edit Lua files:**
   ```bash
   nano decrypted_lua/app/MyApp.lua
   # Make your changes...
   ```

3. **Re-encrypt modified files:**
   ```bash
   python3 luac_crypto.py encrypt -d decrypted_lua encrypted_lua
   ```

4. **Copy back to APK:**
   ```bash
   cp -r encrypted_lua/* apktool-dec/assets/src/
   ```

5. **Rebuild APK:**
   ```bash
   apktool b apktool-dec -o modified.apk
   jarsigner -verbose -keystore my-key.jks modified.apk my-alias
   zipalign -v 4 modified.apk modified-aligned.apk
   ```

## Technical Details

### Encryption Parameters

- **Algorithm:** XXTEA (Corrected Block TEA)
- **Key:** `RICKTOPCOCOS2DX` (16 bytes, UTF-8)
- **Signature:** `RICKTOPINC` (10 bytes, prepended to encrypted data)
- **Block Size:** 4 bytes (all data padded to multiple of 4)
- **Integrity Check:** 2-byte little-endian length field at position [-4:-2]

### XXTEA Details

- **Delta Constant:** `0x9E3779B9` (golden ratio)
- **Rounds:** `6 + 52/n` where n = number of 32-bit words
- **Key Expansion:** 128-bit key → 4x 32-bit words (little-endian)
- **No IV/Nonce:** Deterministic encryption (same input → same output)

### Length Field Calculation

The length field stores the **exact size of the Lua source code** before padding:

```python
# For a Lua source of N bytes:
source_length = len(lua_source)

# Padding before length (to align total to 4 bytes):
padding_before = (4 - (source_length + 4) % 4) % 4

# Structure:
# [N bytes source][padding_before][2 bytes: N as LE uint16][0x00, 0x00]

# The engine reads position [-4:-2] and expects it to equal N
```

### Verification Examples

**config.luac (797 bytes of Lua source):**
```
Encrypted file: 814 bytes total
  - Signature: 10 bytes
  - Encrypted data: 804 bytes
    ├─ Lua source: 797 bytes
    ├─ Padding: 3 bytes (0x00 0x00 0x00)
    ├─ Length: 2 bytes (0x1d 0x03 = 797)
    └─ Fixed padding: 2 bytes (0x00 0x00)
```

**init.luac (3207 bytes of Lua source):**
```
Encrypted file: 3222 bytes total
  - Signature: 10 bytes
  - Encrypted data: 3212 bytes
    ├─ Lua source: 3207 bytes
    ├─ Padding: 1 byte (0x00)
    ├─ Length: 2 bytes (0x87 0x0c = 3207)
    └─ Fixed padding: 2 bytes (0x00 0x00)
```

## Limitations

### Maximum File Size

The length field is a **16-bit unsigned integer** (`uint16`), limiting Lua source files to:
- **Maximum:** 65,535 bytes (64 KB - 1)

If you need larger files, you'll need to split them or modify the loader to use a larger length field.

### Security Note

XXTEA with a hardcoded key provides **obfuscation only**, not security:
- Key is visible in the native library as plaintext
- No authentication (MAC/HMAC)
- No protection against modification (beyond length check)
- Deterministic encryption (no randomness)

This is sufficient to prevent casual inspection but not determined reverse engineering.

## Testing

Run tests to verify the tool works correctly:

```bash
# Test decryption
python3 luac_crypto.py decrypt apktool-dec/assets/src/cocos/init.luac /tmp/test.lua

# Test encryption
python3 luac_crypto.py encrypt /tmp/test.lua /tmp/test.luac

# Test round-trip
python3 luac_crypto.py decrypt /tmp/test.luac /tmp/test2.lua
diff /tmp/test.lua /tmp/test2.lua  # Should be identical

# Verify against original
diff apktool-dec/assets/src/cocos/init.luac /tmp/test.luac  # Should be identical
```

All tests should pass with **byte-identical** results.

## Troubleshooting

### "Stored length exceeds available data"

The file may be corrupted or not encrypted with the expected format. Check:
- File has `RICKTOPINC` signature
- File size > 14 bytes (signature + minimum encrypted data)
- Decryption key is correct

### Modified file doesn't load in app

Ensure:
1. File was encrypted with `luac_crypto.py` (adds correct length field)
2. Lua syntax is valid (check with `luac -p file.lua`)
3. File was copied to correct location in APK
4. APK was properly rebuilt and signed

### APK won't install

After modifying files:
1. Rebuild: `apktool b apktool-dec -o modified.apk`
2. Sign: `jarsigner -verbose -keystore key.jks modified.apk alias`
3. Align: `zipalign -v 4 modified.apk aligned.apk`
4. Install: `adb install -r aligned.apk`

## References

- **XXTEA Algorithm:** https://en.wikipedia.org/wiki/XXTEA
- **Cocos2d-x:** https://www.cocos.com/en/cocos2dx
- **APKTool:** https://ibotpeaches.github.io/Apktool/
- **Original Analysis:** See `DECRYPTION_NOTES.md`
