# Universal Launcher V4.1

<p align="center">
<img src="https://gitlab.com/ailife8881/clock-skin-coco-hack/-/raw/main/image/banner.png" alt="Universal Launcher V4.1 Banner" />
</p>

Modified from [Universal Launcher V3.7 by @Eric_Crochemore](https://discourse.fullandroidwatch.org/t/universal-launcher-ver-3-x-and-above)

Universal Launcher allows you to use custom watch faces on your full Android smartwatch. Version 4.1 brings massive improvements with 400+ commits including advanced rendering, modern UI redesign, enhanced device compatibility, and powerful new features!

## 🚀 What's New in V4.1

### 🤖 Compatibility
- **Support Round Display** - optimized UI for both screen shape
- **Android 16 Support** - Target API 36 (latest)
- **Android 8.1 Support** - support all UNISOC smartwatches
- **Android 7 Compatible** - Backward support for older devices (API 24+)

### 🎨 Advanced Watchface Render Engine
- **Full ClockSkin .zip support** - add support for arraytype : 17, 18, 75, 97, 98
- **Support All WatchMaker Layers** - Chart, Progress, Video, Map, Gallery 2D, Calendar, 3D
- **Improve shader support** - all shader working with dynamic variable as parameters
- **Text animation && Effects** - support all text animation and text effects

### 🎯 Redesigned User Interface
- **Global Quick Settings** - System-wide pulldown QS accessible from anywhere
- **Better App List** - added waterfall applist, 2/3/4 wide grid app list, fully customizeable app ordering
- **Custom App Icons** - Support for ADW icon packs and custom icons from image file
- **Always-On Display (AOD)** - Redesigned AOD with dim screen and keyguard
- **Fullscreen Modes** - Rework scale dialog with better UI, 5 full screen mode with custom sizing ensure your watchface always fit on all screen shape and size

### 💪 Enhanced Features
- **Ultra Battery Saver Mode** - Secret mode only the watch face is accessible, tap morse code or password to exit
- **Additional datapoints** - Useful unofficial datapoints like blood oxygen is supported
- **Advanced Weather System** - Rewritten with 5 day forecast, 4 providers, all datapoint supported, better auto-location
- **Watch Face Selector 2.0** - Complete redesign with folder structure, rename/delete/move/search watch face, random selection support
- **Tap Action System** - Decide what app to open when you tap the watch face, no need to edit watch face
- **Clock Skin Transfer** - QR code to easilly access the page to manage all watch face, one click install watch face from storage

### ⚠️ Breaking changes
- **Clock Skin Folder** - To comply with android scoped storage, ClockSkin folder is moved to ASD(getExternalFilesDir), use the bulk import feature in settings to migrate
- **Full Screen mode** - The old bug of watch face do not appear in center of screen is fixed, some legacy watch face is made to compensate for the bug, you can use the compatibility fullscreen mode
- **Weather temperature** - New system provide up to %.2f precision, can cause graphical bug, if you do not need it you can disable in settings

### ❗ Known limitations
- Text animations transitions (with from and to frame) is not supported
- In text animation some parameters like rotation is not working
- The app only support 32 bit(armv7a) because of lack of native library, newer android version that do not support emulation can have INSTALL_FAILED_NO_MATCHING_ABIS error

## 📥 Download

Download from:

[GitLab](https://gitlab.com/-/project/67333032/uploads/082ab67a2119911e700a8a2ef83a9421/UniversalLauncherV4.1.0-release.apk)

[APKPure](https://apkpure.com/p/com.ailife.ClockSkinCoco)

[UpToDown](https://universal-launcher.en.uptodown.com/android)

[Telegram](https://t.me/UL_V4/266)

## 📸 Screenshots

<p align="center">
<img src="https://gitlab.com/ailife8881/clock-skin-coco-hack/-/raw/main/image/Screenshot_20250311-102526.jpg" width="190" />
<img src="https://gitlab.com/ailife8881/clock-skin-coco-hack/-/raw/main/image/qs_wifi.jpg" width="190" />
<img src="https://gitlab.com/ailife8881/clock-skin-coco-hack/-/raw/main/image/Screenshot_20250311-102633.jpg" width="190" />
<img src="https://gitlab.com/ailife8881/clock-skin-coco-hack/-/raw/main/image/Screenshot_20250311-102646.jpg" width="190" />
<img src="https://gitlab.com/ailife8881/clock-skin-coco-hack/-/raw/main/image/Screenshot_20250311-102656.jpg" width="190" />
<img src="https://gitlab.com/ailife8881/clock-skin-coco-hack/-/raw/main/image/Screenshot_20250311-102738.jpg" width="190" />
<img src="https://gitlab.com/ailife8881/clock-skin-coco-hack/-/raw/main/image/Screenshot_20250311-102750.jpg" width="190" />
</p>

## 🎥 Video

https://youtu.be/t1FKP-cHhMc

## 🔗 Partner Project

**[Better Health Tracker](https://gitlab.com/ailife8881/better-health-tracker)** - Health data provider

**[WFTools](https://gitlab.com/ailife8881/hsc-watchface-downloader)** - Universal tool to work with watch faces

## ✨ Key Features

### Watch Face System
- **Custom Watch Faces** - Full Cocos2D-x engine with Lua scripting
- **Watch Face Store** - Download hundreds of free watch faces
- **HTTP Transfer Server** - Transfer watch faces from PC with QR code
- **Install via File Manager** - Simply open .zip/.watch files to install
- **Bulk Import** - Import entire folders of watch faces at once
- **Random Watch Face** - Automatically rotate through your collection

### Advanced Rendering
- **Text Animations** - 50+ shader-based animations (fade, glow, typewriter, etc.)
- **3D Graphics** - 3D text and objects with lighting effects
- **Chart Layer** - Data visualization with graphs and charts
- **Progress Rings** - Customizable ring-style progress indicators
- **Video Playback** - Play videos within watch faces
- **Map Layer** - Geographic map rendering
- **Calendar View** - Visual calendar integration

### Health & Fitness
- **Better Health Integration** - Automatic detection and integration
- **Blood Oxygen (SpO2)** - Full blood oxygen monitoring support
- **Heart Rate** - Real-time heart rate display
- **Step Counter** - Daily step tracking with goals
- **Activity Widgets** - Progress rings and activity charts
- **Optimized Sensors** - Only enabled when needed for battery savings

### Quick Settings
- **Global Pulldown** - Access QS from any screen
- **WiFi Control** - Toggle with frequency and RSSI display
- **Bluetooth Toggle** - Quick Bluetooth on/off
- **Brightness Slider** - Smooth brightness adjustment
- **Do Not Disturb** - DND mode toggle
- **Flashlight** - Quick flashlight access
- **Recent Apps** - Open recent apps menu
- **Power Menu** - Quick access to power options
- **Fully Customizable** - Custom colors and layout

### Weather System
- **Auto-Location** - Automatic location detection (enabled by default)
- **5-Day Forecast** - Extended weather predictions
- **Cloud Coverage** - Cloud percentage data
- **Rain Volume** - Precipitation information
- **Custom API Key** - Use your own weather API if needed
- **Multiple Data Points** - Temperature, humidity, wind, etc.

### Notifications
- **Optimized UI** - Clean notification display with app names
- **Notification Count** - Track unread notifications
- **AI Filter** - Remove useless system notifications
- **Clear All** - One-click clear all notifications
- **Image Support** - Display images in notifications
- **No Permission Required** - Works without notification access (Android 8.1+)

### App List
- **Waterfall Layout** - Modern 3-wide staggered design (default)
- **Custom Ordering** - Drag and drop to reorder apps
- **Custom Icons** - ADW icon pack support + custom icons from storage
- **Hide Apps** - Hide unwanted apps by category
- **Alphabetical Sort** - Traditional A-Z sorting option
- **Show Launcher Apps Only** - Filter non-launcher apps
- **Scroll Bar** - Quick navigation with index

### Customization
- **Tap Actions** - Fully customizable tap action system
- **Custom Icons** - Icon picker with material design UI
- **Color Picker** - HSV color picker for UI elements
- **Scale Control** - Adjust watch face scale with +/- buttons
- **Fullscreen Modes** - Multiple fullscreen options
- **Round Screen Support** - Optimized for circular displays
- **Custom FPS** - Set custom frame rates

### System Integration
- **Ultra Battery Saver** - Kiosk mode with password lock
- **ViewPager Lock** - Lock launcher pages with password/pattern
- **Set as Default Launcher** - Use as your main launcher
- **OTA Updates** - Over-the-air update support
- **Backup & Restore** - Save and restore settings
- **Alarm Integration** - Display and set alarms from watch faces
- **Calendar Access** - Read calendar events (with permission)
- **Toast Notifications** - In-watch-face notifications

### Performance & Battery
- **Custom FPS** - Optimize frame rate for your device
- **Sensor Optimization** - Only enable accelerometer/compass when needed
- **Video Caching** - Improved video playback efficiency
- **Quick Settings Idle** - QS stops when not in use
- **AOD Efficiency** - 1-minute refresh rate in AOD mode

## 🛠️ Technical Details

### Architecture
- **Hybrid System** - Native Android (Java/Smali) + Cocos2D-x 3.17.2 (Lua)
- **Watch Face Engine** - Lua scripting with XXTEA encryption
- **Rendering** - OpenGL ES with shader support
- **Health API** - Better Health Tracker integration

### Compatibility
- **Android Version** - Android 7.0+ (API 24-36)
- **Architecture** - ARM (armeabi-v7a)
- **Screen Shapes** - Round and square displays
- **Resolution** - Optimized for all smartwatch resolutions

### Permissions
- Notification access (optional, for enhanced notification features)
- Location (for wifi SSID)
- Phone (for mobile operator)
- Nearby devices (for bluetooth)
- Calendar (optional, for calendar events)
- Sensors (better health tracker api)
- Accessibility (for recents app, power dialog, kiosk mode)
- DND (for change ringer modes)
- Write settings (for brightness)
- Draw over other apps (Global QS)

### Unofficial tags

| Tag        | Description                              | Example       |
|------------|------------------------------------------|---------------|
| {ncs}      | cellular signal strength                 | 0.25          |
| {nbc}      | bluetooth connected                      | true          |
| {ngc}      | GPS enabled                              | true          |
| {cnc}      | notification count                       | 5             |
| {ulver}    | launcher version                         | 4.1.0         |
| {sbo}      | blood oxygen                             | 98            |
| {aalh23z}  | next alarm hour                          | 7             |
| {aalmz}    | next alarm minute                        | 00            |
| {aalo}     | alarm count                              | 1            |

### Unofficial tap actions

  1. tap_launcher - Tap Launcher
  2. widget_weather - Weather Widget
  3. widget_health - Health Widget
  4. widget_calendar - Calendar Widget
  5. w_agenda - Agenda
  6. w_fit - Fit
  7. w_heart_rate - Heart Rate
  8. w_compass - Compass
  9. w_keep - Keep
  10. m_email - Email
  11. m_calendar - Calendar
  12. voice_search - Voice Search
  13. w_contacts - Contacts
  14. w_sports - Sports
  15. w_gallery - Gallery
  16. w_messaging - Messaging
  17. w_camera - Camera
  18. w_dialer - Dialer 
  19. w_music - Music 
  20. w_clock - Clock 
  21. w_calculator - Calculator 
  22. w_payment - Payment 
  23. w_map - Map
  24. w_browser - Browser
  25. w_flashlight - Flashlight
  26. w_socialmedia - Social Media

  wm_set_alarm('12:00') - set alarm at 12:00

## 🆘 Troubleshooting

**PLEASE READ THE [FAQ](https://gitlab.com/ailife8881/clock-skin-coco-hack/-/wikis/faq) FIRST**

If it doesn't resolve your problem:
- Start a [new issue](https://gitlab.com/ailife8881/clock-skin-coco-hack/-/issues/new)
- Join the [support group](https://t.me/UL_V4)

## 🤝 Contribution

Because of the lack of source code and minification of the original app, some files are obfuscated. However, **all code added in this mod is NOT obfuscated**.
**For Lua developers:**
- Check the `lua-source` folder for detailed information about the Lua code structure
- See `lua-source/LUA_README.md` for documentation
- Use `luac_crypto.py` for encryption/decryption

**For Android developers:**
- New features are in `com.ailife.*` packages (not obfuscated)
- Original code is in `com.ricktop.*` packages (obfuscated)

### Build Instructions

```bash
# Clone repository
git clone https://gitlab.com/ailife8881/clock-skin-coco-hack.git

# Navigate to project directory
cd clock-skin-coco-hack

# Full build with Lua encryption
./encrypt_lua_and_build.sh

# Quick build (skip Lua encryption)
./build_and_run.sh

# Manual Lua encryption
python3 lua-source/luac_crypto.py encrypt -d lua-source/src/ assets/src/
```

See `CLAUDE.md` and `GEMINI.md` for detailed build documentation.

## 📊 Statistics (V4.0 → V4.1)

- **400+ commits** of improvements
- **15+ major feature groups**
- **100+ bug fixes** and stability improvements
- **50+ text animations** added
- **10+ new layer types** implemented
- **3 Android versions** supported (7, 14, 16)

## 📝 Changelog

See [changelog-v4.1.0.md](../changelog-v4.1.0.md) for detailed release notes organized by feature groups.

## 📜 License

Based on Universal Launcher V3.7 by @Eric_Crochemore

not allowed for commercial use && not allowed on google play store (V3.7 license)

no further restrictions set by me

Modified and maintained by AILIFE

## 🙏 Credits

- **Original Developer**: @Eric_Crochemore (Universal Launcher V3.7)
- **V4 Development**: AILIFE
- **Cocos2D-x**: Cocos2D-x team
- **Community**: All contributors and testers

## 💬 Community

- **Telegram Group**: [UL_V4](https://t.me/UL_V4)
- **GitLab Issues**: [Report bugs](https://gitlab.com/ailife8881/clock-skin-coco-hack/-/issues)
- **Wiki**: [Documentation](https://gitlab.com/ailife8881/clock-skin-coco-hack/-/wikis/home)

## ⭐ Support the Project

If you find Universal Launcher useful:
- ⭐ Star the project on GitLab
- 📢 Share with other smartwatch users
- 🐛 Report bugs and suggest features
- 🤝 Contribute code or watch faces
- 📝 Improve documentation

---

**Made with ❤️ for the smartwatch community**
