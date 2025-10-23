#!/bin/bash

# iOS Module Testing Script
# Tests all native iOS modules for OCR Mobile SDK

set -e

echo "======================================"
echo "iOS Native Modules Test Suite"
echo "======================================"
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Test results
TESTS_PASSED=0
TESTS_FAILED=0

# Function to print test result
print_result() {
    if [ $1 -eq 0 ]; then
        echo -e "${GREEN}✓ PASSED${NC}: $2"
        ((TESTS_PASSED++))
    else
        echo -e "${RED}✗ FAILED${NC}: $2"
        ((TESTS_FAILED++))
    fi
}

echo "📱 Step 1: Environment Check"
echo "------------------------------"

# Check Xcode
if command -v xcodebuild &> /dev/null; then
    XCODE_VERSION=$(xcodebuild -version | head -n 1)
    echo "✓ Xcode: $XCODE_VERSION"
else
    echo "✗ Xcode not found"
    exit 1
fi

# Check CocoaPods
if command -v pod &> /dev/null; then
    POD_VERSION=$(pod --version)
    echo "✓ CocoaPods: $POD_VERSION"
else
    echo "✗ CocoaPods not found. Install with: sudo gem install cocoapods"
    exit 1
fi

# Check Swift
if command -v swift &> /dev/null; then
    SWIFT_VERSION=$(swift --version | head -n 1)
    echo "✓ Swift: $SWIFT_VERSION"
else
    echo "✗ Swift not found"
    exit 1
fi

echo ""
echo "📦 Step 2: Install Dependencies"
echo "------------------------------"

cd "$(dirname "$0")"

echo "Installing CocoaPods dependencies..."
pod install || { echo "✗ Pod install failed"; exit 1; }
print_result $? "CocoaPods dependencies installed"

echo ""
echo "🔍 Step 3: File Structure Check"
echo "------------------------------"

# Check Swift modules
SWIFT_MODULES=(
    "OCR/Modules/OCRModule.swift"
    "OCR/Modules/LivenessDetectionModule.swift"
    "OCR/Modules/CameraModule.swift"
    "OCR/Modules/NFCReaderModule.swift"
    "OCR/Security/SecureStorage.swift"
    "OCR/Utils/FrameProcessor.swift"
)

for module in "${SWIFT_MODULES[@]}"; do
    if [ -f "$module" ]; then
        print_result 0 "Found $module"
    else
        print_result 1 "Missing $module"
    fi
done

# Check Objective-C bridges
OBJC_BRIDGES=(
    "OCR/Modules/OCRModule.m"
    "OCR/Modules/LivenessDetectionModule.m"
    "OCR/Modules/CameraModule.m"
    "OCR/Modules/NFCReaderModule.m"
)

for bridge in "${OBJC_BRIDGES[@]}"; do
    if [ -f "$bridge" ]; then
        print_result 0 "Found $bridge"
    else
        print_result 1 "Missing $bridge"
    fi
done

echo ""
echo "🏗️  Step 4: Build Project"
echo "------------------------------"

# Clean build
echo "Cleaning build folder..."
xcodebuild clean \
    -workspace OCRMobileSDK.xcworkspace \
    -scheme OCRMobileSDK \
    -configuration Debug \
    > /dev/null 2>&1

# Build for simulator
echo "Building for iOS Simulator..."
xcodebuild build \
    -workspace OCRMobileSDK.xcworkspace \
    -scheme OCRMobileSDK \
    -configuration Debug \
    -sdk iphonesimulator \
    -destination 'platform=iOS Simulator,name=iPhone 14' \
    CODE_SIGNING_ALLOWED=NO \
    > build_log.txt 2>&1

BUILD_RESULT=$?

if [ $BUILD_RESULT -eq 0 ]; then
    print_result 0 "iOS project build succeeded"
else
    print_result 1 "iOS project build failed"
    echo "See build_log.txt for details"
    
    # Show critical errors
    echo ""
    echo "Critical build errors:"
    grep -i "error:" build_log.txt | head -10 || true
fi

echo ""
echo "📋 Step 5: Syntax & Import Check"
echo "------------------------------"

# Check Swift syntax for each module
for module in "${SWIFT_MODULES[@]}"; do
    if [ -f "$module" ]; then
        # Just check if file compiles (basic syntax check)
        swiftc -typecheck "$module" \
            -import-objc-header OCRMobileSDK/OCRMobileSDK-Bridging-Header.h \
            -sdk "$(xcrun --show-sdk-path --sdk iphonesimulator)" \
            > /dev/null 2>&1
        
        if [ $? -eq 0 ]; then
            print_result 0 "Syntax check: $module"
        else
            print_result 1 "Syntax check: $module"
        fi
    fi
done

echo ""
echo "🔐 Step 6: Info.plist Permissions Check"
echo "------------------------------"

INFO_PLIST="OCRMobileSDK/Info.plist"

# Check required permissions
REQUIRED_KEYS=(
    "NSCameraUsageDescription"
    "NFCReaderUsageDescription"
    "NSPhotoLibraryUsageDescription"
    "com.apple.developer.nfc.readersession.formats"
)

for key in "${REQUIRED_KEYS[@]}"; do
    if /usr/libexec/PlistBuddy -c "Print :$key" "$INFO_PLIST" > /dev/null 2>&1; then
        print_result 0 "Permission key: $key"
    else
        print_result 1 "Missing permission key: $key"
    fi
done

echo ""
echo "📊 Test Summary"
echo "======================================"
echo -e "Tests Passed: ${GREEN}$TESTS_PASSED${NC}"
echo -e "Tests Failed: ${RED}$TESTS_FAILED${NC}"
echo "======================================"

if [ $TESTS_FAILED -eq 0 ]; then
    echo -e "${GREEN}✓ All tests passed!${NC}"
    echo ""
    echo "Next steps:"
    echo "1. Open Xcode: open OCRMobileSDK.xcworkspace"
    echo "2. Configure signing & capabilities"
    echo "3. Add Swift files to target if needed"
    echo "4. Run on physical device for full testing"
    exit 0
else
    echo -e "${RED}✗ Some tests failed${NC}"
    echo "Please review the errors above"
    exit 1
fi
