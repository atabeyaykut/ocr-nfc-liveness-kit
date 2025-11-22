# ⚡ Hızlı Başlangıç Kılavuzu

## 📦 Kurulum (3 Adım)

### 1. Paketi Yükle

```bash
npm install react-native-multiframe-fusion
# veya
yarn add react-native-multiframe-fusion
```

### 2. iOS Pods'u Yükle

```bash
cd ios && pod install && cd ..
```

### 3. Android - Otomatik! 🎉

Android için ek kurulum gerekmez. OpenCV otomatik olarak yüklenir.

## 🚀 İlk Kullanım (5 Dakika)

### Adım 1: Import Edin

```typescript
import { MultiFrameFusion } from 'react-native-multiframe-fusion';
```

### Adım 2: 3 Fotoğraf Çekin

```typescript
const frames = [];

for (let i = 0; i < 3; i++) {
  const photo = await camera.takePhoto();
  frames.push(`file://${photo.path}`);
  await sleep(100); // 100ms bekleme
}
```

### Adım 3: Birleştirin!

```typescript
const result = await MultiFrameFusion.merge(frames, {
  method: 'fusion',  // En iyi kalite
  quality: 0.9       // JPEG kalitesi
});

console.log('✨ Sonuç:', result.uri);
```

## 💡 Tam Örnek

```typescript
import React, { useRef } from 'react';
import { View, TouchableOpacity, Text } from 'react-native';
import { Camera } from 'react-native-vision-camera';
import { MultiFrameFusion } from 'react-native-multiframe-fusion';

export default function BurstCamera() {
  const camera = useRef<Camera>(null);

  const takeBurstPhoto = async () => {
    // 3 fotoğraf çek
    const frames = [];
    
    for (let i = 0; i < 3; i++) {
      const photo = await camera.current?.takePhoto();
      frames.push(`file://${photo.path}`);
      await new Promise(r => setTimeout(r, 100));
    }

    // Birleştir
    const result = await MultiFrameFusion.merge(frames, {
      method: 'fusion',
      format: 'jpeg',
      quality: 0.9
    });

    console.log('Optimize edilmiş fotoğraf:', result.uri);
    return result;
  };

  return (
    <View style={{ flex: 1 }}>
      <Camera
        ref={camera}
        style={{ flex: 1 }}
        device={...} 
        isActive={true}
        photo={true}
      />
      <TouchableOpacity onPress={takeBurstPhoto}>
        <Text>📸 Burst Çek</Text>
      </TouchableOpacity>
    </View>
  );
}
```

## 🎯 Farklı Senaryolar

### 🌙 Gece Fotoğrafı

```typescript
const result = await MultiFrameFusion.merge(frames, {
  method: 'median',  // Gürültü azaltma
  deghost: false     // Statik sahneler için
});
```

### 🌅 HDR Fotoğraf

```typescript
const result = await MultiFrameFusion.merge(frames, {
  method: 'exposure',  // Pozlama füzyonu
  alignmentMethod: 'feature'
});
```

### ⚡ Hızlı İşleme

```typescript
const result = await MultiFrameFusion.merge(frames, {
  method: 'average',  // En hızlı
  quality: 0.8
});
```

## 🔧 Ayarlar Rehberi

| Parametre | Değerler | Öneri |
|-----------|----------|-------|
| `method` | `average`, `median`, `exposure`, `fusion` | `fusion` (en iyi kalite) |
| `format` | `jpeg`, `png` | `jpeg` (daha küçük dosya) |
| `quality` | `0.0` - `1.0` | `0.9` (kalite/boyut dengesi) |
| `deghost` | `true`, `false` | `true` (hareketli nesneler için) |
| `alignmentMethod` | `ecc`, `feature`, `optical` | `ecc` (hız/kalite dengesi) |

## ⚠️ Sık Sorulan Sorular

### Kaç kare çekmeliyim?

**3 kare** ideal. Daha fazla kare = daha iyi gürültü azaltma ama daha yavaş.

### Hangi metodu kullanmalıyım?

- **Genel kullanım**: `fusion`
- **Gece/düşük ışık**: `median`
- **HDR efekti**: `exposure`
- **Hız öncelikli**: `average`

### Bellek hatası alıyorum?

```typescript
// Daha düşük kalite kullanın
const result = await MultiFrameFusion.merge(frames, {
  method: 'average',
  quality: 0.7
});

// Veya daha az kare çekin (2 yerine 3)
```

### Görüntüler hizalanmıyor?

```typescript
// Feature-based alignment kullanın
const result = await MultiFrameFusion.merge(frames, {
  alignmentMethod: 'feature',
  maxIterations: 100
});
```

## 📱 Platform Notları

### iOS

- ✅ CoreImage kullanır (yerleşik)
- ✅ Vision framework ile hizalama
- ✅ Minimum iOS 12.0

### Android

- ✅ OpenCV 4.8.0 kullanır
- ✅ İlk çalıştırmada ~500ms yükleme
- ✅ Minimum Android 5.0 (API 21)

## 🎉 Sonraki Adımlar

1. ✅ Kurulumu tamamladınız
2. ✅ İlk burst fotoğrafınızı çektiniz
3. 📖 [Detaylı dokümantasyon](./README.md)
4. 💡 [Kullanım örnekleri](./USAGE_GUIDE_TR.md)
5. 🔧 [Entegrasyon rehberi](./INTEGRATION_GUIDE.md)

---

**🚀 Şimdi harika fotoğraflar çekmeye başlayabilirsiniz!**
