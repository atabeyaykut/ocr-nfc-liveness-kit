# OCR Camera Capture - Usage Guide

## Overview

The OCR module now includes a real camera capture implementation using `react-native-vision-camera`. The mock `captureImage()` has been replaced with a production-ready camera integration.

## Changes Made

### ✅ Fixed Files

1. **modules/ocr/OCRReader.js**
   - Removed mock implementation
   - Added promise-based capture flow
   - Integrated with OCRCameraCapture component

2. **modules/ocr/OCRCameraCapture.js** (NEW)
   - Real camera implementation
   - Permission handling
   - UI with capture guide

3. **modules/ocr/index.js**
   - Added `OCRCameraCapture` export
   - Added `SecureOCRReader` export

## Installation

### Dependencies

Add to `package.json`:

```json
{
  "dependencies": {
    "react-native-vision-camera": "^3.0.0"
  }
}
```

Install:

```bash
npm install react-native-vision-camera
cd ios && pod install
```

### Permissions

#### iOS (`ios/OCRMobileSDK/Info.plist`)

Already configured ✓:
```xml
<key>NSCameraUsageDescription</key>
<string>Bu uygulama kimlik belgelerini okumak için kameraya erişim gerektirir.</string>
```

#### Android (`android/app/src/main/AndroidManifest.xml`)

Add if not present:
```xml
<uses-permission android:name="android.permission.CAMERA" />
<uses-feature android:name="android.hardware.camera" android:required="false" />
```

## Usage Patterns

### Pattern 1: Simple Integration (Recommended)

```javascript
import React, { useState } from 'react';
import { View, Text, Button, Modal } from 'react-native';
import { OCRReader, OCRCameraCapture } from '@turkiye/kimlik-sdk';

export default function OCRDemo() {
  const [showCamera, setShowCamera] = useState(false);
  const [ocrResult, setOcrResult] = useState(null);
  const ocrReader = new OCRReader();

  const startOCR = async () => {
    try {
      // Initialize OCR
      await ocrReader.startOCR({ cardSide: 'front' });
      
      // Show camera
      setShowCamera(true);
    } catch (error) {
      console.error('OCR init error:', error);
    }
  };

  const handlePhotoCaptured = async (photoPath, error) => {
    if (error) {
      console.error('Capture error:', error);
      return;
    }

    // Notify OCR reader of captured image
    ocrReader.setCapturedImage(photoPath);
    
    // Hide camera
    setShowCamera(false);

    // Process OCR
    try {
      const result = await ocrReader.extractText(photoPath, {
        language: 'tr',
        enhanceImage: true,
      });
      
      setOcrResult(result);
    } catch (error) {
      console.error('OCR error:', error);
    }
  };

  return (
    <View style={{ flex: 1 }}>
      <Button title="Start OCR" onPress={startOCR} />
      
      {ocrResult && (
        <View>
          <Text>Extracted Text: {ocrResult.text}</Text>
          <Text>TC No: {ocrResult.extractedFields?.tcNo}</Text>
        </View>
      )}

      <Modal visible={showCamera} animationType="slide">
        <OCRCameraCapture
          onPhoto={handlePhotoCaptured}
          cameraPosition="back"
          showGuide={true}
        />
      </Modal>
    </View>
  );
}
```

### Pattern 2: Using captureImage() Promise

```javascript
import React, { useState, useEffect } from 'react';
import { View, Modal } from 'react-native';
import { OCRReader, OCRCameraCapture } from '@turkiye/kimlik-sdk';

export default function OCRWithPromise() {
  const [ocrReader] = useState(() => new OCRReader());
  const [showCamera, setShowCamera] = useState(false);
  const [captureOptions, setCaptureOptions] = useState(null);

  // Listen for capture status
  useEffect(() => {
    ocrReader.onStatusChange = (newStatus, oldStatus) => {
      if (newStatus === 'capturing') {
        // Show camera when OCR enters capturing state
        setCaptureOptions(ocrReader.getCaptureOptions());
        setShowCamera(true);
      }
    };
  }, [ocrReader]);

  const startOCRWorkflow = async () => {
    try {
      await ocrReader.startOCR();
      
      // This will trigger the status change to 'capturing'
      const imageUri = await ocrReader.captureImage({
        quality: 0.8,
        flash: 'auto',
        showGuide: true,
      });
      
      console.log('Image captured:', imageUri);
      
      // Process OCR
      const result = await ocrReader.extractText(imageUri);
      console.log('OCR result:', result);
      
    } catch (error) {
      console.error('OCR workflow error:', error);
    }
  };

  const handlePhotoCaptured = (photoPath, error) => {
    // Notify OCR reader
    ocrReader.setCapturedImage(photoPath, error);
    
    // Hide camera
    setShowCamera(false);
  };

  return (
    <View style={{ flex: 1 }}>
      {/* Your UI here */}
      
      <Modal visible={showCamera}>
        <OCRCameraCapture
          onPhoto={handlePhotoCaptured}
          cameraPosition={captureOptions?.cameraPosition || 'back'}
          captureOptions={captureOptions}
        />
      </Modal>
    </View>
  );
}
```

### Pattern 3: Dual-Side Scanning

```javascript
import React, { useState } from 'react';
import { View, Text, Modal, Alert } from 'react-native';
import { OCRReader, OCRCameraCapture } from '@turkiye/kimlik-sdk';

export default function DualSideOCR() {
  const [ocrReader] = useState(() => new OCRReader());
  const [showCamera, setShowCamera] = useState(false);
  const [currentSide, setCurrentSide] = useState('front');
  const [results, setResults] = useState({ front: null, back: null });

  const scanSide = async (side) => {
    setCurrentSide(side);
    
    try {
      await ocrReader.startOCR({ cardSide: side });
      setShowCamera(true);
      
    } catch (error) {
      Alert.alert('Hata', `${side} tarafı tarama başlatılamadı`);
    }
  };

  const handlePhotoCaptured = async (photoPath, error) => {
    if (error) {
      Alert.alert('Hata', 'Fotoğraf çekilemedi');
      return;
    }

    setShowCamera(false);
    
    try {
      // Process current side
      const result = await ocrReader.extractText(photoPath, {
        enhanceImage: true,
      });
      
      // Save result
      setResults(prev => ({
        ...prev,
        [currentSide]: result,
      }));
      
      // If front done, scan back
      if (currentSide === 'front') {
        Alert.alert(
          'Ön Taraf Tamamlandı',
          'Şimdi arka tarafı tarayın',
          [{ text: 'Tamam', onPress: () => scanSide('back') }]
        );
      } else {
        // Both sides done
        Alert.alert('Başarılı', 'Her iki taraf tarandı!');
        console.log('Complete results:', results);
      }
      
    } catch (error) {
      Alert.alert('OCR Hatası', error.message);
    }
  };

  return (
    <View style={{ flex: 1 }}>
      {/* Your UI */}
      
      <Modal visible={showCamera}>
        <OCRCameraCapture
          onPhoto={handlePhotoCaptured}
          cameraPosition="back"
          showGuide={true}
        />
      </Modal>
    </View>
  );
}
```

## OCRCameraCapture Props

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `onPhoto` | `function(path, error)` | **Required** | Callback when photo captured |
| `cameraPosition` | `'back' \| 'front'` | `'back'` | Camera position |
| `captureOptions` | `object` | `{}` | Camera capture options |
| `captureOptions.flash` | `'on' \| 'off' \| 'auto'` | `'auto'` | Flash mode |
| `captureOptions.quality` | `'speed' \| 'balanced' \| 'quality'` | `'speed'` | Quality prioritization |
| `showGuide` | `boolean` | `true` | Show ID card guide overlay |

## OCRReader API Changes

### New Methods

#### `setCapturedImage(imageUri, error)`
Called by camera component to provide captured image.

```javascript
ocrReader.setCapturedImage('file:///path/to/image.jpg');
// or with error:
ocrReader.setCapturedImage(null, new Error('Capture failed'));
```

#### `getCaptureOptions()`
Get current capture options (used by camera component).

```javascript
const options = ocrReader.getCaptureOptions();
// Returns: { quality, flash, cameraPosition, showGuide }
```

### Modified Methods

#### `captureImage(options)` - Now Returns Promise
No longer returns mock path. Returns promise resolved when camera captures.

**Old (Mock):**
```javascript
const imageUri = await ocrReader.captureImage();
// Immediately returned: "file:///mock/path/captured_image.jpg"
```

**New (Real):**
```javascript
// Triggers camera UI, waits for user to capture
const imageUri = await ocrReader.captureImage({
  quality: 0.8,
  flash: 'auto',
  cameraPosition: 'back',
});
// Returns: "file:///var/mobile/Containers/Data/..../photo.jpg"
```

## Troubleshooting

### Camera Not Opening

**Check permissions:**
```javascript
import { Camera } from 'react-native-vision-camera';

const permission = await Camera.getCameraPermissionStatus();
if (permission !== 'granted') {
  await Camera.requestCameraPermission();
}
```

### Black Screen

**Ensure device prop is set:**
```javascript
const devices = useCameraDevices();
const device = devices.back;

if (!device) {
  return <Text>No camera found</Text>;
}
```

### iOS Build Issues

**Run pod install:**
```bash
cd ios && pod install
```

**Check Info.plist:**
```xml
<key>NSCameraUsageDescription</key>
<string>Required for OCR</string>
```

### Android Build Issues

**Check AndroidManifest.xml:**
```xml
<uses-permission android:name="android.permission.CAMERA" />
```

**Add to gradle.properties:**
```properties
# If using react-native-vision-camera
VisionCamera_enableFrameProcessors=false
```

## Performance Notes

- Photo capture is optimized for speed
- Auto-stabilization enabled by default
- Recommended resolution: 1920x1080 for OCR
- Flash: 'auto' works best for most lighting conditions

## Migration from Mock

If you were using the old mock implementation:

1. **No code changes needed** for basic usage
2. **Add camera UI** using Modal + OCRCameraCapture
3. **Handle status changes** to show/hide camera
4. **Test on physical device** (camera doesn't work in simulator)

## Testing

### Unit Tests

```javascript
import { OCRReader } from '@turkiye/kimlik-sdk';

describe('OCRReader', () => {
  test('captureImage returns promise', async () => {
    const reader = new OCRReader();
    await reader.startOCR();
    
    const capturePromise = reader.captureImage();
    expect(capturePromise).toBeInstanceOf(Promise);
    
    // Simulate camera capture
    reader.setCapturedImage('file:///test.jpg');
    
    const result = await capturePromise;
    expect(result).toBe('file:///test.jpg');
  });
});
```

### Integration Tests

Test on physical devices:
- iOS 13+ (iPhone 7 or newer)
- Android 8+ with camera

## Next Steps

1. ✅ Real camera implementation
2. ⏳ Add photo preview before processing
3. ⏳ Add retake functionality
4. ⏳ Add flash toggle in UI
5. ⏳ Add manual crop/rotate before OCR

## Support

For issues or questions:
- Check `OCRReader.js` source code
- Review `OCRCameraCapture.js` component
- See examples in `/examples` directory
