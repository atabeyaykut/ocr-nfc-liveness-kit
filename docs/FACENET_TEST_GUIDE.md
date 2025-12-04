# FaceNet Test Rehberi

> **Tarih:** 2025-12-04  
> **Durum:** Test için hazır ✅  
> **Commits:** 6f47373a, 4bc7b9e7, e3672032

---

## 🚀 Hızlı Test

```bash
# 1. Rebuild
npm run android

# 2. NFC Okuma Yap
# 3. Liveness Test Başlat
# 4. Konsolu İzle
```

---

## ✅ Beklenen Başarılı Loglar

### 1. Model İnitialization

```
[FaceRecognition] Initializing ONNX session...
[FaceRecognition] Model file size: 87.02MB
[FaceRecognition] 📋 Model metadata:
  Input name: image_input
  Output name: Bottleneck_BatchNorm
  Total inputs: 1
  Total outputs: 1
  Expected input shape: [1, 160, 160, 3] (NHWC)  ✅
  Expected output shape: [1, 128] (embedding)   ✅
[FaceRecognition] ✅ ONNX session initialized successfully
```

**Kontrol:**
- ✅ Model yüklendi
- ✅ Input shape NHWC
- ✅ Output shape 128

---

### 2. Reference Photo (NFC) Processing

```
[FaceRecognition] Preprocessing image...
[FaceRecognition] Original image: 240x320
[FaceRecognition] Face bbox (raw): 203x199 at (21, 59)
[FaceRecognition] ✂️ Cropping face region...
[FaceRecognition] Crop params: x=0, y=20, w=283, h=277
[FaceRecognition] Safe crop: x=0, y=20, w=240, h=277
[FaceRecognition] ✅ Face cropped: 240x277

[FaceRecognition] Resizing to 160x160...
[FaceRecognition] ✅ Decoded: 160x160, 102400 bytes

[FaceRecognition] 🔢 Converting to RGB Float32Array (NHWC format)...
[FaceRecognition] ✅ Preprocessing complete
[FaceRecognition] Output shape: [1, 160, 160, 3] (NHWC)    ✅
[FaceRecognition] Output size: 76800 floats (300.0KB)
```

**Kontrol:**
- ✅ Bbox in bounds (no scaling needed)
- ✅ Face cropped correctly
- ✅ NHWC format
- ✅ 76800 floats (160×160×3)

---

### 3. Reference Embedding Extraction

```
[FaceRecognition] Extracting face embedding...

[FaceRecognition] 📊 Input tensor created:
  Shape: [1, 160, 160, 3]   ✅
  Type: float32
  Data size: 76800 floats

[FaceRecognition] 🧠 Running ONNX inference...
  Input name: 'image_input'

[FaceRecognition] 📊 Output tensor:
  Shape: [1, 128]           ✅
  Type: float32
  Embedding size: 128 dimensions  ✅

[FaceRecognition] ✅ Embedding extracted successfully
```

**Kontrol:**
- ✅ Input tensor correct
- ✅ Output 128-dim (not 512)
- ✅ No warnings about embedding size

---

### 4. Live Photo Processing (CRITICAL!)

```
[FaceRecognition] Preprocessing image...
[FaceRecognition] Original image: 240x320
[FaceRecognition] Face bbox (raw): 899x884 at (492, 986)
[FaceRecognition] ⚠️ Bbox out of bounds, scaling by 0.157  ✅
[FaceRecognition] Scaled bbox: 141x138 at (77, 154)      ✅
[FaceRecognition] ✂️ Cropping face region...
[FaceRecognition] Crop params: x=49, y=126, w=197, h=193
[FaceRecognition] Safe crop: x=49, y=126, w=191, h=194
[FaceRecognition] ✅ Face cropped: 191x194                ✅

[FaceRecognition] Resizing to 160x160...
[FaceRecognition] ✅ Decoded: 160x160, 102400 bytes

[FaceRecognition] Output shape: [1, 160, 160, 3] (NHWC)   ✅
```

**Kontrol:**
- ✅ **Bbox scaling detected and applied!**
- ✅ Scaled bbox değerleri mantıklı (görüntü içinde)
- ✅ Face cropped (not full image)
- ✅ NHWC format

---

### 5. Face Comparison

```
[LivenessModule] 🤖 Using FaceNet ML-based comparison...
[FaceRecognition] Comparing faces...

[FaceRecognition] Extracting face embedding...  (reference)
[FaceRecognition] ✅ Embedding extracted successfully

[FaceRecognition] Extracting face embedding...  (live)
[FaceRecognition] ✅ Embedding extracted successfully

[FaceRecognition] Calculating cosine similarity...
[FaceRecognition] Similarity: 0.8734 (87.34%)   ✅

[LivenessModule] 📊 Similarity: 87.34%
[LivenessModule] 🎯 Threshold: 70%
[LivenessModule] ✅ Match: YES
```

**Kontrol:**
- ✅ İki embedding başarıyla extract edildi
- ✅ Similarity %80-95 aralığında
- ✅ Match: YES

---

## ❌ Olmaması Gereken Hatalar

### 1. ONNX Format Hatası (ÇÖZÜLDÜ)

```
❌ ERROR: ORT_INVALID_ARGUMENT
❌ Got invalid dimensions for input: image_input
❌   index: 1 Got: 3 Expected: 160
❌   index: 3 Got: 160 Expected: 3
```

**Artık bu hata OLMAMALI!**  
Eğer görüyorsan: NHWC fix doğru uygulanmamış.

---

### 2. Embedding Size Warning (ÇÖZÜLDÜ)

```
❌ WARN: Unexpected embedding size: 128, expected 512
```

**Artık bu warning OLMAMALI!**  
Eğer görüyorsan: EMBEDDING_SIZE güncellemesi uygulanmamış.

---

### 3. Wrong Crop Region (ÇÖZÜLDÜ)

```
❌ Face bbox: 899x884 at (492, 986)
❌ Original image: 240x320
❌ Safe crop: x=0, y=20, w=240, h=277  (full image!)
```

**Artık "Safe crop" OLMAMALI! "Scaled bbox" olmalı!**  
Eğer görüyorsan: Bbox scaling uygulanmamış.

---

### 4. Test Donması (ÇÖZÜLMÜŞ OLMALI)

```
❌ Test "bu şekilde kaldı" ve dondu
```

**Artık donma OLMAMALI!**  
Eğer donuyorsa:
- Bbox scaling sorunlu olabilir
- Embedding extraction hatası var
- Similarity hesaplama takılıyor

---

## 📊 Performans Beklentileri

| İşlem | Beklenen Süre | Notlar |
|-------|---------------|--------|
| Model Load | ~2-3s | İlk kez |
| Face Crop | ~50-100ms | jpeg-js decode/encode |
| Resize | ~100-200ms | ImageResizer |
| Preprocessing | ~300-500ms | NHWC conversion |
| ONNX Inference | ~200-500ms | FaceNet 128-dim |
| **Total per photo** | **~1-2s** | Kabul edilebilir |
| Similarity Calc | <10ms | Cosine similarity |

**Kabul Edilebilir:**  
Live photo comparison: 2-4 saniye

**Problem Varsa:**  
5+ saniye veya donma: Debug gerekli

---

## 🧪 Test Senaryoları

### Scenario 1: Aynı Kişi (NFC + Live)

**Beklenti:**
- Similarity: **%80-95**
- Match: **YES**

### Scenario 2: Farklı Kişi

**Beklenti:**
- Similarity: **%30-60**
- Match: **NO**

### Scenario 3: Farklı Açılar

Test farklı yüz pozisyonlarını:
- Düz bakış: %85-95
- Hafif yan: %75-85
- Yukarı/aşağı: %70-80

**Minimum kabul:** %70

---

## 🔍 Debug Checklist

Eğer sorun varsa, sırayla kontrol et:

### 1. Model Loading
```
□ Model file size: 87.02MB ✓
□ Input name: image_input ✓
□ Output name: Bottleneck_BatchNorm ✓
□ Expected input: [1, 160, 160, 3] ✓
□ Expected output: [1, 128] ✓
```

### 2. Reference Photo
```
□ Original image decoded ✓
□ Face bbox received ✓
□ Bbox in bounds (no scaling needed for NFC) ✓
□ Face cropped ✓
□ Resized to 160x160 ✓
□ NHWC format ✓
□ Input tensor: [1, 160, 160, 3] ✓
```

### 3. Live Photo (CRITICAL)
```
□ Original image decoded ✓
□ Face bbox received ✓
□ Bbox out of bounds detected ✓
□ Bbox scaled correctly ✓
□ Scaled bbox values reasonable ✓
□ Face cropped (not full image!) ✓
□ Resized to 160x160 ✓
□ NHWC format ✓
```

### 4. Embedding Extraction
```
□ Input tensor shape: [1, 160, 160, 3] ✓
□ ONNX inference successful ✓
□ Output tensor shape: [1, 128] ✓
□ No embedding size warning ✓
□ Embedding extracted ✓
```

### 5. Comparison
```
□ Both embeddings extracted ✓
□ Cosine similarity calculated ✓
□ Similarity value reasonable (0-1) ✓
□ Match decision correct ✓
□ No crash or freeze ✓
```

---

## 🎯 Başarı Kriterleri

Test **BAŞARILI** sayılır:

1. ✅ Hiç ONNX format hatası yok
2. ✅ Hiç embedding size warning yok
3. ✅ Live photo bbox **scaling yapılıyor**
4. ✅ Face crop **doğru bölge** kesiyor
5. ✅ Similarity **%80+ aynı kişi** için
6. ✅ Similarity **%60- farklı kişi** için
7. ✅ Test **donmuyor**
8. ✅ Total süre **<5 saniye**

---

## 📱 Test Adımları

### Adım 1: Temiz Başlangıç
```bash
# Rebuild
npm run android

# veya
cd android && ./gradlew clean && cd ..
npm run android
```

### Adım 2: NFC Okuma
1. Ana ekran → NFC Read
2. Pasaportunuzu okutun
3. NFC photo kaydedildi ✓

### Adım 3: Liveness Test
1. NFC success ekranı → Liveness button
2. Kameraya izin ver
3. 3 saniye countdown
4. **KONSOLU İZLE!** ← ÖNEMLİ

### Adım 4: İlk Frame
- Photo capture olacak
- Face detection çalışacak
- **Face comparison başlayacak**
- **KONSOL LOG'LARINA BAK:**
  - ✅ Bbox scaling görüyor musun?
  - ✅ Embedding extraction başarılı mı?
  - ✅ Similarity değeri ne?

### Adım 5: Challenge Complete
- lookStraight challenge otomatik geçecek
- **Yeni bir photo comparison olacak**
- **KONSOLU KONTROL ET:**
  - ✅ İkinci embedding extraction başarılı mı?
  - ✅ Similarity tutarlı mı?

### Adım 6: Sonuç
- Test complete olmalı
- Similarity skorları görmeli
- Match decision görmeli

---

## 📝 Log Toplama

Test sırasında tüm log'ları kaydet:

```bash
# Android Studio Logcat
# Filter: "FaceRecognition" veya "LivenessModule"

# Kritik log satırları:
- "Model metadata"
- "Bbox scaling"
- "Face cropped"
- "Output tensor"
- "Embedding extracted"
- "Similarity"
```

**Önemli değerler:**
- Bbox scaling faktörü
- Crop boyutları
- Embedding size (128 olmalı)
- Similarity değerleri

---

## 🆘 Sorun Giderme

### Bbox Scaling Çalışmıyor

**Belirti:**
```
Safe crop: x=0, y=20, w=240, h=277
```

**Çözüm:**
- `FaceRecognitionService.js` güncel mi?
- Commit 4bc7b9e7 uygulandı mı?
- Rebuild yapıldı mı?

### Embedding Size Hatalı

**Belirti:**
```
WARN: Unexpected embedding size: 128, expected 512
```

**Çözüm:**
- `EMBEDDING_SIZE = 128` olmalı
- Commit 4bc7b9e7 uygulandı mı?
- Rebuild yapıldı mı?

### ONNX Format Hatası

**Belirti:**
```
ERROR: ORT_INVALID_ARGUMENT
```

**Çözüm:**
- NHWC format uygulandı mı?
- Commit 6f47373a uygulandı mı?
- Tensor shape `[1, 160, 160, 3]` mi?

---

## ✅ TEST BAŞARILI SONUÇ ÖRNEĞİ

```
========================================
LIVENESS TEST COMPLETED
========================================

Total Challenges: 5
Completed: 5
Success Rate: 100%

Face Comparison:
  Reference Photo: ✅ NFC Photo
  Live Photos Captured: 2
  
  Comparison #1:
    Similarity: 87.34%
    Match: ✅ YES
    
  Comparison #2:
    Similarity: 89.12%
    Match: ✅ YES

Average Similarity: 88.23%
Overall Match: ✅ YES

Timing:
  Total Duration: 47.3s
  Avg Frame Processing: 2.1s
  Avg Embedding Extraction: 1.8s
  Avg Similarity Calc: 5ms

========================================
TEST RESULT: ✅ PASSED
========================================
```

**Bu sonucu görürsen: BAŞARILI! 🎉**
