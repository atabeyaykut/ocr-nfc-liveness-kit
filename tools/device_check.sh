#!/bin/bash

# Device Capability Check Script
# Checks Android device capabilities for OCR SDK production readiness
# Output: capabilities.json
#
# Usage: ./device_check.sh [--help]
#
# Requirements:
# - adb in PATH
# - Android device connected via USB
# - USB debugging enabled

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_FILE="$SCRIPT_DIR/capabilities.json"

show_help() {
    echo "Device Capability Check Script"
    echo ""
    echo "Usage: $0 [--help]"
    echo ""
    echo "Checks Android device capabilities for OCR SDK:"
    echo "- Android version and API level"
    echo "- NFC availability and status"
    echo "- Camera availability"
    echo "- Security features (SELinux, Hardware Keystore)"
    echo ""
    echo "Output: capabilities.json"
    echo ""
    echo "Requirements:"
    echo "- adb in PATH"
    echo "- Android device connected via USB"
    echo "- USB debugging enabled"
}

if [[ "$1" == "--help" ]]; then
    show_help
    exit 0
fi

echo "🔍 Checking device capabilities..."

# Check if adb is available
if ! command -v adb &> /dev/null; then
    echo "❌ Error: adb not found in PATH"
    echo "Please install Android SDK Platform Tools"
    exit 1
fi

# Check if device is connected
if ! adb devices | grep -q "device$"; then
    echo "❌ Error: No Android device connected"
    echo "Please connect device and enable USB debugging"
    exit 1
fi

echo "✅ Device connected, gathering capabilities..."

# Get device info
RELEASE=$(adb shell getprop ro.build.version.release 2>/dev/null | tr -d '\r\n')
SDK_INT=$(adb shell getprop ro.build.version.sdk 2>/dev/null | tr -d '\r\n')

echo "📱 Android $RELEASE (API $SDK_INT)"

# Check features
FEATURES=$(adb shell pm list features 2>/dev/null)
HAS_NFC=false
HAS_CAMERA=false
HAS_CAMERA2=false

if echo "$FEATURES" | grep -q "android.hardware.nfc"; then
    HAS_NFC=true
fi

if echo "$FEATURES" | grep -q "android.hardware.camera"; then
    HAS_CAMERA=true
fi

if echo "$FEATURES" | grep -q "android.hardware.camera2"; then
    HAS_CAMERA2=true
fi

# Check NFC status
NFC_ENABLED=false
NFC_STATUS=$(adb shell dumpsys nfc 2>/dev/null | head -20 || echo "NFC not available")
if echo "$NFC_STATUS" | grep -q "mState=ON\|NFC is enabled"; then
    NFC_ENABLED=true
fi

# Check SELinux
SELINUX_STATUS=$(adb shell getenforce 2>/dev/null | tr -d '\r\n')
SELINUX_ENFORCING=false
if [[ "$SELINUX_STATUS" == "Enforcing" ]]; then
    SELINUX_ENFORCING=true
fi

# Check Hardware Keystore
HW_KEYSTORE=$(adb shell getprop ro.hardware.keystore 2>/dev/null | tr -d '\r\n')
HAS_HW_KEYSTORE=false
if [[ -n "$HW_KEYSTORE" && "$HW_KEYSTORE" != "software" ]]; then
    HAS_HW_KEYSTORE=true
fi

# Generate JSON output
cat > "$OUTPUT_FILE" << EOF
{
  "platform": "android",
  "sdkInt": $SDK_INT,
  "release": "$RELEASE",
  "hasNfc": $HAS_NFC,
  "nfcEnabled": $NFC_ENABLED,
  "cameraAvailable": $HAS_CAMERA,
  "camera2Supported": $HAS_CAMERA2,
  "selinuxEnforcing": $SELINUX_ENFORCING,
  "hardwareKeystore": $HAS_HW_KEYSTORE,
  "timestamp": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")",
  "deviceModel": "$(adb shell getprop ro.product.model 2>/dev/null | tr -d '\r\n')",
  "manufacturer": "$(adb shell getprop ro.product.manufacturer 2>/dev/null | tr -d '\r\n')"
}
EOF

echo ""
echo "📊 Device Capabilities Summary:"
echo "  Platform: Android $RELEASE (API $SDK_INT)"
echo "  NFC: $([ "$HAS_NFC" = true ] && echo "✅ Available" || echo "❌ Not Available")"
echo "  NFC Enabled: $([ "$NFC_ENABLED" = true ] && echo "✅ Yes" || echo "❌ No")"
echo "  Camera: $([ "$HAS_CAMERA" = true ] && echo "✅ Available" || echo "❌ Not Available")"
echo "  Camera2: $([ "$HAS_CAMERA2" = true ] && echo "✅ Supported" || echo "❌ Not Supported")"
echo "  SELinux: $([ "$SELINUX_ENFORCING" = true ] && echo "✅ Enforcing" || echo "⚠️ Permissive")"
echo "  HW Keystore: $([ "$HAS_HW_KEYSTORE" = true ] && echo "✅ Available" || echo "❌ Software Only")"
echo ""
echo "📄 Results saved to: $OUTPUT_FILE"

# Validate minimum requirements
REQUIREMENTS_MET=true

if [[ $SDK_INT -lt 23 ]]; then
    echo "❌ FAIL: Minimum API 23 required, found API $SDK_INT"
    REQUIREMENTS_MET=false
fi

if [[ "$HAS_NFC" != true ]]; then
    echo "⚠️ WARN: NFC not available - NFC features will be disabled"
fi

if [[ "$HAS_CAMERA" != true ]]; then
    echo "❌ FAIL: Camera required for OCR functionality"
    REQUIREMENTS_MET=false
fi

if [[ "$REQUIREMENTS_MET" = true ]]; then
    echo "✅ Device meets minimum requirements for OCR SDK"
    exit 0
else
    echo "❌ Device does not meet minimum requirements"
    exit 1
fi
