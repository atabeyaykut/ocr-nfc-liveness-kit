# Integration Guide

## 🚀 Mevcut Projeye Entegrasyon

Bu modülü mevcut bir React Native projesine entegre etmek için:

### 1. Modülü Yükleme

```bash
# NPM'den yükleme (publish edildikten sonra)
npm install react-native-multiframe-fusion

# Veya local olarak
npm install file:../path/to/react-native-multiframe-fusion
```

### 2. iOS Kurulumu

```bash
cd ios
pod install
cd ..
```

### 3. Android Kurulumu

Android için ek bir adım gerekmez. Gradle otomatik olarak OpenCV'yi indirecektir.

#### Android ProGuard (Opsiyonel)

Eğer ProGuard kullanıyorsanız, `android/app/proguard-rules.pro` dosyasına ekleyin:

```proguard
-keep class org.opencv.** { *; }
-keep interface org.opencv.** { *; }
-dontwarn org.opencv.**
```

### 4. Metro Bundler Yapılandırması

`metro.config.js` dosyanıza ekleyin:

```javascript
const { getDefaultConfig } = require('metro-config');

module.exports = (async () => {
  const {
    resolver: { sourceExts, assetExts }
  } = await getDefaultConfig();
  
  return {
    transformer: {
      getTransformOptions: async () => ({
        transform: {
          experimentalImportSupport: false,
          inlineRequires: true,
        },
      }),
    },
    resolver: {
      assetExts: assetExts.filter(ext => ext !== 'svg'),
      sourceExts: [...sourceExts, 'svg']
    }
  };
})();
```

### 5. TypeScript Yapılandırması

`tsconfig.json`:

```json
{
  "compilerOptions": {
    "target": "esnext",
    "module": "commonjs",
    "lib": ["es2017"],
    "allowJs": true,
    "jsx": "react-native",
    "strict": true,
    "moduleResolution": "node",
    "esModuleInterop": true,
    "skipLibCheck": true,
    "resolveJsonModule": true
  }
}
```

## 📱 Mevcut OCR Projesine Entegrasyon

### 1. Burst Capture Özelliği Ekleme

`CameraScreen.tsx` dosyanıza:

```typescript
import { MultiFrameFusion } from 'react-native-multiframe-fusion';

// State ekleyin
const [burstMode, setBurstMode] = useState(false);
const [capturedFrames, setCapturedFrames] = useState<string[]>([]);

// Burst capture fonksiyonu
const captureBurst = async () => {
  const frames: string[] = [];
  
  for (let i = 0; i < 3; i++) {
    const photo = await camera.current?.takePhoto();
    if (photo) {
      frames.push(`file://${photo.path}`);
    }
    await new Promise(r => setTimeout(r, 100));
  }
  
  // Görüntüleri birleştir
  const result = await MultiFrameFusion.merge(frames, {
    method: 'fusion',
    quality: 0.9,
    deghost: true,
  });
  
  // OCR'a gönder
  await processOCR(result.uri);
  
  // Temizlik
  for (const frame of frames) {
    await RNFS.unlink(frame.replace('file://', ''));
  }
  
  return result;
};
```

### 2. OCR Öncesi Ön İşleme

```typescript
import { MultiFrameFusion } from 'react-native-multiframe-fusion';
import { preprocessImageForOCR } from './ocr-utils';

const captureAndProcessForOCR = async () => {
  // 3 kare burst çek
  const frames = await captureBurstFrames();
  
  // Multi-frame fusion ile optimize et
  const fused = await MultiFrameFusion.merge(frames, {
    method: 'median', // Gürültüyü azalt (OCR için ideal)
    format: 'png',    // Kayıpsız (OCR doğruluğu için)
  });
  
  // Ek preprocessing (kontrast, keskinlik vs.)
  const preprocessed = await preprocessImageForOCR(fused.uri);
  
  // OCR yap
  const ocrResult = await performOCR(preprocessed);
  
  return ocrResult;
};
```

### 3. Kimlik Kartı/Pasaport Okuma İyileştirmesi

```typescript
const captureIDCard = async () => {
  // Kullanıcıdan 3 kare çekmesini iste
  const frames: string[] = [];
  
  for (let i = 0; i < 3; i++) {
    showToast(`Kare ${i + 1}/3 - Kimliği sabit tutun`);
    const photo = await camera.current?.takePhoto();
    frames.push(`file://${photo.path}`);
    await new Promise(r => setTimeout(r, 200));
  }
  
  // Fusion ile optimize et
  const optimized = await MultiFrameFusion.merge(frames, {
    method: 'fusion',
    format: 'png',
    deghost: true,
    alignmentMethod: 'ecc', // Dokümanlarda ECC yeterli
  });
  
  // MRZ okuma (Machine Readable Zone)
  const mrzResult = await readMRZ(optimized.uri);
  
  return {
    image: optimized.uri,
    mrz: mrzResult,
  };
};
```

### 4. UI Component Örneği

```typescript
import React from 'react';
import { View, TouchableOpacity, Text } from 'react-native';
import { MultiFrameFusion } from 'react-native-multiframe-fusion';

export const EnhancedCameraButton: React.FC = () => {
  const [mode, setMode] = useState<'single' | 'burst'>('single');
  
  return (
    <View>
      {/* Mod seçici */}
      <View style={styles.modeSelector}>
        <TouchableOpacity
          onPress={() => setMode('single')}
          style={mode === 'single' ? styles.activeMode : styles.inactiveMode}
        >
          <Text>📸 Tek Kare</Text>
        </TouchableOpacity>
        
        <TouchableOpacity
          onPress={() => setMode('burst')}
          style={mode === 'burst' ? styles.activeMode : styles.inactiveMode}
        >
          <Text>✨ Burst (3 Kare)</Text>
        </TouchableOpacity>
      </View>
      
      {/* Çekim butonu */}
      <TouchableOpacity
        style={styles.captureButton}
        onPress={() => mode === 'burst' ? captureBurst() : captureSingle()}
      >
        <Text style={styles.captureText}>
          {mode === 'burst' ? 'Burst Çek' : 'Çek'}
        </Text>
      </TouchableOpacity>
    </View>
  );
};
```

## 🔧 Optimizasyon Ayarları

### Düşük Kapasiteli Cihazlar İçin

```typescript
const result = await MultiFrameFusion.merge(frames, {
  method: 'average',     // Hızlı
  quality: 0.8,          // Daha düşük kalite
  alignmentMethod: 'ecc', // Basit hizalama
});
```

### Yüksek Kalite Gereksinimi İçin

```typescript
const result = await MultiFrameFusion.merge(frames, {
  method: 'fusion',        // En iyi kalite
  format: 'png',           // Kayıpsız
  deghost: true,           // Hayalet temizleme
  alignmentMethod: 'feature', // Robust hizalama
  maxIterations: 100,      // Daha hassas
  epsilon: 0.0001,         // Yüksek doğruluk
});
```

## 🎯 Performans İzleme

```typescript
const monitoredCapture = async () => {
  const startTime = Date.now();
  
  // Capture
  const captureStart = Date.now();
  const frames = await captureBurstFrames();
  const captureTime = Date.now() - captureStart;
  
  // Fusion
  const fusionStart = Date.now();
  const result = await MultiFrameFusion.merge(frames);
  const fusionTime = Date.now() - fusionStart;
  
  // Analytics
  logAnalytics('burst_capture', {
    capture_time: captureTime,
    fusion_time: fusionTime,
    total_time: Date.now() - startTime,
    frame_count: frames.length,
    result_size: result.fileSize,
  });
  
  return result;
};
```

## 🐛 Hata Yönetimi

```typescript
const safeCapture = async () => {
  try {
    // Yetenekleri kontrol et
    const isSupported = await MultiFrameFusion.isSupported();
    if (!isSupported) {
      // Fallback: tek kare
      return await captureSingle();
    }
    
    // Burst capture
    const frames = await captureBurstFrames();
    
    // Fusion
    const result = await MultiFrameFusion.merge(frames, {
      method: 'fusion',
    });
    
    return result;
    
  } catch (error) {
    console.error('Capture error:', error);
    
    // Hata tipine göre fallback
    if (error.message.includes('OPENCV_ERROR')) {
      // OpenCV hatası - tek kare kullan
      return await captureSingle();
    } else if (error.message.includes('MEMORY')) {
      // Bellek hatası - daha düşük kalite
      return await captureWithLowerQuality();
    } else {
      throw error;
    }
  }
};
```

## 📦 Bağımlılıklar

Modülün çalışması için gerekli peer dependencies:

```json
{
  "peerDependencies": {
    "react": ">=16.8.0",
    "react-native": ">=0.60.0"
  },
  "optionalDependencies": {
    "react-native-vision-camera": "^3.0.0",
    "react-native-fs": "^2.20.0"
  }
}
```

## 🧪 Test

```typescript
import { MultiFrameFusion } from 'react-native-multiframe-fusion';

describe('MultiFrameFusion', () => {
  it('should be supported', async () => {
    const supported = await MultiFrameFusion.isSupported();
    expect(supported).toBe(true);
  });
  
  it('should merge images', async () => {
    const result = await MultiFrameFusion.merge(
      [testImage1, testImage2, testImage3],
      { method: 'average' }
    );
    
    expect(result.uri).toBeDefined();
    expect(result.width).toBeGreaterThan(0);
    expect(result.height).toBeGreaterThan(0);
  });
});
```

## 📝 Notlar

- iOS 12.0+ ve Android API 21+ gereklidir
- OpenCV yüklemesi ilk çalıştırmada ~500ms ekler (sadece Android)
- Yüksek çözünürlüklü görüntüler (>48MP) bellek sorunlarına yol açabilir
- Burst çekim için kamera stabilizasyonunu aktifleştirin

---

**🎉 Artık projenizde multi-frame fusion kullanabilirsiniz!**
