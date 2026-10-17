# WatchSkin.lua Documentation

This document provides a detailed explanation of the `WatchSkin.lua` file, which is the core rendering and logic engine for watch faces in the Universal Launcher V4 (ClockSkinCoco Mod).

## Overview

`WatchSkin.lua` is a Lua script that runs within the Cocos2D-x framework. It is responsible for:

1.  **Parsing Watch Face Files:** Reading and interpreting `watch.xml` (or `watchface.json`) files that define the structure and appearance of a watch face.
2.  **Rendering Elements:** Drawing all the visual components of the watch face, such as images, text, shapes, and hands.
3.  **Handling Updates:** Updating the watch face in real-time to reflect changes in time, date, sensor data (like steps and heart rate), and battery level.
4.  **Executing Custom Scripts:** Running additional Lua code provided in a `scripts/script.txt` file for custom animations and interactions.
5.  **Managing User Interaction:** Handling touch events to trigger actions like launching apps or changing watch face styles.
6.  **Applying Shaders:** Using GLSL shaders to create advanced visual effects.

## Class Structure

The script defines a single class, `WatchSkin`, which inherits from `cc.load("mvc").ViewBase`. This indicates that it's a View component in an MVC (Model-View-Controller) architecture.

## Key Functions

### 1. `initView(layer)`

This is the main initialization function. It's called when a new watch face is loaded.

-   **Reads Watch Face Definition:** It parses the `watch.xml` or `watchface.json` file using an XML/JSON parser. It also supports protected `.pxml` files.
-   **Creates `drawable` Table:** The parsed data is used to populate a table named `drawable`. This table is an array of objects, where each object represents a visual element (a "layer") on the watch face.
-   **Loads Custom Script:** It loads and executes the `scripts/script.txt` file if it exists. This script can define custom functions and animations.
-   **Initializes Elements:** It iterates through the `drawable` table and creates the corresponding Cocos2D-x nodes (sprites, labels, etc.) for each element. It handles various types of elements:
    -   `image`, `image_gif`, `image_cond`: For static images, animated GIFs, and conditional images.
    -   `text`, `text_ring`, `text_curved`: For displaying text in different styles.
    -   `shape`, `progress`, `ring`, `markers`: For drawing geometric shapes and progress bars.
    -   `3d_model`, `3d_text`: For rendering 3D objects and text.
-   **Sets up Cameras:** It configures 2D and 3D cameras to manage the layering and perspective of different elements.

### 2. `update()` and `updateMilli()`

These functions form the core update loop of the watch face.

-   `update()` is called by the Cocos2D-x scheduler on every frame. It, in turn, calls `updateMilli()`.
-   `updateMilli()` is where the main logic for updating the watch face resides. It does the following:
    -   **Gets Current Time and Data:** It retrieves the current time, date, battery level, step count, heart rate, and other sensor data.
    -   **Calculates Watch-Specific Variables:** It calculates a large number of variables that are used in the watch face definition. These variables have names like `{drh}` (digital rotation hour), `{dss}` (digital smooth second), `{bl}` (battery level), etc.
    -   **Updates `drawable` Elements:** It iterates through the `drawable` table and updates the properties of each element (e.g., position, rotation, scale, opacity, color) based on the current values of the watch variables.
    -   **Handles Display Modes:** It switches between the "bright" and "dim" modes of the watch face.
    -   **Executes Scheduled Functions:** It runs any functions that have been scheduled to run at specific times or intervals.

### 3. `parseWatchSkin(xmlTree)`

This function is responsible for the detailed parsing of the watch face definition file.

-   **Iterates Through Layers:** It loops through each `<Layer>` element in the XML tree.
-   **Parses Attributes:** For each layer, it reads the attributes (e.g., `x`, `y`, `rotation`, `opacity`, `color`).
-   **Evaluates Dynamic Values:** A key feature of this function is its ability to evaluate Lua expressions within the attribute values. For example, if an attribute is `rotation="{drh}"`, the function will replace `{drh}` with the actual rotation value for the hour hand. This is what makes the watch face dynamic.
-   **Handles Different Element Types:** It creates the appropriate data structure in the `drawable` table based on the `type` attribute of the layer.

### 4. `touch(location)`

This function handles touch events on the watch face.

-   **Detects Touched Element:** It checks if the touch location is within the bounding box of any `drawable` element that has a `tap_action` attribute defined.
-   **Finds Closest Action:** If multiple elements are touched, it selects the one that is closest to the touch point.
-   **Executes Action:** It calls the `wm_action()` function to execute the action associated with the touched element.

### 5. `wm_action(action)`

This function executes the actions triggered by touch events.

-   **Parses Action String:** It takes an action string as input, which can define various actions.
-   **Supported Actions:**
    -   `sw_start_stop`: Starts or stops the stopwatch.
    -   `color_switch_next`/`color_switch_prev`: Cycles through different color schemes for the watch face.
    -   `w_app: ...`: Launches a specific Android app.

### 6. Shader Functions (`addShader`, `updateShader`)

These functions manage the use of GLSL shaders for visual effects.

-   `addShader()` creates and compiles a shader program.
-   `updateShader()` updates the uniform variables of the shader, allowing for dynamic effects.
-   The shaders are used for effects like gradients, glows, and rounded corners on shapes and text.

### 7. Text Rendering Functions

-   `createTTFLabel()` and `setLabelString()`: For creating and updating standard text labels.
-   `createTextRing()`: For arranging text in a circular pattern.
-   `createTextCurved()`: For rendering text along a curve.

## Watch Face Variables

The `WatchSkin.lua` script defines and uses a large number of variables that can be used in the `watch.xml` file to create dynamic watch faces. These variables are enclosed in curly braces, e.g., `{drh}`. Here are some of the most common ones:

-   **Time:** `{dh}`, `{dm}`, `{ds}` (digital hour, minute, second), `{drh}`, `{drm}`, `{drs}` (rotation for hour, minute, second hands).
-   **Date:** `{dd}`, `{mm}`, `{yy}` (day, month, year), `{ddw}` (day of the week).
-   **Battery:** `{bl}` (battery level), `{br}` (battery rotation).
-   **Steps:** `{ssc}` (step count).
-   **Heart Rate:** `{shr}` (heart rate).
-   **Weather:** `{wt}` (weather temperature), `{wc}` (weather condition).

## Custom Scripting (`scripts/script.txt`)

Watch face creators can include a file named `scripts/script.txt` in their watch face package. This file can contain arbitrary Lua code that will be executed by `WatchSkin.lua`. This allows for:

-   **Custom Animations:** Creating complex animations that are not possible with the standard XML tags.
-   **Advanced Logic:** Implementing custom logic and interactions.
-   **New Variables:** Defining new variables that can be used in the watch face.

The script uses functions like `wm_schedule` to create time-based animations and tweens.

## Conclusion

`WatchSkin.lua` is a powerful and flexible engine that provides the foundation for creating a wide variety of custom watch faces. By understanding how it works, developers can create more advanced and interactive watch faces for the Universal Launcher.
