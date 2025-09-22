# 📱 OCR Mobile SDK - Comprehensive Device Testing Guide

**APK Details:**
- Path: `android/app/build/outputs/apk/release/app-universal-release.apk`
- Size: 45.3MB (45,284,794 bytes)
- SHA256: `239494d9d407978f5d7ddf20d6b869d25729a399bca8848bdfe393b6134f7fbc`
- Package: `com.ocrmobilesdk v1.0.0`
- Target: Android 10+ (API 23-34)

## Prerequisites
- Android device/emulator with Android 10+ (API 23+)
- USB debugging enabled
- ADB installed and accessible
- Device connected and authorized

## Step-by-Step Testing Protocol

### 1. Device Connection Verification
```bash
# Check connected devices
adb devices

# Expected output: Device serial number with "device" status
# Example: ABC123DEF456    device
```

### 2. APK Installation
```bash
# Install the production APK
adb install -r android/app/build/outputs/apk/release/app-universal-release.apk

# Expected output: Success
# If failure: Check device storage, USB debugging, or try uninstall first
```

### 3. Application Launch
```bash
# Launch OCR Mobile SDK
adb shell am start -n com.ocrmobilesdk/com.ocrmobilesdk.MainActivity

# Alternative launch method
adb shell monkey -p com.ocrmobilesdk -c android.intent.category.LAUNCHER 1
```

### 4. Real-time Log Monitoring
```bash
# Start comprehensive log monitoring (run in separate terminal)
adb logcat -v time | grep -E "(OCRMobileSDK|ReactNativeJS|FATAL|ERROR)"

# Bundle-specific monitoring
adb logcat -v time | grep -E "(Loading JS bundle|index.android.bundle|Unable to load script|DevServer)"

# Performance monitoring
adb logcat -v time | grep -E "(Memory|Performance|ANR|Crash)"
```

### 5. Standalone Verification Commands
```bash
# Check if app is running standalone (no Metro dependency)
adb logcat -d | grep -E "(localhost:8081|Metro|DevServer)" && echo "⚠️ METRO DEPENDENCY DETECTED" || echo "✅ STANDALONE CONFIRMED"

# Verify bundle loading
adb logcat -d | grep -E "Loading JS bundle from file:///android_asset/index.android.bundle" && echo "✅ BUNDLE LOADED" || echo "⚠️ BUNDLE ISSUE"

# Check for React Native initialization
adb logcat -d | grep -E "ReactNativeJS.*Running application" && echo "✅ RN INITIALIZED" || echo "⚠️ RN INIT ISSUE"
```

## Feature Testing Scenarios

### OCR Testing
1. **Document Scan Test**
   - Open OCR feature
   - Point camera at ID document/passport
   - Verify text extraction accuracy
   - Check image processing speed

2. **Expected Logs**
   ```
   OCRMobileSDK: OCR camera initialized
   OCRMobileSDK: Document detected
   OCRMobileSDK: Text extraction completed
   ```

### NFC Testing  
1. **NFC Read Test**
   - Enable NFC on device
   - Place NFC-enabled document near device
   - Verify data reading capability
   - Test error handling for invalid cards

2. **Expected Logs**
   ```
   OCRMobileSDK: NFC reader initialized
   OCRMobileSDK: NFC tag detected
   OCRMobileSDK: Data read successful
   ```

### Liveness Detection Testing
1. **Face Detection Test**
   - Open liveness feature
   - Follow on-screen instructions
   - Test various lighting conditions
   - Verify anti-spoofing measures

2. **Expected Logs**
   ```
   OCRMobileSDK: Liveness detector started
   OCRMobileSDK: Face detected
   OCRMobileSDK: Liveness check passed
   ```

## Error Detection & Troubleshooting

### Critical Error Patterns
```bash
# Check for critical errors
adb logcat -d | grep -E "(FATAL|AndroidRuntime|CRASH)"

# Memory issues
adb logcat -d | grep -E "(OutOfMemoryError|Low memory|GC)"

# Bundle loading failures
adb logcat -d | grep -E "(Unable to load script|Bundle loading failed|Metro connection)"

# Permission issues
adb logcat -d | grep -E "(Permission denied|SecurityException)"
```

### Performance Monitoring
```bash
# CPU and memory usage
adb shell top -n 1 | grep com.ocrmobilesdk

# App startup time
adb logcat -c && adb shell am start -W com.ocrmobilesdk/com.ocrmobilesdk.MainActivity

# Network activity (should be minimal for standalone)
adb shell netstat | grep com.ocrmobilesdk
```

## Validation Checklist

### ✅ Startup Validation
- [ ] App launches without crashes
- [ ] No Metro server connection attempts
- [ ] Bundle loads from assets
- [ ] React Native initializes successfully
- [ ] Main UI renders correctly

### ✅ Feature Validation  
- [ ] OCR camera opens and functions
- [ ] NFC reader detects cards (if available)
- [ ] Liveness detection activates
- [ ] All permissions granted properly
- [ ] No network dependencies for core features

### ✅ Performance Validation
- [ ] App startup < 3 seconds
- [ ] Smooth UI interactions
- [ ] No memory leaks during testing
- [ ] Camera preview responsive
- [ ] No ANR (Application Not Responding) events

### ✅ Error Handling Validation
- [ ] Graceful handling of missing permissions
- [ ] Proper error messages for failed operations
- [ ] App recovery from background/foreground cycles
- [ ] No unhandled exceptions in logs

## Test Completion Commands

### Generate Test Report
```bash
# Capture final logs
adb logcat -d > /tmp/ocr_sdk_test_logs.txt

# Get app info
adb shell dumpsys package com.ocrmobilesdk | grep -E "(versionName|versionCode|targetSdk)"

# Check app size and permissions
adb shell pm list packages -f | grep com.ocrmobilesdk
adb shell dumpsys package com.ocrmobilesdk | grep permission
```

### Cleanup Commands
```bash
# Stop app
adb shell am force-stop com.ocrmobilesdk

# Uninstall if needed
adb uninstall com.ocrmobilesdk

# Clear logs
adb logcat -c
```

## Success Criteria Summary

**PASS Requirements:**
- App launches and runs standalone
- All core features (OCR/NFC/Liveness) accessible
- No critical errors in logs
- Acceptable performance metrics
- Proper error handling

**FAIL Indicators:**
- App crashes on startup
- Metro server dependency detected
- Bundle loading failures
- Core features non-functional
- Critical errors in logs
