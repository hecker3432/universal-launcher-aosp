# Decrypted Lua Source Files

This directory contains all decrypted Lua source files from the ClockSkinCoco APK, decrypted using XXTEA with the key `RICKTOPCOCOS2DX`.

## Directory Structure

### Root Files
- **config.lua** - Application configuration constants
- **main.lua** - Application entry point and initialization (423 lines)
- **utf8.lua** - UTF-8 string utilities

### /app
Application-specific code for the watch launcher:
- **MyApp.lua** - Main application class (extends AppBase)
  - Initializes Java-Lua bridge
  - Gets SD card path from Android
  - Loads localized strings (days/months)
- **views/**
  - **WatchSkin.lua** - Watch face rendering system
  - **DefaultClock.lua** - Default clock face implementation

### /cocos
Cocos2d-x framework Lua bindings and utilities:

- **init.lua** - Framework initialization
- **cocos2d/** - Core Cocos2d API bindings
  - `Cocos2d.lua` - Main API
  - `Cocos2dConstants.lua` - Constants
  - `functions.lua` - Utility functions
- **cocosdenshion/** - Audio engine
  - `AudioEngine.lua`
- **network/** - Network utilities
  - HTTP requests
  - WebSocket support
- **extension/** - Framework extensions
  - UI components
  - Particle systems
- **framework/** - High-level framework utilities
  - `audio.lua` - Audio helper
  - `display.lua` - Display utilities
  - `device.lua` - Device info
  - `transition.lua` - Animation helpers
  - **components/** - Component system
  - **extends/** - Framework extensions
- **ui/** - UI widgets
  - Layout system
  - Widget bindings
- **spine/** - Spine animation support
- **cocosbuilder/** - CocosBuilder integration
- **cocostudio/** - CocoStudio integration
- **physics3d/** - 3D physics engine
- **3d/** - 3D rendering
- **controller/** - Game controller support

### /packages
Third-party packages and libraries:

- **mvc/** - Model-View-Controller framework
  - `init.lua` - Package initialization
  - `AppBase.lua` - Base application class
  - `ViewBase.lua` - Base view class

## Key Entry Points

1. **main.lua** - Start here to understand app flow
   - Sets up file paths
   - Initializes global variables
   - Loads configuration
   - Creates app instance

2. **app/MyApp.lua** - Main application logic
   - Android integration via Java bridge
   - Storage path management
   - Localization setup

3. **app/views/WatchSkin.lua** - Watch face system
   - Custom watch face rendering
   - Health data display
   - Dynamic clock rendering

## Global Variables (from main.lua)

The application uses these global variables:
- `myApp` - Application instance
- `batteryLevelInfo` - Battery percentage (0-100)
- `batteryCharging` - Charging state ("true"/"false")
- `displayscale` - Display scaling factor
- `fullscreen` - Fullscreen mode flag
- `skin` - Current watch skin name
- `heart` - Heart rate BPM
- `skinsteps` - Step count from watch
- `calorie` - Calories burned
- `distance` - Distance traveled
- `targetSteps` - Daily step goal (default: 10000)

## Java Bridge Integration

The app calls Java methods from Lua using `luaj.callStaticMethod()`:

**Class**: `com.ricktop.ClockSkinCoco.CocosClockFragment`

**Methods**:
- `getPath()` - Returns SD card path
- `getDays()` - Returns localized day names
- `getMonths()` - Returns localized month names

## Framework Version

**Cocos2d-x**: 3.17.2 (confirmed from native library)

## Notes

- All files are UTF-8 encoded Lua source code
- Files use Lua 5.1 syntax (compatible with LuaJIT)
- The MVC framework provides structure for views and controllers
- Watch faces are likely loaded dynamically from `/mnt/sdcard/` directory
- Health metrics are updated via Java-Lua bridge from Android APIs

## Related Files

- `../decrypt_luac.py` - Decryption script used to generate these files
- `../DECRYPTION_NOTES.md` - Technical details on the decryption process
- `../CLAUDE.md` - Repository documentation
