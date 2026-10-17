#!/bin/bash

# Encrypt Lua files and build APK
# This script encrypts .lua files from lua-source/src and places them in the APK assets

# Exit immediately if a command exits with a non-zero status
set -e

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define variables
LUA_SOURCE_DIR="${SCRIPT_DIR}/lua-source/src"
CRYPTO_SCRIPT="${SCRIPT_DIR}/lua-source/luac_crypto.py"
APK_ASSETS_DIR="${SCRIPT_DIR}/assets/src"
BUILD_SCRIPT="${SCRIPT_DIR}/build_and_run.sh"

# Check if lua-source/src directory exists
if [ ! -d "${LUA_SOURCE_DIR}" ]; then
    echo "Error: lua-source/src directory not found at ${LUA_SOURCE_DIR}"
    echo "Please create the directory and place your .lua files there"
    exit 1
fi

# Check if luac_crypto.py exists
if [ ! -f "${CRYPTO_SCRIPT}" ]; then
    echo "Error: luac_crypto.py not found at ${CRYPTO_SCRIPT}"
    exit 1
fi

# Check if APK assets directory exists
if [ ! -d "${APK_ASSETS_DIR}" ]; then
    echo "Creating APK assets directory: ${APK_ASSETS_DIR}"
    mkdir -p "${APK_ASSETS_DIR}"
fi

echo "=========================================="
echo "  Encrypting Lua Files"
echo "=========================================="
echo "Source:      ${LUA_SOURCE_DIR}"
echo "Destination: ${APK_ASSETS_DIR}"
echo "Crypto Tool: ${CRYPTO_SCRIPT}"
echo ""

# Count .lua files
LUA_FILE_COUNT=$(find "${LUA_SOURCE_DIR}" -name "*.lua" 2>/dev/null | wc -l)
echo "Found ${LUA_FILE_COUNT} .lua files to encrypt"
echo ""

# Encrypt all .lua files from lua-source/src to assets/src
echo "--- Encrypting Lua files ---"
python3 "${CRYPTO_SCRIPT}" encrypt -d "${LUA_SOURCE_DIR}" "${APK_ASSETS_DIR}"

if [ $? -eq 0 ]; then
    echo "✓ Encryption completed successfully"
else
    echo "✗ Encryption failed"
    exit 1
fi

echo ""
echo "=========================================="
echo "  Building and Installing APK"
echo "=========================================="
echo ""

# Run the build script
"${BUILD_SCRIPT}"

echo ""
echo "=========================================="
echo "  Process Complete"
echo "=========================================="
echo "Lua files have been encrypted and APK has been built"
echo "APK location: ${SCRIPT_DIR}/dist/UniversalLauncherV4.apk"
