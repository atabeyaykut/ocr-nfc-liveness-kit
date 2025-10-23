# iOS Implementation Guide - OCR Mobile SDK

## 📱 Overview

Complete iOS native module implementation for the OCR Mobile SDK with:
- ✅ **OCR Module** - Vision framework integration with real-time text recognition
- ✅ **Liveness Detection** - Face detection and anti-spoofing
- ✅ **Camera Module** - High-performance camera capture
- ✅ **NFC Reader** - Turkish ID card reading (iOS 13+)
- ✅ **Secure Storage** - Keychain-based PII data protection
- ✅ **Frame Processor** - Image preprocessing and quality analysis

## 🏗️ Architecture

```
ios/
├── OCR/
│   ├── Modules/
│   │   ├── OCRModule.swift              # OCR with Vision framework
│   │   ├── OCRModule.m                  # React Native bridge
│   │   ├── LivenessDetectionModule.swift # Face liveness detection
│   │   ├── LivenessDetectionModule.m    # RN bridge
│   │   ├── CameraModule.swift           # Camera capture & control
│   │   ├── CameraModule.m               # RN bridge
│   │   ├── NFCReaderModule.swift        # NFC card reading
│   │   └── NFCReaderModule.m            # RN bridge
│   ├── Security/
│   │   └── SecureStorage.swift          # Keychain-based storage
│   └── Utils/
│       └── FrameProcessor.swift         # Image preprocessing
├── OCRMobileSDK/
│   ├── AppDelegate.h
│   ├── AppDelegate.m
│   ├── Info.plist                       # Permissions & capabilities
│   └── OCRMobileSDK-Bridging-Header.h
└── Podfile                              # CocoaPods dependencies
```

## 🔧 Setup Instructions

### 1. Install CocoaPods Dependencies

```bash
cd ios
pod install
```

### 2. Configure Xcode Project

Open `OCRMobileSDK.xcworkspace` in Xcode and:

#### a. Add Swift Files to Project
1. Select project in navigator
2. Right-click on `OCR/Modules` → Add Files
3. Add all `.swift` files
4. Ensure "Copy items if needed" is checked
5. Select "OCRMobileSDK" target

#### b. Configure Build Settings
1. Select project → Build Settings
2. Search for "Swift Compiler - General"
3. Set "Objective-C Bridging Header" to:
   ```
   OCRMobileSDK/OCRMobileSDK-Bridging-Header.h
   ```
4. Set "Swift Language Version" to `Swift 5`

#### c. Add Required Frameworks
1. Select target → General → Frameworks, Libraries, and Embedded Content
2. Click "+" and add:
   - `Vision.framework`
   - `CoreImage.framework`
   - `AVFoundation.framework`
   - `CoreNFC.framework`
   - `Security.framework`

#### d. Enable NFC Capability
1. Select target → Signing & Capabilities
2. Click "+" → Near Field Communication Tag Reading
3. In Info.plist, ensure `com.apple.developer.nfc.readersession.formats` exists

### 3. Verify Info.plist Permissions

Ensure these keys are present in `Info.plist`:

```xml
<key>NSCameraUsageDescription</key>
<string>Bu uygulama kimlik belgelerini okumak ve canlılık testi yapmak için kameraya erişim gerektirir.</string>

<key>NFCReaderUsageDescription</key>
<string>Bu uygulama Türk kimlik kartlarını okumak için NFC erişimi gerektirir.</string>

<key>NSPhotoLibraryUsageDescription</key>
<string>İşlenmiş belge görüntülerini kaydetmek için fotoğraf kütüphanesine erişim gerekebilir.</string>

<key>NSFaceIDUsageDescription</key>
<string>Güvenli kimlik doğrulama için Face ID kullanılabilir.</string>

<key>com.apple.developer.nfc.readersession.formats</key>
<array>
    <string>NDEF</string>
    <string>TAG</string>
</array>
```

## 📚 Module Details

### OCR Module

**Features:**
- Vision framework text recognition
- Image preprocessing with FrameProcessor
- Quality analysis (glare, blur, lighting)
- Turkish ID card field parsing
- Secure token-based data exchange

**Methods:**
```swift
scan(imageUri: String) -> Promise<{sessionToken, confidence, metadata}>
getResult(sessionToken: String) -> Promise<{fields, metadata}>
isTokenValid(sessionToken: String) -> Promise<Boolean>
cleanupExpiredTokens() -> Promise<Boolean>
```

**Events:**
- `OCR_SUCCESS`
- `OCR_ERROR`
- `OCR_PROGRESS`

### Liveness Detection Module

**Features:**
- Real-time face detection with Vision
- Sequential command execution (blink, smile, turn, nod)
- Anti-spoofing with depth & texture analysis
- 30-60 FPS performance
- Progress tracking

**Methods:**
```swift
startDetection(commands: [String], options: {}) -> Promise
stopDetection() -> Promise
getStatus() -> Promise<{isRunning, progress, fps}>
```

**Events:**
- `LIVENESS_STARTED`
- `LIVENESS_COMMAND_CHANGED`
- `LIVENESS_PROGRESS`
- `LIVENESS_SUCCESS`
- `FACE_DETECTED`
- `FPS_UPDATE`

### Camera Module

**Features:**
- Front/back camera switching
- Auto-focus & exposure control
- Flash control
- Photo capture with preprocessing
- Real-time frame streaming

**Methods:**
```swift
initializeCamera(config: {}) -> Promise
startPreview() -> Promise
stopPreview() -> Promise
capturePhoto(options: {}) -> Promise<{uri, width, height}>
switchCamera() -> Promise
setFocusPoint(point: {x, y}) -> Promise
setFlashMode(mode: String) -> Promise
getCameraCapabilities() -> Promise
```

**Events:**
- `CAMERA_READY`
- `FRAME_CAPTURED`
- `PHOTO_CAPTURED`
- `FOCUS_CHANGED`

### NFC Reader Module

**Features:**
- CoreNFC integration (iOS 13+)
- ISO-DEP tag reading
- Turkish ID card data extraction
- 60-second timeout
- Error recovery

**Methods:**
```swift
isSupported() -> Promise<{supported, message}>
startReading(options: {}) -> Promise
stopReading() -> Promise
getStatus() -> Promise<{isReading, isSupported}>
```

**Events:**
- `NFC_SCAN_STARTED`
- `NFC_TAG_DETECTED`
- `NFC_DATA_READ`
- `NFC_SCAN_COMPLETED`
- `NFC_ERROR`
- `NFC_CANCELLED`

### Secure Storage

**Features:**
- iOS Keychain integration
- AES256-GCM encryption
- 5-minute TTL for PII data
- Automatic cleanup
- Session token management

**Methods:**
```swift
generateToken() -> String
save<T>(key: String, data: T, ttl: TimeInterval)
get<T>(key: String, as: T.Type) -> T?
delete(key: String)
isValid(key: String) -> Bool
cleanupExpired()
```

### Frame Processor

**Features:**
- Perspective correction
- Glare detection & removal
- Blur detection (Laplacian variance)
- Contrast enhancement
- Noise reduction
- Quality scoring

**Methods:**
```swift
preprocessForOCR(image: UIImage) -> UIImage?
analyzeQuality(image: UIImage) -> ImageQuality
correctPerspective(image: CIImage) -> CIImage?
removeGlare(image: CIImage) -> CIImage
```

## 🧪 Testing

### 1. Build the Project

```bash
cd ios
xcodebuild -workspace OCRMobileSDK.xcworkspace \
           -scheme OCRMobileSDK \
           -configuration Debug \
           -sdk iphonesimulator \
           -destination 'platform=iOS Simulator,name=iPhone 14' \
           clean build
```

### 2. Run on Device

```bash
cd ..
npm run ios
```

### 3. Test Individual Modules

```javascript
// Test OCR
import { NativeModules } from 'react-native';
const { OCRModule } = NativeModules;

const result = await OCRModule.scan('file://path/to/image.jpg');
const data = await OCRModule.getResult(result.sessionToken);
console.log('OCR Data:', data);

// Test Liveness
const { LivenessDetectionModule } = NativeModules;

await LivenessDetectionModule.startDetection(
  ['blink', 'smile', 'turn_left'],
  { timeout: 30000 }
);

// Test Camera
const { CameraModule } = NativeModules;

await CameraModule.initializeCamera({
  cameraPosition: 'front',
  quality: 'high'
});

const photo = await CameraModule.capturePhoto({ flash: 'off' });

// Test NFC
const { NFCReaderModule } = NativeModules;

const supported = await NFCReaderModule.isSupported();
if (supported.supported) {
  await NFCReaderModule.startReading({
    alertMessage: 'Kartınızı yaklaştırın'
  });
}
```

## 🚀 Performance Optimization

### 1. Frame Processing
- Adaptive frame skipping (every 3rd frame)
- Async processing with DispatchQueue
- Memory-efficient Core Image operations

### 2. Vision Framework
- `.accurate` recognition level for quality
- Language correction enabled
- Multi-language support (TR, EN)

### 3. Camera Optimization
- Hardware acceleration
- Bitcode disabled for faster builds
- Continuous auto-focus/exposure

## 🔒 Security Features

### PII Protection
- No PII data crosses React Native bridge directly
- Session tokens with 5-minute TTL
- One-time use tokens
- Keychain encryption (AES256)

### NFC Security
- Secure ISO-DEP communication
- Check digit validation
- Anti-cloning detection

## 📋 Requirements

- iOS 14.0+
- Xcode 14+
- Swift 5+
- CocoaPods 1.11+
- React Native 0.72+

## 🐛 Troubleshooting

### Build Errors

**"Module 'React' not found"**
```bash
cd ios
pod install
```

**"No such module 'Vision'"**
- Ensure Vision.framework is added in project settings
- Check deployment target is iOS 14.0+

**Swift compilation errors**
- Verify bridging header path
- Check Swift version is 5+
- Clean build folder (Cmd+Shift+K)

### Runtime Errors

**Camera not working**
- Check Info.plist permissions
- Verify camera permission granted in Settings

**NFC not available**
- Ensure device supports NFC (iPhone 7+)
- Check NFC capability is enabled
- Verify Info.plist has NFC usage description

**OCR low accuracy**
- Check image quality (lighting, focus)
- Ensure document is flat (no perspective distortion)
- Try preprocessing options

## 🔄 Migration from Mock Implementation

If you have existing mock implementations:

1. **Remove mock OCR code**
   ```swift
   // Delete Thread.sleep and mock data
   // Replace with Vision framework calls
   ```

2. **Update module imports**
   ```swift
   import Vision
   import CoreImage
   import AVFoundation
   ```

3. **Test with real data**
   - Use actual ID card images
   - Validate parsed fields
   - Check confidence scores

## 📖 Additional Resources

- [Apple Vision Framework](https://developer.apple.com/documentation/vision)
- [Core NFC Documentation](https://developer.apple.com/documentation/corenfc)
- [iOS Keychain Services](https://developer.apple.com/documentation/security/keychain_services)
- [React Native Native Modules](https://reactnative.dev/docs/native-modules-ios)

## ✅ Production Checklist

- [ ] All pods installed successfully
- [ ] Build succeeds without warnings
- [ ] All permissions configured in Info.plist
- [ ] NFC capability enabled in signing
- [ ] Bridging header configured correctly
- [ ] Swift files added to target
- [ ] Frameworks linked properly
- [ ] Test on real device (not simulator for NFC)
- [ ] Performance tested (30+ FPS for liveness)
- [ ] Memory leaks checked with Instruments
- [ ] Security audit passed
- [ ] Documentation reviewed

## 📊 Status

**Current Status:** ✅ **IMPLEMENTATION COMPLETE**

All iOS native modules are implemented and ready for integration testing.

**Next Steps:**
1. Run `pod install`
2. Open Xcode workspace
3. Configure build settings
4. Test on physical device
5. Performance profiling
