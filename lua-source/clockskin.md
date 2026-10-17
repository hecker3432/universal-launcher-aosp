# ClockSkin.lua Documentation

This document provides a detailed explanation of the `ClockSkin.lua` file. This script is an alternative rendering engine for watch faces in the Universal Launcher V4 (ClockSkinCoco Mod), primarily designed for the traditional ClockSkin `.zip` format.

## Overview

`ClockSkin.lua` is a Lua script that, like `WatchSkin.lua`, runs within the Cocos2D-x framework. It is responsible for rendering watch faces that are packaged in the `.zip` format and use a `clock_skin.xml` file for defining their structure.

Its main responsibilities are:

1.  **Parsing `clock_skin.xml`:** Reading and interpreting the XML file that defines the watch face elements.
2.  **Rendering Elements:** Drawing images and image-based animations.
3.  **Handling Updates:** Updating the watch face in real-time.
4.  **Managing User Interaction:** Handling basic touch events to launch applications.

## Class Structure

The script defines a single class, `ClockSkin`, which inherits from `cc.load("mvc").ViewBase`, making it a View component in the MVC architecture.

## Key Functions

### 1. `initView(layer, ring)`

This is the main initialization function for the watch face.

-   **Gets Skin Name:** It retrieves the name of the watch face, which is expected to be a `.zip` file.
-   **Reads `clock_skin.xml`:** It reads the `clock_skin.xml` file from the root of the zip archive.
-   **Parses XML:** It calls `parseClockSkin()` to parse the XML and create the `drawable` table.
-   **Creates Sprites:** It iterates through the `drawable` table and creates Cocos2D-x sprites for each element.
-   **Handles `ring.zip`:** It has special logic to load a `ring.zip` file, which acts as an optional frame or overlay for the main watch face.

### 2. `update()` and `updateMilli()`

These functions are the core of the update loop.

-   `update()` is the main entry point for the update cycle, called on every frame.
-   `updateMilli()` contains the logic for updating the watch face elements:
    -   It gets the current time and sensor data (battery, steps, etc.).
    -   It iterates through the `drawable` table and updates the properties of each element.
    -   **Rotation:** It handles the rotation of elements based on the `rotate` attribute in the XML. This is used for the hands of the watch.
    -   **Array Types:** It processes the `arraytype` attribute to determine what data to display. This is used for showing the date, time, weather, battery level, etc.

### 3. `parseClockSkin(xmlTree)`

This function parses the `clock_skin.xml` file.

-   **Iterates Through `<drawable>` Elements:** It reads each `<drawable>` element in the XML.
-   **Creates `drawable` Objects:** For each `<drawable>`, it creates a corresponding object in the `drawable` table, storing its properties (e.g., `name`, `centerX`, `centerY`, `rotate`, `arraytype`).

### 4. `loadDrawableArray(xmlTree, v, animation)`

This function is used to load animations that are defined as a sequence of images in a separate XML file.

-   It creates a Cocos2D-x `Animation` object from a list of image files.

### 5. `drawText(v, text)` and `drawImage(v, index)`

These functions are responsible for rendering dynamic content.

-   `drawText()` displays text by creating a composite image from individual character sprites. The characters are typically named `0.png`, `1.png`, etc.
-   `drawImage()` displays a single image from a sequence of images based on an index. This is used for things like displaying the day of the week (e.g., from `weekday_0.png`, `weekday_1.png`, etc.).

### 6. `touch(location)`

This function handles touch events.

-   It checks for elements with `arraytype == '100'`, which are defined as touchable areas.
-   When a touchable area is pressed, it uses a `luaj` call to launch an Android application, specified by the `pkg` and `cls` attributes in the XML.

### 7. `interpolate(fraction, timeDivider, mode, mulrotate)`

This function provides different easing functions for animations, allowing for different movement styles for the watch hands, such as smooth, ticking ("quartz"), or elastic.

## `clock_skin.xml` Format

`ClockSkin.lua` is designed to work with the traditional ClockSkin XML format. Here are some of the key attributes used in the `clock_skin.xml` file:

-   `<drawable>`: The main element for any visual component.
    -   `name`: The filename of the image to be displayed.
    -   `centerX`, `centerY`: The position of the element.
    -   `rotate`: The type of rotation to apply. For example, `1` for the hour hand, `2` for the minute hand, `3` for the second hand.
    -   `arraytype`: The type of data to display. For example, `1` for the date, `6` for the time, `10` for the weather, `14` for the battery level.
    -   `direction`: The direction of rotation.
    -   `mulrotate`: A multiplier for the rotation speed.

## Comparison with `WatchSkin.lua`

-   **Format:** `ClockSkin.lua` is for the older `.zip` and `clock_skin.xml` format, while `WatchSkin.lua` is for the more modern `watch.xml`/`watchface.json` format.
-   **Features:** `WatchSkin.lua` is more feature-rich, with support for shaders, 3D models, TTF fonts, and more advanced scripting.
-   **Text Rendering:** `ClockSkin.lua` uses image-based text, while `WatchSkin.lua` can use both bitmap fonts and TTF fonts.
-   **Flexibility:** `WatchSkin.lua` is more flexible due to its more powerful scripting capabilities and support for a wider range of element types.

## Conclusion

`ClockSkin.lua` provides compatibility with the large library of existing watch faces that use the traditional ClockSkin format. While `WatchSkin.lua` is the more modern and powerful engine, `ClockSkin.lua` serves as an important compatibility layer, allowing users to enjoy a wider range of watch face designs.