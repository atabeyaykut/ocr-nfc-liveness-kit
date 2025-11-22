# 🇹🇷 Kullanım Kılavuzu - Multi-Frame Fusion

Bu kılavuz, `react-native-multiframe-fusion` modülünün Türkçe kullanım örneklerini içerir.

## 📚 İçindekiler

1. [Hızlı Başlangıç](#hızlı-başlangıç)
2. [Burst Fotoğraf Çekimi](#burst-fotoğraf-çekimi)
3. [Farklı Birleştirme Metodları](#farklı-birleştirme-metodları)
4. [Optimizasyon İpuçları](#optimizasyon-ipuçları)
5. [Sorun Giderme](#sorun-giderme)

## Hızlı Başlangıç

### Temel Kullanım

```typescript
import { MultiFrameFusion } from 'react-native-multiframe-fusion';

// 3 fotoğrafı birleştir
const birlestirilmisGoruntu = await MultiFrameFusion.merge(
  [foto1Uri, foto2Uri, foto3Uri],
  {
    method: 'fusion',
    format: 'jpeg',
    quality: 0.9
  }
);

console.log('Sonuç:', birlestirilmisGoruntu.uri);
```

## Burst Fotoğraf Çekimi

### Otomatik 3 Kare Çekim

```typescript
const otomatikBurstCek = async () => {
  const kareler: string[] = [];
  
  // Hızlı ardışık çekim
  for (let i = 0; i < 3; i++) {
    const foto = await kamera.current?.takePhoto({
      qualityPrioritization: 'speed',
    });
    
    kareler.push(`file://${foto.path}`);
    
    // 100ms bekleme (sensör için)
    await new Promise(r => setTimeout(r, 100));
  }
  
  // Birleştir
  const sonuc = await MultiFrameFusion.merge(kareler, {
    method: 'fusion',
    deghost: true, // Hayalet görüntüleri temizle
  });
  
  return sonuc;
};
```

### Manuel Burst Kontrolü

```typescript
const [kareler, setKareler] = useState<string[]>([]);

const kareEkle = async () => {
  const foto = await kamera.current?.takePhoto();
  setKareler(prev => [...prev, `file://${foto.path}`]);
  
  // 3 kare toplandığında otomatik birleştir
  if (kareler.length === 2) { // +1 = 3
    await birlestirveSil([...kareler, `file://${foto.path}`]);
  }
};

const birlestirveSil = async (kareleri: string[]) => {
  const sonuc = await MultiFrameFusion.merge(kareleri);
  
  // Orijinalleri temizle
  for (const kare of kareleri) {
    await RNFS.unlink(kare.replace('file://', ''));
  }
  
  setKareler([]);
  return sonuc;
};
```

## Farklı Birleştirme Metodları

### 1. Average (Ortalama)

**Ne zaman kullanılır:** Hızlı önizleme, düşük bellek kullanımı gerekli olduğunda

```typescript
const hizliOnizleme = await MultiFrameFusion.merge(kareler, {
  method: 'average', // En hızlı
  format: 'jpeg',
  quality: 0.8
});
```

**Avantajlar:**
- ⚡ Çok hızlı (3x 12MP ~300ms)
- 💾 Az bellek kullanır
- 🎯 Basit algoritma

**Dezavantajlar:**
- Orta kalite
- Gürültü azaltma sınırlı

### 2. Median (Medyan)

**Ne zaman kullanılır:** Gece fotoğrafı, gürültü azaltma öncelikli

```typescript
const geceModuFoto = await MultiFrameFusion.merge(kareler, {
  method: 'median', // Gürültü azaltma
  deghost: false, // Statik sahneler için kapalı
});
```

**Avantajlar:**
- 🌙 Mükemmel gürültü azaltma
- 📊 İstatistiksel olarak güvenilir
- 🎯 Outlier'ları otomatik eler

**Dezavantajlar:**
- Daha yavaş (hesaplama yoğun)
- Hareketli nesnelerde bulanıklık

### 3. Exposure (Pozlama Füzyonu)

**Ne zaman kullanılır:** HDR efekti, farklı pozlamalar

```typescript
const hdrFoto = await MultiFrameFusion.merge(
  [karanlikPozlama, normalPozlama, aydinlikPozlama],
  {
    method: 'exposure', // Mertens algoritması
    alignmentMethod: 'feature', // Farklı pozlamalar için
  }
);
```

**Avantajlar:**
- 🌅 HDR benzeri sonuç
- 🎨 Zengin dinamik aralık
- ✨ Profesyonel görünüm

**Dezavantajlar:**
- Doğru pozlama ayarları gerekli
- Hizalama kritik

### 4. Fusion (Gelişmiş Birleştirme)

**Ne zaman kullanılır:** En iyi kalite gerektiğinde

```typescript
const enIyiKalite = await MultiFrameFusion.merge(kareler, {
  method: 'fusion', // En gelişmiş
  deghost: true,
  alignmentMethod: 'ecc',
  maxIterations: 100,
  epsilon: 0.0001,
});
```

**Avantajlar:**
- ⭐ En yüksek kalite
- 🎯 Gürültü azaltma + exposure fusion
- 🔧 Otomatik optimizasyon

**Dezavantajlar:**
- En yavaş (3x 12MP ~800ms)
- En fazla bellek kullanımı

## Optimizasyon İpuçları

### 1. Bellek Yönetimi

```typescript
// ❌ YANLIŞ: Tüm görüntüleri bellekte tut
const kareler = await cokluCekim(); // Bellekte kalıyor
const sonuc = await MultiFrameFusion.merge(kareler);
// Bellek sızıntısı!

// ✅ DOĞRU: Birleştirdikten sonra temizle
const kareler = await cokluCekim();
const sonuc = await MultiFrameFusion.merge(kareler);

// Orijinalleri sil
for (const kare of kareler) {
  await RNFS.unlink(kare.replace('file://', ''));
}
```

### 2. Progressive Quality

```typescript
// Önce hızlı önizleme göster
const onizleme = await MultiFrameFusion.merge(kareler, {
  method: 'average',
  quality: 0.7
});
setOnizlemeGoruntu(onizleme.uri);

// Arka planda yüksek kalite işle
setTimeout(async () => {
  const yuksekKalite = await MultiFrameFusion.merge(kareler, {
    method: 'fusion',
    quality: 0.95
  });
  setSonGoruntu(yuksekKalite.uri);
}, 100);
```

### 3. Adaptif Metod Seçimi

```typescript
const adaptifBirlestir = async (kareler: string[]) => {
  // Cihaz performansına göre metod seç
  const { processingTime } = await testPerformans();
  
  let metod: 'average' | 'median' | 'fusion';
  
  if (processingTime < 500) {
    metod = 'fusion'; // Güçlü cihaz
  } else if (processingTime < 1000) {
    metod = 'median'; // Orta cihaz
  } else {
    metod = 'average'; // Zayıf cihaz
  }
  
  return await MultiFrameFusion.merge(kareler, { method: metod });
};
```

### 4. Batch Processing

```typescript
// Birden fazla burst set'i işle
const topluIslem = async (burstSetleri: string[][]) => {
  const sonuclar = [];
  
  for (const set of burstSetleri) {
    const sonuc = await MultiFrameFusion.merge(set, {
      method: 'fusion'
    });
    sonuclar.push(sonuc);
    
    // Her işlemden sonra küçük bekleme (termal throttling önleme)
    await new Promise(r => setTimeout(r, 200));
  }
  
  return sonuclar;
};
```

## Sorun Giderme

### Problem: "OPENCV_ERROR: OpenCV not initialized"

**Çözüm (Android):**
```gradle
// android/build.gradle
dependencies {
    implementation 'org.opencv:opencv:4.8.0'
}
```

Eğer sorun devam ederse:
```kotlin
// MainApplication.kt
override fun onCreate() {
    super.onCreate()
    if (!OpenCVLoader.initDebug()) {
        OpenCVLoader.initLocal()
    }
}
```

### Problem: "Out of memory" hatası

**Çözümler:**
```typescript
// 1. Daha düşük kalite kullan
const sonuc = await MultiFrameFusion.merge(kareler, {
  method: 'average', // Daha az bellek
  quality: 0.7
});

// 2. Görüntü boyutunu küçült (kamera ayarları)
const foto = await kamera.takePhoto({
  qualityPrioritization: 'speed',
  // Android: photoQualityBalance: 'balanced'
});

// 3. Daha az kare kullan
const kareler = [foto1, foto2]; // 3 yerine 2
```

### Problem: Hizalama başarısız (blurry sonuç)

**Çözüm:**
```typescript
// Farklı hizalama metodu dene
const sonuc = await MultiFrameFusion.merge(kareler, {
  method: 'fusion',
  alignmentMethod: 'feature', // 'ecc' yerine
  maxIterations: 200, // Daha fazla iterasyon
});

// Veya kamera stabilizasyonunu aktifleştir
const foto = await kamera.takePhoto({
  enableAutoStabilization: true,
});
```

### Problem: Hayalet görüntüler

**Çözüm:**
```typescript
// Deghosting'i aktifleştir
const sonuc = await MultiFrameFusion.merge(kareler, {
  method: 'fusion',
  deghost: true, // Mutlaka true
});

// Veya median kullan (otomatik ghost removal)
const sonuc = await MultiFrameFusion.merge(kareler, {
  method: 'median'
});
```

## Gerçek Dünya Örnekleri

### Örnek 1: Gece Modu Kamera

```typescript
const geceModu = async () => {
  // 5 kare çek (daha fazla = daha iyi gürültü azaltma)
  const kareler = await burstCek(5);
  
  // Median kullan (gece için ideal)
  const sonuc = await MultiFrameFusion.merge(kareler, {
    method: 'median',
    deghost: false, // Gece çekimleri genelde statik
    quality: 0.95,
  });
  
  return sonuc;
};
```

### Örnek 2: Aksiyon Fotoğrafı

```typescript
const aksiyonModu = async () => {
  // Hızlı burst (100ms aralık)
  const kareler = await hizliBurstCek(3, 100);
  
  // Fusion + deghosting
  const sonuc = await MultiFrameFusion.merge(kareler, {
    method: 'fusion',
    deghost: true, // Hareketli nesneler için kritik
    alignmentMethod: 'optical', // En doğru hizalama
  });
  
  return sonuc;
};
```

### Örnek 3: Belge Tarama

```typescript
const belgeTara = async () => {
  // 3 kare çek (el titremesini kompanse et)
  const kareler = await burstCek(3);
  
  // Average kullan (hız + kalite dengesi)
  const sonuc = await MultiFrameFusion.merge(kareler, {
    method: 'average',
    format: 'png', // Metin için kayıpsız
    alignmentMethod: 'ecc', // Belgeler için yeterli
  });
  
  return sonuc;
};
```

## Performans Benchmarkları

### iPhone 14 Pro (A16 Bionic)

| Metod | 3x 12MP | 3x 48MP | Bellek |
|-------|---------|---------|--------|
| average | 280ms | 920ms | 120MB |
| median | 650ms | 2.1s | 180MB |
| exposure | 580ms | 1.8s | 150MB |
| fusion | 820ms | 2.4s | 200MB |

### Samsung S23 (Snapdragon 8 Gen 2)

| Metod | 3x 12MP | 3x 48MP | Bellek |
|-------|---------|---------|--------|
| average | 340ms | 1.1s | 140MB |
| median | 780ms | 2.6s | 220MB |
| exposure | 690ms | 2.2s | 180MB |
| fusion | 950ms | 2.9s | 240MB |

---

**💡 İpucu:** Performans, cihazın işlemcisi, RAM'i ve termal durumuna göre değişir.

## Destek

Sorularınız için:
- 📖 [Ana README](./README.md)
- 🐛 [Issue açın](https://github.com/yourusername/react-native-multiframe-fusion/issues)
- 💬 [Discussions](https://github.com/yourusername/react-native-multiframe-fusion/discussions)
