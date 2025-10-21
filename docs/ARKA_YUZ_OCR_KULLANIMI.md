# Kimlik Kartı Arka Yüz OCR Kullanım Kılavuzu

## 📋 Genel Bakış

Arka yüz OCR özelliği, Türk kimlik kartlarının arka yüzündeki MRZ (Machine Readable Zone) bölgesini okumak için optimize edilmiştir. MRZ, kartın altında bulunan iki satırlık özel formatlı metin bölgesidir ve yüksek hassasiyetle okunabilir.

## 🎯 Özellikler

### Arka Yüzden Çıkarılan Bilgiler

**MRZ'den (Üç Satır):**
- ✅ **TC Kimlik No**: 11 haneli T.C. kimlik numarası
- ✅ **Belge Numarası**: 9 haneli belge numarası (MRZ'den)
- ✅ **Ad**: Kişinin adı
- ✅ **Soyad**: Kişinin soyadı
- ✅ **Doğum Tarihi**: DD.MM.YYYY formatında
- ✅ **Son Geçerlilik Tarihi**: Kartın geçerlilik bitiş tarihi
- ✅ **Cinsiyet**: Erkek veya Kadın
- ✅ **Uyruk**: Vatandaşlık bilgisi (TUR)

**MRZ Üzerindeki Ek Alanlar:**
- ✅ **Anne Adı**: Kişinin anne adı
- ✅ **Baba Adı**: Kişinin baba adı
- ✅ **Veren Makam**: Kimlik kartını veren kurum/şehir

## 🚀 Kullanım

### Temel Kullanım

```javascript
import OCRReaderModule from './modules/ocr/OCRReaderModule';

// OCR modülünü başlat
const ocrReader = new OCRReaderModule();

// Arka yüz tarama için başlat
ocrReader.startOCR({
  cardSide: 'back',  // 'front' veya 'back'
  language: 'tr',
  quality: 'high'
});

// Sonuç callback'i
ocrReader.onOCRResult((result) => {
  console.log('OCR Sonucu:', result);
  console.log('Çıkarılan Alanlar:', result.fields);
  console.log('Güven Skoru:', result.confidence);
});

// Görüntü işle
await ocrReader.processImage(imagePath);
```

### Demo Ekran ile Kullanım

```javascript
import OCRDemoScreen from './examples/OCRDemoScreen';

// Demo ekranı kullan
// 1. "Kart Yüzü" bölümünden "Arka Yüz (MRZ)" seçin
// 2. "OCR Başlat" butonuna tıklayın
// 3. "Kamera Aç" ile fotoğraf çekin
// 4. Sistem otomatik olarak MRZ bölgesini okuyacak
```

## 📸 Tarama İpuçları

### Optimal Tarama Koşulları

1. **Işık**: Kartı iyi aydınlatılmış bir ortamda tutun
2. **Açı**: Kartı düz bir yüzeyde, kameraya paralel tutun
3. **Mesafe**: Kamerayı karttan 15-20 cm uzakta tutun
4. **Odak**: MRZ bölgesinin (alt iki satır) net görünmesini sağlayın
5. **Sabitlik**: Fotoğraf çekerken eli sabit tutun

### MRZ Bölgesi Nerede?

```
┌─────────────────────────────────────┐
│                                     │
│        [KART BİLGİLERİ]            │
│                                     │
│  Barkod, TC No, Adres vb.          │
│                                     │
├─────────────────────────────────────┤
│ Anne Adı / Mother's Name          │ ← Ek Alan 1
│ FATMA                               │
├─────────────────────────────────────┤
│ Baba Adı / Father's Name          │ ← Ek Alan 2
│ MEHMET                              │
├─────────────────────────────────────┤
│ Veren Makam / Issued By            │ ← Ek Alan 3
│ İSTANBUL / KARTAL                   │
├─────────────────────────────────────┤
│ I<TURA44D64618<1<10945153402<<<<< │ ← MRZ Satır 1
│ 9909270M3504062TUR<<<<<<<<<<<4    │ ← MRZ Satır 2  
│ AYKUT<<ATABEY<<<<<<<<<<<<<<<<<    │ ← MRZ Satır 3
└─────────────────────────────────────┘
```

**MRZ Formatı (3 Satır):**

**Satır 1:** Belge Kodu + Ülke + Belge No + Check + < + TC No + <<<
- Pozisyon 1-2: `I<` (Belge kodu)
- Pozisyon 3-5: `TUR` (Ülke kodu)
- Pozisyon 6-14: Belge numarası (örn: A44D64618)
- Pozisyon 15: Check digit (belge no için)
- Pozisyon 16: `<` (Ayırıcı)
- Pozisyon 17-27: TC Kimlik No (11 hane)
- Pozisyon 28-30: `<<<` (Ayırıcı)

**Satır 2:** Doğum Tarihi + Check + Cinsiyet + Geçerlilik + Check + Ülke + <<< + Birleşik Check
- Pozisyon 1-6: Doğum tarihi (YYMMDD)
- Pozisyon 7: Check digit (doğum tarihi)
- Pozisyon 8: Cinsiyet (M/F)
- Pozisyon 9-14: Geçerlilik tarihi (YYMMDD)
- Pozisyon 15: Check digit (geçerlilik)
- Pozisyon 16-18: `TUR` (Vatandaşlık)
- Pozisyon 19-29: `<<<<<<<<<<<` (Ayırıcı)
- Pozisyon 30: Birleşik check digit

**Satır 3:** Soyadı << İsim <<<<<<
- Soyadı ile isim arasında `<<` ayırıcı
- Kalan pozisyonlar `<` ile doldurulur

## 🔧 Teknik Detaylar

### İyileştirmeler

#### 1. Özel Image Preprocessing
- **Yüksek Çözünürlük**: MRZ için 2200x1400 optimizasyon
- **Kalite**: %98 JPEG kalitesi
- **Kontrast Artırma**: MRZ metninin daha net okunması için

#### 2. Gelişmiş MRZ Pattern Matching
- **Strict Pattern**: En doğru format için
- **Flexible Pattern**: OCR hatalarını tolere eder
- **Loose Pattern**: Çok bozuk görüntüler için son çare

#### 3. OCR Hata Düzeltme
```javascript
// Yaygın OCR hataları otomatik düzeltilir:
'O' → '0' (sıfır)
'I', 'l', '|' → 'I' (büyük i)
Fazla boşluklar kaldırılır
```

#### 4. Çoklu Deneme Stratejisi
```javascript
const strategies = [
  { quality: 100, maxWidth: 2400, maxHeight: 1600 }, // En yüksek kalite
  { quality: 98, maxWidth: 2200, maxHeight: 1400 },  // Alternatif
  { quality: 95, maxWidth: 2048, maxHeight: 1536 },  // Dengeli
  { quality: 100, maxWidth: 1920, maxHeight: 1280 }, // Standart
];
```

### Güven Skorları

- **%90-100**: Mükemmel - Tüm alanlar doğru okundu
- **%70-89**: İyi - Çoğu alan doğru, küçük hatalar olabilir
- **%60-69**: Kabul Edilebilir - Arka yüz için minimum eşik
- **<%60**: Yetersiz - Yeniden tarama önerilir

## 🐛 Sorun Giderme

### Problem: MRZ Okunamıyor

**Çözümler:**
1. ✅ Kartın arka yüzünü taradığınızdan emin olun
2. ✅ MRZ bölgesinin (alt iki satır) çerçeve içinde olduğundan emin olun
3. ✅ Işıklandırmayı artırın
4. ✅ Kartı düz bir yüzeye koyun
5. ✅ Parlaklık/yansımadan kaçının
6. ✅ Yeni bir kart kullanmayı deneyin (eski kartlarda MRZ aşınmış olabilir)

### Problem: Düşük Güven Skoru (%60'ın altı)

**Çözümler:**
1. ✅ Kameranın odaklandığından emin olun
2. ✅ Kartı temizleyin (parmak izi, kir vb.)
3. ✅ Farklı ışık koşullarında deneyin
4. ✅ Kamera çözünürlüğünü kontrol edin
5. ✅ Eli sabit tutun veya dayanak kullanın

### Problem: Yanlış Tarih Formatı

**Neden:** MRZ'deki tarih formatı YYMMDD şeklindedir ve bazı OCR hataları oluşabilir

**Çözüm:** Sistem otomatik olarak tarihleri DD.MM.YYYY formatına çevirir, ancak hata varsa loglara bakın:
```javascript
console.log('[MRZ] Invalid date components:', { yy, mm, dd });
```

## 📊 Performans Karşılaştırması

| Özellik | Ön Yüz | Arka Yüz (MRZ) |
|---------|---------|----------------|
| Çözünürlük | 1920x1080 | 2200x1400 |
| JPEG Kalite | %90-95 | %98-100 |
| Deneme Sayısı | 3 | 4 |
| Min. Güven | %70 | %60 |
| İşlem Süresi | ~2-3 sn | ~3-4 sn |

## 🔐 Güvenlik Notları

1. **Veri Doğrulama**: MRZ'den okunan TC No otomatik olarak doğrulanır
2. **Check Digit**: MRZ'deki kontrol haneleri hesaplanır
3. **Format Validation**: Tarih, cinsiyet ve uyruk formatları kontrol edilir

## 📝 Örnek Sonuç

```javascript
{
  success: true,
  text: "Anne Adı: FATMA\nBaba Adı: MEHMET\nVeren Makam: İSTANBUL/KARTAL\nI<TURA44D64618<1<10945153402<<<\n9909270M3504062TUR<<<<<<<<<<<4\nAYKUT<<ATABEY<<<<<<<<<<<<<<<<<",
  fields: {
    // MRZ Bilgileri
    tcNo: "10945153402",
    documentNo: "A44D64618",
    name: "ATABEY",
    surname: "AYKUT",
    birthDate: "27.09.1999",
    validUntil: "06.04.2035",
    gender: "Erkek",
    nationality: "TUR",
    source: "MRZ (3-Line)",
    checkDigitsValid: true,
    
    // Ek Bilgiler (MRZ Üzerinde)
    motherName: "FATMA",
    fatherName: "MEHMET",
    issuedBy: "İSTANBUL/KARTAL"
  },
  confidence: 92,
  timestamp: "2025-10-21T12:00:00.000Z",
  cardType: "tc_kimlik"
}
```

### Check Digit Doğrulama

MRZ'deki her check digit ICAO 7-3-1 algoritması ile doğrulanır:
- **Belge No Check**: Pozisyon 15
- **Doğum Tarihi Check**: Pozisyon 7 (Satır 2)
- **Geçerlilik Check**: Pozisyon 15 (Satır 2)
- **Birleşik Check**: Pozisyon 30 (Satır 2)

## 🔄 Versiyon Geçmişi

### v1.2.0 (Mevcut - Kritik Güncelleme)
- ✅ **3 satırlı MRZ desteği** (ICAO standardına uygun)
- ✅ Check digit doğrulama (7-3-1 algoritması)
- ✅ Belge numarası çıkarma
- ✅ Gelişmiş 3-satır pattern matching
- ✅ Her satır için ayrı validasyon

### v1.1.0
- ✅ Arka yüz MRZ okuma desteği
- ✅ Özel image preprocessing
- ✅ Gelişmiş pattern matching
- ✅ Çoklu deneme stratejisi
- ✅ UI'da ön/arka yüz seçimi

### v1.0.0
- ⚠️ Sadece ön yüz desteği
- ⚠️ Temel OCR
- ⚠️ Tek deneme stratejisi

## 📞 Destek

Sorunlarınız için:
1. Loglara bakın: `console.log('[MRZ] ...')`
2. Güven skorunu kontrol edin
3. Test görüntülerini kaydedin ve inceleyin
4. GitHub Issues'a rapor edin

## 🎓 Ek Kaynaklar

- [MRZ Standardı (ICAO Doc 9303)](https://www.icao.int/publications/pages/publication.aspx?docnum=9303)
- [OCR Best Practices](./OCR_BEST_PRACTICES.md)
- [API Documentation](../API_DOCUMENTATION.md)
