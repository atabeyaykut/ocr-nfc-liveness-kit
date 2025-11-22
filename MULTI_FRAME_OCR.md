# Multi-Frame OCR Kullanımı

## 📸 Genel Bakış

Multi-frame OCR özelliği, ard arda 3 fotoğraf çekerek ve bunları birleştirerek daha yüksek kaliteli OCR sonuçları elde eder.

## ✨ Özellikler

- **Ard arda 3 fotoğraf** - 200ms aralıkla otomatik çekim
- **Akıllı kare seçimi** - En kaliteli kare otomatik seçilir
- **3-geçişli netleştirme** - Upscale → Sharpen → Optimize
- **Tek OCR işlemi** - Birleştirilmiş görüntü üzerinde tek okuma
- **Tam kart fotoğrafı** - Sadece MRZ değil, kartın tamamı işlenir

## 🚀 Kullanım

### 1. OCRCamera ile Otomatik Multi-Frame

```javascript
import OCRCamera from './modules/ocr/OCRCamera';

<OCRCamera
  multiFrameMode={true}  // Varsayılan: true
  frameCount={3}         // Varsayılan: 3
  guidanceText="Kartın tamamını çerçeve içine hizalayın"
  onImageCaptured={(data) => {
    if (data.type === 'multi-frame') {
      // data.frames = ['uri1', 'uri2', 'uri3']
      console.log('Captured frames:', data.frames.length);
    }
  }}
/>
```

### 2. OCRReaderModule ile İşleme

#### Tek Taraf - Multi-Frame
```javascript
const ocrModule = new OCRReaderModule({ 
  cardSide: 'back' 
});

// 3 fotoğraf array'i ile
const result = await ocrModule.processMultiFrameImage([
  'file:///path/frame1.jpg',
  'file:///path/frame2.jpg',
  'file:///path/frame3.jpg'
]);

console.log('Confidence:', result.confidence);
console.log('Fields:', result.fields);
```

#### Çift Taraf - Multi-Frame
```javascript
// Ön yüz için 3 fotoğraf
const frontFrames = ['uri1', 'uri2', 'uri3'];

// Arka yüz için 3 fotoğraf  
const backFrames = ['uri4', 'uri5', 'uri6'];

// Otomatik multi-frame birleştirme
const result = await ocrModule.processBothSides(
  frontFrames,  // Array veya tek string
  backFrames    // Array veya tek string
);

console.log('Merged data:', result.data);
```

## 🎯 İşlem Akışı

```
Kullanıcı Butona Tıklar
        ↓
┌─────────────────────┐
│  OCRCamera          │
│  - Frame 1/3 (flash)│
│  - 200ms bekleme    │
│  - Frame 2/3        │
│  - 200ms bekleme    │
│  - Frame 3/3        │
└─────────────────────┘
        ↓
┌─────────────────────┐
│ ImageProcessor      │
│ mergeMultipleFrames │
│  - En iyi kare seç  │
│  - Pass 1: 2400px   │
│  - Pass 2: Sharpen  │
│  - Pass 3: Optimize │
└─────────────────────┘
        ↓
┌─────────────────────┐
│ OCRReaderModule     │
│ processMultiFrame   │
│  - Tek OCR işlemi   │
│  - Field parsing    │
│  - Validation       │
└─────────────────────┘
        ↓
    Sonuç Döner
```

## 📊 Karşılaştırma

### Tek Fotoğraf
- ❌ Blur/titreme riski yüksek
- ❌ Düşük ışıkta kalite düşer
- ❌ Tek çekim şansı
- ⚡ Daha hızlı (1 fotoğraf)

### Multi-Frame (3 Fotoğraf)
- ✅ En iyi kare otomatik seçilir
- ✅ Blur/gürültü azaltma
- ✅ Daha yüksek accuracy
- ✅ 3 geçişli netleştirme
- ⏱️ Biraz daha yavaş (~1.5sn)

## 🔧 Ayarlar

### OCRCamera Props

| Prop | Tip | Varsayılan | Açıklama |
|------|-----|------------|----------|
| `multiFrameMode` | boolean | `true` | Multi-frame özelliğini aktif eder |
| `frameCount` | number | `3` | Çekilecek fotoğraf sayısı |
| `guidanceText` | string | `'Kartın tamamını...'` | Üstte gösterilen metin |
| `onImageCaptured` | function | - | Fotoğraflar çekildiğinde callback |

### ImageProcessor Metotları

```javascript
// En iyi kareyi seç (dosya boyutuna göre)
const bestFrame = await ImageProcessor.selectBestFrame(frames);

// Tüm kareleri birleştir ve netleştir
const merged = await ImageProcessor.mergeMultipleFrames(frames);
```

## 💡 Best Practices

### 1. Arka Yüz için Multi-Frame Zorunlu
```javascript
// MRZ için daha yüksek kalite gerekir
ocrModule.options.cardSide = 'back';
const result = await ocrModule.processMultiFrameImage(backFrames);
```

### 2. Ön Yüz için İsteğe Bağlı
```javascript
// Ön yüz zaten okunması daha kolay
// Ama multi-frame daha iyi sonuç verir
const result = await ocrModule.processMultiFrameImage(frontFrames);
```

### 3. Hata Yönetimi
```javascript
try {
  const result = await ocrModule.processMultiFrameImage(frames);
  
  if (result.confidence < 70) {
    // Düşük güven - tekrar dene
    console.warn('Low confidence, retry recommended');
  }
} catch (error) {
  // Fallback: Tek fotoğraf kullan
  console.error('Multi-frame failed, using single frame');
  const result = await ocrModule.processImage(frames[0]);
}
```

## 📈 Performans

- **3 fotoğraf çekme**: ~600ms (3x200ms aralık)
- **Frame birleştirme**: ~500-800ms (3 geçiş)
- **OCR işlemi**: ~1000-2000ms (ML Kit)
- **Toplam**: ~2-3.5 saniye

### Optimizasyon İpuçları

1. **Paralel işleme**: Ön ve arka yüzü aynı anda işle
2. **Cleanup**: Geçici dosyaları hemen temizle
3. **Kalite ayarı**: `frameCount` azaltılabilir (2 yeterli olabilir)

## 🎨 UI/UX

### Kamera Ekranı
- ✅ "Fotoğraf 1/3 çekiliyor..." göstergesi
- ✅ Frame sayacı badge (📸 1/3)
- ✅ "3 fotoğraf çekilecek" bilgilendirme

### İşleme Ekranı
- ✅ "3 fotoğraf birleştiriliyor..." mesajı
- ✅ Progress bar/indicator
- ✅ İşlem adımları gösterimi

## 🔍 Debugging

```javascript
// Detaylı log için
console.log('[OCR] Frame paths:', frames);
console.log('[OCR] Merging frames...');

// ImageProcessor içinde
Logger.info('Processing N frames for enhanced OCR', { count: frames.length });
Logger.info('Best frame selected', { index, size });
Logger.info('Multi-frame enhancement completed', { outputUri });
```

## ⚙️ Gelişmiş Kullanım

### Custom Frame Count
```javascript
<OCRCamera
  frameCount={5}  // 5 fotoğraf çek
  multiFrameMode={true}
/>
```

### Conditional Multi-Frame
```javascript
const useMultiFrame = cardSide === 'back'; // Sadece arka yüzde

<OCRCamera
  multiFrameMode={useMultiFrame}
  frameCount={useMultiFrame ? 3 : 1}
/>
```

### Manual Frame Processing
```javascript
// Kendi frame selection algoritman
const frames = captureData.frames;
const customBestFrame = selectBySharpness(frames); // Custom logic
const result = await ocrModule.processImage(customBestFrame);
```

## 📝 Notlar

1. **Multi-frame varsayılan olarak açık** - Tüm OCR işlemleri multi-frame kullanır
2. **Tek fotoğraf da desteklenir** - Geriye dönük uyumluluk için
3. **Arka yüz tam kart okur** - Sadece MRZ değil, tüm alan işlenir
4. **Demo uygulaması yok** - Direkt entegre çalışır

## 🚨 Sorun Giderme

### Frame birleştirme başarısız olursa
- Otomatik olarak ilk frame'e fallback yapılır
- Hata loglanır ama işlem devam eder

### OCR sonucu düşük güvenlikteyse
- Kullanıcıya tekrar çekme önerisi göster
- `result.confidence` değerini kontrol et

### Bellek problemi olursa
- `ImageProcessor.cleanupTempPath()` çağrılır
- Geçici dosyalar otomatik temizlenir

## 📦 Bağımlılıklar

- `react-native-vision-camera` - Kamera erişimi
- `@bam.tech/react-native-image-resizer` - Görüntü işleme
- `@react-native-ml-kit/text-recognition` - OCR engine
- `react-native-fs` - Dosya sistemi işlemleri
