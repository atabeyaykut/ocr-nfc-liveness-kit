# BAC Authentication Debug Guide

## ❌ Mevcut Hata: SW:6985 - CONDITIONS NOT SATISFIED

### 🔍 Sorun Analizi

```
✅ BAC key başarıyla oluşturuldu
✅ JMRTD doğru çalışıyor
✅ NFC bağlantısı başarılı
❌ Kimlik kartı BAC authentication'ı reddetti
```

**Sebep:** Manuel test verileri kimlik kartındaki gerçek MRZ verileriyle uyuşmuyor!

---

## 📋 Gerçek MRZ Verilerini Alma

### Yöntem 1: OCR ile Okuma (ÖNERİLEN)
```javascript
// VerificationFlowScreen.js içinde:
const dataToSend = result.data;  // ✅ OCR'dan gelen gerçek veri
// const dataToSend = manualTestData;  // ❌ Manuel test verisi
```

### Yöntem 2: Kimlik Kartından Manuel Okuma

Türkiye Cumhuriyeti Kimlik Kartı MRZ formatı (TD-1):
```
Satır 1: IDTUR10945153402<<<<<<<<<<<<<<<<
Satır 2: 980917E330806TUR<<<<<<<<<<<1
Satır 3: AYKUT<<ATABEY<<<<<<<<<<<<<<
```

**Önemli Noktalar:**
- Document Number: `10945153402` (TC No - 11 karakter)
- Birth Date: `980917` (YYMMDD - 17 Eylül 1998)
- Expiry Date: `330806` (YYMMDD - 06 Ağustos 2033)
- Check Digit'ler MRZ'de gömülü

---

## 🛠️ Doğru Manuel Test Verisi Formatı

```javascript
const manualTestData = {
    // ⚠️ BU VERİLER KİMLİK KARTINIZLA UYUŞMALI!
    tcNo: '10945153402',           // TC No (11 hane)
    documentNo: '10945153402',      // TC No ile aynı (Türk kimlik kartları için)
    serialNo: 'XXXXX',              // Seri numarası (kimlik kartının üstünde)
    birthDate: '980917',            // Doğum tarihi YYMMDD
    validUntil: '330806',           // Son kullanma YYMMDD
    name: 'ATABEY',
    surname: 'AYKUT',
    gender: 'E',                    // E veya K
    nationality: 'TUR'
};
```

---

## 🔬 Debug Adımları

### 1. Gerçek MRZ Verilerini Doğrula
```bash
adb logcat | grep "NFCPassportReader"
```

Şu satırlara dikkat et:
```
✓ documentNo extracted: 'XXXXXXXX'
✓ birthDate extracted: 'YYMMDD'
✓ expiryDate extracted: 'YYMMDD'
BAC params (raw) - Doc: XXXXXXXX, Birth: YYMMDD, Expiry: YYMMDD
```

### 2. MRZ Check Digit'lerini Doğrula
JMRTD otomatik hesaplıyor, ancak manuel kontrol için:
- https://www.icao.int/publications/Documents/9303_p3_cons_en.pdf

### 3. Kimlik Kartı Uyumluluğu
- ✅ e-Devlet uygulamasıyla NFC okuması yapabiliyor musunuz?
- ✅ Kimlik kartı 2017 sonrası mı basılmış? (NFC çipli)
- ✅ Kimlik kartı hasarlı değil mi?

---

## 📖 ICAO 9303 Standardı

### MRZ Check Digit Hesaplama
```
Weights: 7 3 1 7 3 1 7 3 1 7 3 1 ...
Document: A43D64618
Check Digit: Sum % 10
```

### BAC Key Derivation (JMRTD otomatik yapıyor)
```
K_seed = SHA-1(MRZ_Information)
K_enc = Key_Derivation(K_seed, 1)
K_mac = Key_Derivation(K_seed, 2)
```

---

## 🎯 Çözüm Önerileri

### Seçenek 1: OCR Kullan (EN DOĞRU)
```javascript
// OCR'dan gelen verileri kullan
const dataToSend = result.data;
startNfcFlow(dataToSend);
```

### Seçenek 2: e-Devlet ile Test Et
1. e-Devlet mobil uygulamasını indir
2. Kimlik kartını oku
3. Başarılıysa kimlik kartı çalışıyor demektir
4. MRZ verilerini doğrula

### Seçenek 3: Gerçek Kimlik Kartından OCR Oku
```javascript
// Manuel test verisini KALDIR
// const dataToSend = manualTestData; ❌

// OCR verisini KULLAN
const dataToSend = result.data; ✅
```

---

## 🚨 Yaygın Hatalar

### 1. Document Number Yanlış
```javascript
// ❌ YANLIŞ
documentNo: 'A43D64618',  // Bu bir pasaport numarası formatı

// ✅ DOĞRU (Türk kimlik kartı)
documentNo: '10945153402', // TC No
```

### 2. Tarih Formatı Yanlış
```javascript
// ❌ YANLIŞ
birthDate: '17/09/1998',

// ✅ DOĞRU
birthDate: '980917',  // YYMMDD
```

### 3. Check Digit'leri Manuel Ekleme
```javascript
// ❌ YANLIŞ - JMRTD zaten hesaplıyor!
documentNo: '109451534021',  // Son '1' check digit

// ✅ DOĞRU
documentNo: '10945153402',   // Sadece TC No
```

---

## 📚 Referanslar

- [ICAO 9303 Standard](https://www.icao.int/publications/Documents/9303_p3_cons_en.pdf)
- [JMRTD Library](https://jmrtd.org/)
- [NFCPassportReader (iOS)](https://github.com/AndyQ/NFCPassportReader)

---

## ✅ Başarılı BAC Authentication Log'u

```
NFCPassportReader: ✓ documentNo extracted: '10945153402'
NFCPassportReader: ✓ birthDate extracted: '980917'
NFCPassportReader: ✓ expiryDate extracted: '330806'
NFCPassportReader: Creating BAC key - JMRTD will calculate check digits automatically
NFCPassportReader: ✓ BAC key created successfully
NFCPassportReader: ✓ IsoDep connected
NFCPassportReader: ✓ CardService opened
NFCPassportReader: ✓ PassportService opened
NFCPassportReader: Performing BAC authentication...
NFCPassportReader: ✓ BAC authentication successful! 🎉
NFCPassportJMRTD: Reading DG1 (MRZ)...
NFCPassportJMRTD: ✓ DG1 read successfully
NFCPassportJMRTD: Reading DG2 (Photo)...
NFCPassportJMRTD: ✓ DG2 read successfully
```

---

## 🔧 Hızlı Fix

```bash
# 1. OCR verisini kullan
cd /Users/deneme/Documents/GitHub/ocr
code VerificationFlowScreen.js

# 2. Satır 299'u değiştir:
# const dataToSend = manualTestData; ❌
const dataToSend = result.data; ✅

# 3. Build ve test et
cd android && ./gradlew assembleDebug
adb install -r app/build/outputs/apk/debug/app-debug.apk
```
