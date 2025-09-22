# Device Testing Commands for OCR Mobile SDK

## Prerequisites
- Android device or emulator connected via USB debugging
- ADB installed and accessible in PATH

## Quick Start Commands

### 1. Device Connection & Verification
```bash
# Check connected devices
adb devices

# Verify device is ready
adb shell getprop ro.build.version.release
```

### 2. APK Installation
```bash
# Install the universal APK
adb install -r android/app/build/outputs/apk/release/app-universal-release.apk

# Verify installation
adb shell pm list packages | grep ocrmobilesdk
```

### 3. App Launch & Testing
```bash
# Launch main activity
adb shell am start -n com.ocrmobilesdk/.MainActivity

# Alternative launch via monkey
adb shell monkey -p com.ocrmobilesdk -c android.intent.category.LAUNCHER 1
```

### 4. Log Monitoring
```bash
# Real-time app logs
adb logcat -v time | grep -E "(OCRMobileSDK|ReactNativeJS|FATAL|ERROR)"

# Check for Metro dependencies (should be empty)
adb logcat -d | grep -E "(localhost:8081|Metro|DevServer)"

# Full log capture
adb logcat -d > device_test_logs.txt
```

### 5. Performance Monitoring
```bash
# Memory usage
adb shell dumpsys meminfo com.ocrmobilesdk

# CPU usage
adb shell top -n 1 | grep ocrmobilesdk

# Battery stats
adb shell dumpsys batterystats com.ocrmobilesdk
```

### 6. Screenshot & Recording
```bash
# Take screenshot
adb exec-out screencap -p > screenshot.png

# Record screen (30 seconds)
adb shell screenrecord --time-limit 30 /sdcard/test_recording.mp4
adb pull /sdcard/test_recording.mp4
```

### 7. Smoke Testing
```bash
# UI fuzz testing
adb shell monkey -p com.ocrmobilesdk --throttle 500 -v 50

# Check app responsiveness
adb shell am start -n com.ocrmobilesdk/.MainActivity && sleep 5 && adb exec-out screencap -p > launch_test.png
```

### 8. Cleanup Commands
```bash
# Uninstall app
adb uninstall com.ocrmobilesdk

# Clear app data (if needed)
adb shell pm clear com.ocrmobilesdk
```

## Troubleshooting

### Installation Issues
```bash
# Force stop before install
adb shell am force-stop com.ocrmobilesdk
adb install -r -d android/app/build/outputs/apk/release/app-universal-release.apk

# Check available storage
adb shell df /data
```

### Launch Issues
```bash
# Check if app is installed
adb shell pm path com.ocrmobilesdk

# Verify main activity
adb shell dumpsys package com.ocrmobilesdk | grep -A 5 "Activity"
```

### Log Analysis
```bash
# Filter critical errors
adb logcat -d | grep -E "(FATAL EXCEPTION|AndroidRuntime|CRASH)"

# Check React Native specific logs
adb logcat -d | grep -E "(ReactNativeJS|RNBridge|Metro)"
```

## Expected Results

### Successful Installation
```
Performing Streamed Install
Success
```

### Successful Launch
```
Starting: Intent { cmp=com.ocrmobilesdk/.MainActivity }
```

### Healthy Logs
- No FATAL EXCEPTION entries
- No Metro/DevServer connections
- Normal React Native initialization
- No memory leaks or crashes

## APK Verification Commands
```bash
# Verify APK signature
apksigner verify android/app/build/outputs/apk/release/app-universal-release.apk

# Check APK contents
aapt dump badging android/app/build/outputs/apk/release/app-universal-release.apk

# Generate SHA256 hash
shasum -a 256 android/app/build/outputs/apk/release/app-universal-release.apk
```
