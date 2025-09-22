# Device Installation Commands

## Quick Installation Guide

### 1. Connect Device
```bash
# Enable Developer Options and USB Debugging on your Android device
# Connect via USB cable

# Verify device connection
adb devices
# Expected output: List of attached devices
```

### 2. Install Fixed APK
```bash
# Navigate to project directory
cd /Users/deneme/Desktop/Projects/ocr

# Install the corrected universal APK
adb install android/app/build/outputs/apk/release/app-universal-release.apk

# Alternative: Install with replacement (if previous version exists)
adb install -r android/app/build/outputs/apk/release/app-universal-release.apk
```

### 3. Launch and Test
```bash
# Launch the app
adb shell am start -n com.ocrmobilesdk/.MainActivity

# Monitor logs during testing
adb logcat | grep -i ocr
```

### 4. Verification Commands
```bash
# Check if app is installed
adb shell pm list packages | grep ocrmobilesdk

# Get app info
adb shell dumpsys package com.ocrmobilesdk

# Check app permissions
adb shell pm dump com.ocrmobilesdk | grep permission
```

## Troubleshooting

### If Installation Fails
```bash
# Uninstall previous version first
adb uninstall com.ocrmobilesdk

# Clear ADB cache
adb kill-server
adb start-server

# Retry installation
adb install android/app/build/outputs/apk/release/app-universal-release.apk
```

### Architecture-Specific APKs (if needed)
```bash
# For ARM64 devices
adb install android/app/build/outputs/apk/release/app-arm64-v8a-release.apk

# For ARM32 devices  
adb install android/app/build/outputs/apk/release/app-armeabi-v7a-release.apk
```

## Expected Results
- ✅ Installation should complete without "invalid package" error
- ✅ App should appear in device app drawer
- ✅ App should launch successfully
- ✅ All permissions should be requestable
