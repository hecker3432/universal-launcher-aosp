#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define variables
OUTPUT_APK="${SCRIPT_DIR}/dist/UniversalLauncherV4.apk"
KEYSTORE="${SCRIPT_DIR}/debug.keystore"
KEY_ALIAS="androiddebugkey"
KEY_PASS="android"
APKSIGNER="/usr/bin/apksigner"
PACKAGE_NAME="com.ailife.ClockSkinCoco"
MAIN_ACTIVITY="com.ricktop.ClockSkinCoco.MainActivity"

echo "--- Recompiling APK ---"
apktool b "${SCRIPT_DIR}"

echo "--- Signing APK ---"
"${APKSIGNER}" sign --ks "${KEYSTORE}" --ks-key-alias "${KEY_ALIAS}" --ks-pass pass:"${KEY_PASS}" "${OUTPUT_APK}"

echo "--- Installing APK ---"
adb install -r "${OUTPUT_APK}"

echo "--- Running App ---"
adb shell am start -n "${PACKAGE_NAME}/${MAIN_ACTIVITY}"

echo "--- Process Complete ---"
