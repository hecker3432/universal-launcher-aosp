# XXTEA Decryption of Cocos2d-x Lua Files

## Summary

Successfully reverse engineered and decrypted all XXTEA-encrypted Lua source files from the ClockSkinCoco APK. The files were encrypted using XXTEA with a custom signature header.

## Findings

### Encryption Details
- **Algorithm**: XXTEA (Corrected Block TEA)
- **Key**: `RICKTOPCOCOS2DX` (16 bytes)
- **Signature**: `RICKTOPINC` (10 bytes header prepended to encrypted content)
- **File Format**: Despite `.luac` extension, files contain **Lua source code**, not Lua bytecode

### Key Discovery Process

1. **Examined native library** (`libcocos2dlua.so`):
   - File: `apktool-dec/lib/armeabi-v7a/libcocos2dlua.so`
   - Architecture: ARM 32-bit (armeabi-v7a)
   - Size: 26 MB
   - Version: Cocos2d-x 3.17.2

2. **Analyzed encrypted file headers**:
   ```
   00000000  52 49 43 4b 54 4f 50 49  4e 43 c9 a7 ba 85 bf 1a  |RICKTOPINC......|
   ```
   - Found custom signature "RICKTOPINC" at file start

3. **Extracted strings from native library**:
   ```bash
   strings libcocos2dlua.so | grep -i ricktop
   ```
   - Found two key strings:
     - `RICKTOPINC` - File signature
     - `RICKTOPCOCOS2DX` - XXTEA decryption key

### Decryption Script

Created `decrypt_luac.py` with the following features:
- Pure Python XXTEA implementation (no external dependencies)
- Automatic signature detection and removal
- Support for both single file and batch directory decryption
- Detects both Lua bytecode and Lua source code
- Progress reporting with success/failure indicators

### Decryption Results

- **Total files**: 72 `.luac` files
- **Successfully decrypted**: 72 files (100%)
- **Output directory**: `decrypted_lua/`

### File Structure

```
decrypted_lua/
├── config.lua              # Configuration
├── main.lua                # Application entry point
├── utf8.lua                # UTF-8 utilities
├── app/
│   ├── MyApp.lua          # Main application class
│   └── views/
│       ├── WatchSkin.lua  # Watch face rendering
│       └── DefaultClock.lua
├── cocos/                  # Cocos2d-x framework
│   ├── init.lua
│   ├── cocosdenshion/     # Audio engine
│   ├── network/           # Network utilities
│   ├── extension/         # Framework extensions
│   ├── controller/        # Game controller support
│   ├── framework/         # Framework utilities
│   └── ...
└── packages/
    └── mvc/               # MVC framework
        ├── init.lua
        ├── AppBase.lua
        └── ViewBase.lua
```

## Usage

### Decrypt Single File
```bash
python3 decrypt_luac.py input.luac output.lua
```

### Decrypt Entire Directory
```bash
python3 decrypt_luac.py -d apktool-dec/assets/src decrypted_lua
```

### Custom Key (if different)
```bash
python3 decrypt_luac.py input.luac output.lua CUSTOMKEY
```

## Technical Details

### XXTEA Algorithm
XXTEA (Corrected Block TEA) is a block cipher designed to correct weaknesses in the original XTEA cipher. It operates on variable-length blocks and uses a 128-bit key.

**Implementation details**:
- Delta constant: `0x9E3779B9` (golden ratio)
- Rounds: `6 + 52/n` where n is number of 32-bit words
- Key size: 16 bytes (128 bits)
- Block size: Variable (minimum 8 bytes)

### File Format
```
[RICKTOPINC][Encrypted Lua Source Code]
     |                    |
  10 bytes          Variable length
  (signature)       (XXTEA encrypted)
```

After decryption:
```
[Lua Source Code in UTF-8]
```

## Key Application Insights

From the decrypted Lua files, we can see:

1. **Main Application** (`main.lua`):
   - Sets up file paths and search directories
   - Initializes global variables for watch face functionality
   - Battery level tracking
   - Health metrics (steps, heart rate, calories, distance)

2. **Application Class** (`MyApp.lua`):
   - Calls Java methods via LuaJavaBridge
   - Accesses Android SD card path: `/mnt/sdcard`
   - Interacts with `com.ricktop.ClockSkinCoco.CocosClockFragment`
   - Gets localized day/month names from Java side

3. **Watch Face System**:
   - Custom watch face rendering in Lua
   - MVC architecture for UI components
   - Support for loading external watch face files (`.watch` format)

## Build Information

From the native library strings:
- **Framework**: Cocos2d-x 3.17.2
- **Build Path**: `D:/Android/WCS/frameworks/cocos2d-x/`
- **Platform**: Android ARM (armeabi-v7a)
- **Build Type**: Release (stripped symbols)

## Security Notes

The XXTEA encryption used here is **not cryptographically secure** by modern standards:
1. The key is embedded in the native library as plaintext
2. The signature header makes encrypted files easily identifiable
3. XXTEA is considered weak against certain cryptanalysis attacks
4. No additional obfuscation or key derivation

This encryption primarily serves to:
- Obfuscate source code from casual inspection
- Prevent simple text searches in the APK
- Discourage modification of game logic

It does **not** protect against determined reverse engineering (as demonstrated here).

## References

- XXTEA Algorithm: https://en.wikipedia.org/wiki/XXTEA
- Cocos2d-x: https://www.cocos.com/en/cocos2dx
- Original APK: `ClockSkinCoco-V4-release.apk`
