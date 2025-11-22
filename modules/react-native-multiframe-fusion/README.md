# react-native-multiframe-fusion

🚀 **Production-ready React Native module for multi-frame image fusion**

Google HDR+ ve Apple Photonic Engine benzeri gelişmiş çoklu kare birleştirme sistemi. 3 veya daha fazla fotoğrafı hizalayıp birleştirerek optimize edilmiş tek bir görüntü üretir.

## ✨ Özellikler

- 🎯 **ECC tabanlı görüntü hizalama** - Yüksek doğrulukta kare hizalama
- 🔍 **Feature-based alignment** - ORB/AKAZE özellik noktası eşleştirme
- 👻 **Ghost removal** - Hareket tespiti ve hayalet görüntü temizleme
- 🌅 **Exposure fusion** - Mertens algoritması ile maruz kalma birleştirme
- 📊 **Median filtering** - Gürültü azaltma için medyan filtreleme
- ⚡ **Async processing** - Ana thread'i bloke etmeyen arka plan işleme
- 🎨 **CoreImage (iOS)** - Apple'ın yüksek performanslı görüntü işleme
- 🔧 **OpenCV (Android)** - Endüstri standardı bilgisayarlı görü kütüphanesi

## 📦 Kurulum

```bash
npm install react-native-multiframe-fusion
# veya
yarn add react-native-multiframe-fusion
```

### iOS Ek Adımlar

```bash
cd ios && pod install
```

### Android Ek Adımlar

OpenCV otomatik olarak Gradle dependency olarak eklenir. Ek bir işlem gerekmez.

## 🚀 Kullanım

### Temel Kullanım

```typescript
import { MultiFrameFusion } from 'react-native-multiframe-fusion';

// 3 fotoğrafı birleştir
const result = await MultiFrameFusion.merge(
  [
    'file:///path/to/image1.jpg',
    'file:///path/to/image2.jpg',
    'file:///path/to/image3.jpg'
  ],
  {
    method: 'fusion',
    format: 'jpeg',
    quality: 0.9
  }
);

console.log('Birleştirilmiş görüntü:', result.uri);
console.log('Boyutlar:', result.width, 'x', result.height);
console.log('İşlem süresi:', result.processingTime, 'ms');
```

### Gelişmiş Kullanım

```typescript
import { MultiFrameFusion, FusionOptions } from 'react-native-multiframe-fusion';

const options: FusionOptions = {
  method: 'exposure',          // 'average' | 'median' | 'exposure' | 'fusion'
  format: 'jpeg',              // 'jpeg' | 'png'
  quality: 0.95,               // 0.0 - 1.0 (sadece JPEG için)
  deghost: true,               // Hayalet görüntü temizlemeyi aktifleştir
  alignmentMethod: 'ecc',      // 'ecc' | 'feature' | 'optical'
  maxIterations: 100,          // Maksimum hizalama iterasyonu
  epsilon: 0.0001              // Hizalama hassasiyeti
};

const result = await MultiFrameFusion.merge(imageUris, options);
```

### Burst Kamera ile Kullanım

```typescript
import { Camera } from 'react-native-vision-camera';
import { MultiFrameFusion } from 'react-native-multiframe-fusion';

const BurstCaptureScreen = () => {
  const camera = useRef<Camera>(null);
  const [capturedImages, setCapturedImages] = useState<string[]>([]);

  const captureBurst = async () => {
    const images: string[] = [];
    
    // 3 fotoğraf çek (küçük aralıklarla)
    for (let i = 0; i < 3; i++) {
      const photo = await camera.current?.takePhoto({
        qualityPrioritization: 'speed',
        enableAutoStabilization: true,
      });
      
      if (photo) {
        images.push(`file://${photo.path}`);
      }
      
      // Küçük bir bekleme (opsiyonel)
      await new Promise(resolve => setTimeout(resolve, 100));
    }
    
    setCapturedImages(images);
    
    // Görüntüleri birleştir
    const result = await MultiFrameFusion.merge(images, {
      method: 'fusion',
      format: 'jpeg',
      quality: 0.92,
      deghost: true,
      alignmentMethod: 'ecc'
    });
    
    console.log('✨ Optimize edilmiş görüntü:', result.uri);
    
    // Orijinal görüntüleri temizle (opsiyonel)
    images.forEach(uri => {
      // RNFS.unlink(uri.replace('file://', ''))
    });
    
    return result;
  };

  return (
    <View style={styles.container}>
      <Camera
        ref={camera}
        style={StyleSheet.absoluteFill}
        device={device}
        isActive={true}
        photo={true}
      />
      <TouchableOpacity onPress={captureBurst}>
        <Text>📸 Burst Çek (3 Kare)</Text>
      </TouchableOpacity>
    </View>
  );
};
```

### Base64 Desteği

```typescript
const result = await MultiFrameFusion.merge(
  [
    'data:image/jpeg;base64,/9j/4AAQSkZJRg...',
    'data:image/jpeg;base64,/9j/4AAQSkZJRg...',
    'data:image/jpeg;base64,/9j/4AAQSkZJRg...'
  ],
  { method: 'median' }
);
```

### Cihaz Yeteneklerini Kontrol Etme

```typescript
// Destek kontrolü
const isSupported = await MultiFrameFusion.isSupported();
console.log('Multi-frame fusion destekleniyor mu?', isSupported);

// Yetenekleri öğren
const capabilities = await MultiFrameFusion.getCapabilities();
console.log('Desteklenen metodlar:', capabilities.supportedMethods);
console.log('Desteklenen formatlar:', capabilities.supportedFormats);
console.log('Maksimum görüntü boyutu:', capabilities.maxImageSize);
console.log('OpenCV mevcut mu?', capabilities.hasOpenCV);
console.log('CoreImage mevcut mu?', capabilities.hasCoreImage);
```

## 📖 API Referansı

### `MultiFrameFusion.merge(imageUris, options)`

Ana birleştirme fonksiyonu.

**Parametreler:**

- `imageUris` (string[]): Birleştirilecek görüntü URI'ları
  - `file://` - Dosya yolu
  - `content://` - Android content URI (sadece Android)
  - `data:image/...;base64,` - Base64 encoded görüntü

- `options` (FusionOptions): Birleştirme seçenekleri
  - `method`: Birleştirme metodu
    - `'average'`: Basit ortalama (hızlı, düşük kalite)
    - `'median'`: Medyan değer (gürültü azaltma için ideal)
    - `'exposure'`: Exposure fusion (HDR benzeri)
    - `'fusion'`: Gelişmiş birleştirme (en iyi kalite)
  - `format`: Çıktı formatı (`'jpeg'` | `'png'`)
  - `quality`: JPEG kalitesi (0.0 - 1.0)
  - `deghost`: Hayalet görüntü temizleme (boolean)
  - `alignmentMethod`: Hizalama metodu
    - `'ecc'`: ECC tabanlı (hızlı, global hizalama)
    - `'feature'`: Özellik tabanlı (daha robust)
    - `'optical'`: Optik akış (en doğru, yavaş)
  - `maxIterations`: Maksimum hizalama iterasyonu
  - `epsilon`: Hizalama hassasiyeti

**Dönen Değer:**

```typescript
{
  uri: string;           // Çıktı görüntüsünün URI'ı
  width: number;         // Genişlik (piksel)
  height: number;        // Yükseklik (piksel)
  fileSize?: number;     // Dosya boyutu (byte)
  processingTime?: number; // İşlem süresi (ms)
}
```

## 🎯 Metodlar Karşılaştırması

| Metod | Hız | Kalite | Gürültü Azaltma | Kullanım Alanı |
|-------|-----|--------|-----------------|----------------|
| `average` | ⚡⚡⚡ | ⭐⭐ | ⭐⭐ | Hızlı önizleme |
| `median` | ⚡⚡ | ⭐⭐⭐ | ⭐⭐⭐⭐ | Gürültü azaltma |
| `exposure` | ⚡⚡ | ⭐⭐⭐⭐ | ⭐⭐⭐ | HDR benzeri |
| `fusion` | ⚡ | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | En iyi kalite |

## 🔧 Platform Spesifik Detaylar

### iOS

- **Framework**: CoreImage + Vision
- **Alignment**: VNTranslationalImageRegistrationRequest
- **Fusion**: Custom CIFilter pipeline
- **Min iOS**: 12.0+

### Android

- **Library**: OpenCV 4.8.0
- **Alignment**: ECC, ORB/AKAZE features
- **Fusion**: Mertens exposure fusion
- **Min SDK**: 21 (Android 5.0)

## ⚡ Performans

| Cihaz | 3x 12MP | 3x 48MP | İşlemci |
|-------|---------|---------|---------|
| iPhone 14 Pro | ~800ms | ~2.1s | A16 Bionic |
| iPhone 12 | ~1.2s | ~3.4s | A14 Bionic |
| Samsung S23 | ~950ms | ~2.5s | Snapdragon 8 Gen 2 |
| Pixel 7 | ~1.1s | ~2.8s | Tensor G2 |

*Benchmark: `fusion` metodu, deghosting aktif, ECC alignment*

## 🎨 Örnek Senaryolar

### 1. Gece Fotoğrafçılığı
```typescript
// Gürültüyü azaltmak için median kullan
const result = await MultiFrameFusion.merge(nightImages, {
  method: 'median',
  deghost: true
});
```

### 2. HDR Fotoğraf
```typescript
// Farklı pozlamalardan HDR oluştur
const result = await MultiFrameFusion.merge(bracketedImages, {
  method: 'exposure',
  alignmentMethod: 'feature' // Çünkü pozlamalar çok farklı
});
```

### 3. Hareketli Nesneler
```typescript
// Ghost removal ile hareketli nesneleri temizle
const result = await MultiFrameFusion.merge(actionImages, {
  method: 'fusion',
  deghost: true,
  alignmentMethod: 'optical'
});
```

## ⚠️ Bilinen Kısıtlamalar

1. **Bellek**: Çok yüksek çözünürlüklü görüntüler (>48MP) bellek sorunlarına yol açabilir
2. **Hizalama**: Çok büyük kamera hareketi hizalama başarısızlığına neden olabilir
3. **iOS Median**: iOS'ta tam median implementasyonu performans nedeniyle yaklaşıktır
4. **Android OpenCV**: İlk çalıştırmada OpenCV yükleme ~500ms ekler

## 🐛 Hata Ayıklama

```typescript
try {
  const result = await MultiFrameFusion.merge(images, options);
} catch (error) {
  console.error('Fusion hatası:', error);
  
  // Olası hatalar:
  // - OPENCV_ERROR: OpenCV başlatılamadı (Android)
  // - IMAGE_LOAD_ERROR: Görüntüler yüklenemedi
  // - FUSION_ERROR: Birleştirme başarısız
}
```

## 📝 Lisans

MIT

## 🤝 Katkıda Bulunma

Pull request'ler memnuniyetle karşılanır!

1. Fork edin
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Commit edin (`git commit -m 'feat: Add amazing feature'`)
4. Push edin (`git push origin feature/amazing-feature`)
5. Pull Request açın

## 💡 Gelecek Özellikler

- [ ] Super resolution desteği
- [ ] Video frame stabilization
- [ ] Machine learning tabanlı deghosting
- [ ] RAW görüntü desteği
- [ ] Batch processing API
- [ ] Custom kernel desteği

## 📧 İletişim

Sorularınız için issue açabilirsiniz.

---

**⭐ Projeyi beğendiyseniz yıldız vermeyi unutmayın!**
