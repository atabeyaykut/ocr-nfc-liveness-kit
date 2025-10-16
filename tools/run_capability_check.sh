#!/bin/bash

# Runtime Capability Check Script
# Tests SDK capabilities through React Native bridge
# Output: runtime_capabilities.json
#
# Usage: ./run_capability_check.sh [--help]
#
# Requirements:
# - Node.js installed
# - React Native app built and installed on device
# - adb in PATH

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT_FILE="$SCRIPT_DIR/runtime_capabilities.json"

show_help() {
    echo "Runtime Capability Check Script"
    echo ""
    echo "Usage: $0 [--help]"
    echo ""
    echo "Tests SDK capabilities through React Native bridge:"
    echo "- Calls SDKCapabilities.getCapabilities()"
    echo "- Validates native module integration"
    echo "- Checks minimum requirements"
    echo ""
    echo "Output: runtime_capabilities.json"
    echo ""
    echo "Requirements:"
    echo "- Node.js installed"
    echo "- React Native app built and installed on device"
    echo "- adb in PATH"
}

if [[ "$1" == "--help" ]]; then
    show_help
    exit 0
fi

echo "🔍 Running runtime capability check..."

# Check if Node.js is available
if ! command -v node &> /dev/null; then
    echo "❌ Error: Node.js not found in PATH"
    exit 1
fi

# Check if adb is available
if ! command -v adb &> /dev/null; then
    echo "❌ Error: adb not found in PATH"
    exit 1
fi

# Check if device is connected
if ! adb devices | grep -q "device$"; then
    echo "❌ Error: No Android device connected"
    exit 1
fi

# Run the capability check
echo "📱 Running capability check through React Native bridge..."

node "$SCRIPT_DIR/checkCapabilities.js" > "$OUTPUT_FILE" 2>&1

if [[ $? -eq 0 ]]; then
    echo "✅ Runtime capability check completed"
    echo "📄 Results saved to: $OUTPUT_FILE"
    
    # Display summary
    if command -v jq &> /dev/null; then
        echo ""
        echo "📊 Runtime Capabilities Summary:"
        jq -r '
        "  Platform: Android " + .release + " (API " + (.sdkInt | tostring) + ")",
        "  NFC: " + (if .hasNfc then "✅ Available" else "❌ Not Available" end),
        "  NFC Enabled: " + (if .nfcEnabled then "✅ Yes" else "❌ No" end),
        "  Camera: " + (if .cameraAvailable then "✅ Available" else "❌ Not Available" end),
        "  Camera2: " + (if .camera2Supported then "✅ Supported" else "❌ Not Supported" end)
        ' "$OUTPUT_FILE" 2>/dev/null || echo "  (Install jq for formatted output)"
    fi
else
    echo "❌ Runtime capability check failed"
    echo "📄 Error details saved to: $OUTPUT_FILE"
    exit 1
fi
