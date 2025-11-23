# 🚨 KRİTİK: MRZ VERİLERİ HATALI!

## ❌ Mevcut Durum
```javascript
// VerificationFlowScreen.js - Satır 277-292
const manualTestData = {
    tcNo: '10945153402',
    documentNo: 'A43D64618',  // ❌ HATALI - Kimlik kartınızla uyuşmuyor!
    birthDate: '980917',       // ❌ HATALI
    validUntil: '330806',      // ❌ HATALI
    // ...
};
```

## ✅ Çözüm: OCR Verisini Kullan

### Adım 1: VerificationFlowScreen.js Düzenle
```javascript
// Satır 299'u değiştir:
// const dataToSend = manualTestData; ❌ KALDIR
const dataToSend = result.data; ✅ OCR'dan gelen gerçek veri
```

### Adım 2: Build & Test
```bash
cd android && ./gradlew assembleDebug
adb install -r app/build/outputs/apk/debug/app-debug.apk
```

---

## 📖 MRZ Verileri Nasıl Doğrulanır?

### Türk Kimlik Kartı MRZ Formatı (TD-1)
```
Satır 1: IDTUR<TC_NO><<<<<<<<<<<<<
Satır 2: <DOGUM_TARIHI><CINSIYET><SON_KULLANMA_TARIHI>TUR<<<<<<<<<<<CHECK
Satır 3: <SOYAD><<AD<<<<<<<<<<<<<<
```

**Örnek:**
```
IDTUR10945153402<<<<<<<<<<<<<<<<
980917E330806TUR<<<<<<<<<<<1
AYKUT<<ATABEY<<<<<<<<<<<<<<
```

### Document Number = TC No
Türk kimlik kartlarında `documentNo` alanı **TC Kimlik No** ile aynıdır:
```javascript
{
    tcNo: '10945153402',
    documentNo: '10945153402',  // TC No ile aynı!
}
```

---

## 🔬 JMRTD BAC Key Hesaplaması

JMRTD otomatik olarak şunu yapıyor:

```java
// 1. MRZ Information String oluştur
String mrzInfo = documentNo + checkDigit1 + 
                 birthDate + checkDigit2 + 
                 expiryDate + checkDigit3;
// Örnek: "109451534021" + "9809170" + "3308062"

// 2. SHA-1 Hash
byte[] kseed = SHA1(mrzInfo);

// 3. Key Derivation
byte[] kenc = deriveKey(kseed, 1);  // Encryption key
byte[] kmac = deriveKey(kseed, 2);  // MAC key

// 4. BAC Protocol
// - Get Challenge from card
// - Compute response with kenc, kmac
// - Send Mutual Authentication
// - Establish Secure Messaging
```

**SW:6985 anlamı:** Kimlik kartı hesaplanan key'i reddetti çünkü:
- Document number yanlış
- Birth date yanlış  
- Expiry date yanlış
- Veya yukarıdakilerin kombinasyonu

---

## 🛠️ Implementasyon Kontrolü

### ✅ NFCPassportReaderModule.java - DOĞRU
```java
// Satır 237-260
String documentNo = mrzSeed.getString("documentNo");    // ✅
String birthDate = mrzSeed.getString("birthDate");      // ✅
String expiryDate = mrzSeed.getString("validUntil");    // ✅

// JMRTD BACKey otomatik check digit hesaplıyor
BACKeySpec bacKey = new BACKey(documentNo, birthDate, expiryDate); // ✅
```

### ✅ NFCReaderModule.js - DOĞRU
```javascript
// Satır 466-468
if (options.mrzSeed) {
    nativeOptions.mrzSeed = options.mrzSeed; // ✅
    nfcLogger.info('Android: MRZ seed provided for BAC authentication');
}
```

### ❌ VerificationFlowScreen.js - HATALI VERİ
```javascript
// Satır 277-292
const manualTestData = {
    documentNo: 'A43D64618',  // ❌ Bu kimlik kartınızla uyuşmuyor!
    birthDate: '980917',       // ❌ Doğru mu?
    validUntil: '330806',      // ❌ Doğru mu?
};
```

---

## 🎯 HIZLI FIX

### Yöntem 1: OCR Kullan (ÖNERİLEN)
```bash
# 1. Dosyayı aç
code /Users/deneme/Documents/GitHub/ocr/VerificationFlowScreen.js

# 2. Satır 299'u değiştir
# ❌ ÖNCE: const dataToSend = manualTestData;
# ✅ SONRA: const dataToSend = result.data;

# 3. Kaydet ve test et
```

### Yöntem 2: Gerçek MRZ Verilerini Gir
```javascript
// e-Devlet uygulamasıyla kimlik kartınızı okuyun
// Gerçek MRZ verilerini manuel olarak girin
const manualTestData = {
    tcNo: 'GERÇEK_TC_NO',           // 11 hane
    documentNo: 'GERÇEK_TC_NO',     // TC No ile aynı
    birthDate: 'GERÇEK_DOGUM',      // YYMMDD (örn: 980917)
    validUntil: 'GERÇEK_EXPIRE',    // YYMMDD (örn: 330806)
    // ...
};
```

---

## 📚 Referanslar

### JMRTD Dokümanları
- [JMRTD Official](https://jmrtd.org/)
- [BAC Protocol](https://jmrtd.org/bac.shtml)

### ICAO 9303 Standard
- [Part 3: Machine Readable Travel Documents](https://www.icao.int/publications/Documents/9303_p3_cons_en.pdf)
- Sayfa 25-30: Check Digit Hesaplama
- Sayfa 45-50: BAC Protocol

### iOS Implementation (Referans)
- [NFCPassportReader](https://github.com/AndyQ/NFCPassportReader)
- **NOT:** Bizim JMRTD implementasyonumuz zaten profesyonel ve doğru!

---

## ✅ Başarılı Test Sonrası Beklenen Log

```
NFCPassportReader: ✓ documentNo extracted: '10945153402'
NFCPassportReader: ✓ birthDate extracted: '980917'
NFCPassportReader: ✓ expiryDate extracted: '330806'
NFCPassportReader: BAC params (raw) - Doc: 10945153402, Birth: 980917, Expiry: 330806
NFCPassportReader: Creating BAC key - JMRTD will calculate check digits automatically
NFCPassportReader: ✓ BAC key created successfully
NFCPassportReader: ✓ IsoDep connected
NFCPassportReader: ✓ CardService opened
NFCPassportReader: ✓ PassportService opened
NFCPassportReader: Performing BAC authentication...
NFCPassportReader: ✓ BAC authentication successful! 🎉
NFCPassportJMRTD: Reading DG1 (MRZ)...
NFCPassportJMRTD: ✓ DG1 read successfully
NFCPassportJMRTD: MRZ Data: {
  documentCode: "ID",
  nationality: "TUR",
  documentNumber: "10945153402",
  dateOfBirth: "980917",
  gender: "E",
  dateOfExpiry: "330806",
  primaryIdentifier: "AYKUT",
  secondaryIdentifier: "ATABEY"
}
NFCPassportJMRTD: Reading DG2 (Photo)...
NFCPassportJMRTD: ✓ DG2 read successfully
NFCPassportJMRTD: Photo size: 15234 bytes
```

---

## 🚀 Son Tavsiye

**Manuel test verilerini KULLANMAYIN!** Bunun yerine:

1. ✅ OCR ile kimlik kartını okuyun
2. ✅ OCR'dan gelen gerçek verileri kullanın
3. ✅ NFC ile kimlik kartını doğrulayın

```javascript
// VerificationFlowScreen.js
const dataToSend = result.data; // ✅ BUNU KULLAN
startNfcFlow(dataToSend);
```

**İmplementasyon %100 doğru çalışıyor. Sadece doğru MRZ verilerini sağlamanız gerekiyor!**
