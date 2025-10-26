# Installation Guide
## ocr-nfc-liveness-kit

React Native SDK for Turkish ID card verification with OCR, NFC, and Liveness Detection.

---

## 📦 Package Information

- **Package Name**: `ocr-nfc-liveness-kit`
- **Registry**: Azure Artifacts (Private)
- **Latest Version**: `1.0.0`
- **React Native**: `>= 0.70.0`
- **iOS**: `>= 14.0`
- **Android**: `>= API 21 (Android 5.0)`

---

## 🔐 Prerequisites

### 1. Azure DevOps Access
You need access to the Azure DevOps organization to install this package.

**Organization**: `kantlori`  
**Feed**: `ocr-nfc-liveness-kit`  
**URL**: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit

### 2. Personal Access Token (PAT)

**Create PAT:**
1. Go to https://dev.azure.com/kantlori
2. User Settings (top right) → Personal Access Tokens
3. **New Token** with scope: `Packaging (Read)`
4. Copy and save the token

---

## 📥 Installation

### Step 1: Configure NPM Registry

Create or update `.npmrc` in your project root:

```bash
# .npmrc
registry=https://pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/
always-auth=true
strict-ssl=true

# Replace YOUR_PAT_TOKEN with your actual token
//pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/:_authToken=YOUR_PAT_TOKEN
```

⚠️ **Security**: Never commit `.npmrc` with PAT token to Git! Add to `.gitignore`.

### Step 2: Install Package

```bash
npm install ocr-nfc-liveness-kit
```

Or with specific version:
```bash
npm install ocr-nfc-liveness-kit@1.0.0
```

### Step 3: Install Peer Dependencies

```bash
# Required dependencies
npm install react-native-vision-camera react-native-nfc-manager
npm install @react-native-ml-kit/text-recognition @react-native-ml-kit/face-detection
npm install react-native-permissions react-native-fs

# iOS only
cd ios && pod install && cd ..
```

---

## 🔧 Platform Setup

### iOS Configuration

#### 1. Info.plist Permissions
Add to `ios/YourApp/Info.plist`:

```xml
<key>NSCameraUsageDescription</key>
<string>Kimlik kartı ve yüz tanıma için kamera erişimi gereklidir</string>

<key>NSFaceIDUsageDescription</key>
<string>Canlılık testi için Face ID kullanılacak</string>

<key>NFCReaderUsageDescription</key>
<string>Kimlik kartındaki NFC çipini okumak için erişim gereklidir</string>

<key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
<array>
    <string>A0000002471001</string>
</array>
```

#### 2. Enable NFC Capability
In Xcode:
1. Select your project → Target → Signing & Capabilities
2. **+ Capability** → **Near Field Communication Tag Reading**

#### 3. Entitlements
Create/update `ios/YourApp/YourApp.entitlements`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>com.apple.developer.nfc.readersession.formats</key>
    <array>
        <string>TAG</string>
    </array>
</dict>
</plist>
```

---

### Android Configuration

#### 1. AndroidManifest.xml Permissions
Add to `android/app/src/main/AndroidManifest.xml`:

```xml
<!-- Camera -->
<uses-permission android:name="android.permission.CAMERA" />
<uses-feature android:name="android.hardware.camera" android:required="false" />

<!-- NFC -->
<uses-permission android:name="android.permission.NFC" />
<uses-feature android:name="android.hardware.nfc" android:required="false" />

<!-- Storage -->
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
```

#### 2. NFC Intent Filter
Add inside `<activity>` tag:

```xml
<intent-filter>
    <action android:name="android.nfc.action.TECH_DISCOVERED"/>
</intent-filter>

<meta-data
    android:name="android.nfc.action.TECH_DISCOVERED"
    android:resource="@xml/nfc_tech_filter" />
```

#### 3. NFC Tech Filter
Create `android/app/src/main/res/xml/nfc_tech_filter.xml`:

```xml
<resources xmlns:xliff="urn:oasis:names:tc:xliff:document:1.2">
    <tech-list>
        <tech>android.nfc.tech.IsoDep</tech>
    </tech-list>
</resources>
```

---

## 🚀 Quick Start

### Basic Import

```javascript
import {
  OCRModule,
  NFCModule,
  LivenessModule,
  CameraModule
} from 'ocr-nfc-liveness-kit';
```

### Example: OCR Scan

```javascript
import { OCRModule } from 'ocr-nfc-liveness-kit';

async function scanIDCard() {
  try {
    const result = await OCRModule.scanDocument({
      documentType: 'ID_CARD',
      side: 'FRONT',
      enablePreprocessing: true
    });

    console.log('TC No:', result.tcNo);
    console.log('Ad:', result.firstName);
    console.log('Soyad:', result.lastName);
  } catch (error) {
    console.error('OCR Error:', error);
  }
}
```

### Example: NFC Read

```javascript
import { NFCModule } from 'ocr-nfc-liveness-kit';

async function readNFC() {
  try {
    await NFCModule.startSession();
    const data = await NFCModule.readTurkishIDCard();

    console.log('TC No:', data.tcNo);
    console.log('Ad:', data.firstName);
    console.log('Doğum Tarihi:', data.birthDate);
  } catch (error) {
    console.error('NFC Error:', error);
  } finally {
    await NFCModule.endSession();
  }
}
```

### Example: Liveness Detection

```javascript
import { LivenessModule } from 'ocr-nfc-liveness-kit';

async function checkLiveness() {
  try {
    const commands = ['BLINK', 'SMILE', 'TURN_LEFT'];
    await LivenessModule.startDetection(commands);

    const result = await LivenessModule.getResult();
    
    if (result.isLive) {
      console.log('Canlılık testi başarılı!');
    }
  } catch (error) {
    console.error('Liveness Error:', error);
  }
}
```

---

## 🔍 Verification

Test the installation:

```javascript
import { OCRModule, NFCModule, LivenessModule } from 'ocr-nfc-liveness-kit';

console.log('OCR Module:', OCRModule);
console.log('NFC Module:', NFCModule);
console.log('Liveness Module:', LivenessModule);
```

---

## 📚 Full Documentation

- **API Reference**: See `docs/API_REFERENCE.md`
- **Examples**: See `examples/` folder
- **TypeScript**: Type definitions included (`index.d.ts`)

---

## 🐛 Troubleshooting

### Cannot resolve module 'ocr-nfc-liveness-kit'

**Solution**:
1. Check `.npmrc` configuration
2. Verify PAT token is valid
3. Run `npm install` again

```bash
rm -rf node_modules package-lock.json
npm cache clean --force
npm install
```

### iOS: Module not found

**Solution**:
```bash
cd ios
rm -rf Pods Podfile.lock
pod install
cd ..
npx react-native run-ios
```

### Android: Gradle build errors

**Solution**:
```bash
cd android
./gradlew clean
cd ..
npx react-native run-android
```

### NFC not working

**iOS**: Requires physical device (NFC doesn't work on simulator)  
**Android**: Check device has NFC capability and it's enabled in Settings

---

## 🔄 Updates

To update to latest version:

```bash
npm update ocr-nfc-liveness-kit
```

Check available versions:
```bash
npm view ocr-nfc-liveness-kit versions
```

---

## 📞 Support

- **Issues**: Create issue in GitHub repository
- **Azure DevOps**: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit
- **Documentation**: Full guide in repository

---

## 📄 License

MIT License - See LICENSE file for details

---

**Version**: 1.0.0  
**Last Updated**: 2025-10-27
