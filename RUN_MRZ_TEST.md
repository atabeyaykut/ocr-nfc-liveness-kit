# MRZ Test Rehberi

## 🎯 Test Verileriniz

Kendi MRZ verileriniz sisteme kaydedildi:

```
Satır 1: I<TURA43D646181<10945153402<<<
Satır 2: 9809170M3308062TUR<<<<<<<<<<<4
Satır 3: AYKUT<<ATABEY<<<<<<<<<<<<<<<<<
```

### 📋 Parse Edilmiş Bilgiler

- **Belge Tipi**: I (ID Card)
- **Ülke**: TUR (Türkiye)
- **Belge No**: A43D646181
- **TC Kimlik No**: 10945153402
- **Ad Soyad**: ATABEY AYKUT
- **Doğum Tarihi**: 17.09.1998
- **Cinsiyet**: E (Erkek)
- **Son Kullanma**: 06.08.2033
- **Uyruk**: TUR

### 🔑 BAC Key
```
A43D646181898091703308062
```

## 🚀 Test Nasıl Çalıştırılır?

### Yöntem 1: NFC Test Script (Mock)
```bash
node scripts/test-nfc.js
```
Menüden **Seçenek 5**'i seçerek kendi MRZ verilerinizle test yapabilirsiniz.

### Yöntem 2: MRZ Parser Utility
```bash
node utils/mrzParser.js
```
Bu komut MRZ parse işlemini gösterir ve BAC key'i oluşturur.

### Yöntem 3: Kod İçinde Kullanım

```javascript
const MRZParser = require('./utils/mrzParser');

// MRZ satırlarını parse et
const parsed = MRZParser.parse(
  'I<TURA43D646181<10945153402<<<',
  '9809170M3308062TUR<<<<<<<<<<<4',
  'AYKUT<<ATABEY<<<<<<<<<<<<<<<<<'
);

console.log(parsed);

// BAC key oluştur
const bacKey = MRZParser.generateBACKey(parsed);
console.log('BAC Key:', bacKey);

// OCR ile karşılaştır
const ocrData = {
  idNumber: '10945153402',
  documentNumber: 'A43D646181',
  firstName: 'ATABEY',
  lastName: 'AYKUT',
  birthDate: '17.09.1998',
  gender: 'E'
};

const comparison = MRZParser.compareWithOCR(ocrData, parsed);
console.log('Eşleşme Oranı:', comparison.percentage + '%');
```

## 📦 Mock Data Kullanımı

```javascript
const mockNFCData = require('./mock/nfcData');

// Kendi test verilerinizi kullan
const realTestData = mockNFCData.realTest;

console.log('MRZ:', realTestData.mrz);
console.log('Parsed MRZ:', realTestData.parsedMRZ);
console.log('Card Data:', realTestData.cardData);
```

## 🔬 NFC Entegrasyonu

Bu MRZ verileri NFC okuma işleminde kullanılacak:

1. **BAC (Basic Access Control)**: MRZ verilerinden oluşturulan key ile kimlik doğrulama
2. **Data Verification**: NFC'den okunan veri ile MRZ karşılaştırması
3. **Security**: Secure Messaging ile güvenli iletişim

### NFC Modülünde Kullanım

```javascript
const NFCReaderModule = require('./modules/nfc/NFCReaderModule');
const MRZParser = require('./utils/mrzParser');

// MRZ'den BAC key oluştur
const mrzData = MRZParser.parse(line1, line2, line3);
const bacKey = MRZParser.generateBACKey(mrzData);

// NFC okuma
const nfcResult = await NFCReaderModule.readNFC({
  documentNumber: mrzData.documentNumber,
  birthDate: mrzData.birthDateRaw,
  expiryDate: mrzData.expiryDateRaw,
  bacKey: bacKey
});

// Sonuçları karşılaştır
const verification = MRZParser.compareWithOCR(nfcResult, mrzData);
```

## ✅ Test Adımları

1. **Mock Test** (Masaüstünde):
   ```bash
   node scripts/test-nfc.js
   ```
   - Seçenek 5'i seçin
   - Kendi MRZ verilerinizle mock test yapın

2. **Parser Test**:
   ```bash
   node utils/mrzParser.js
   ```
   - MRZ parse işlemini kontrol edin
   - BAC key'in doğru oluştuğunu görün

3. **Real NFC Test** (Android/iOS cihazda):
   ```bash
   npm run android
   # veya
   npm run ios
   ```
   - App'i açın
   - NFC okuma ekranına gidin
   - Kimlik kartınızı okutun
   - MRZ karşılaştırması otomatik yapılacak

## 🔍 Debugging

Eğer NFC okuma sırasında hata alırsanız:

1. **BAC Key Kontrolü**:
   ```javascript
   console.log('Expected BAC Key:', MRZParser.generateBACKey(mrzData));
   ```

2. **MRZ Doğrulama**:
   ```javascript
   const isValid = MRZParser.validate(line1, line2, line3);
   console.log('MRZ Valid:', isValid);
   ```

3. **Checksum Kontrolü**:
   ```javascript
   const checkDigit = MRZParser.calculateCheckDigit('A43D646181');
   console.log('Check Digit:', checkDigit);
   ```

## 📚 Referanslar

- `mock/nfcData.js` - Mock test verileri
- `utils/mrzParser.js` - MRZ parse ve validation
- `scripts/test-nfc.js` - NFC test script
- `modules/nfc/NFCReaderModule.js` - NFC okuma modülü
- `modules/nfc/BACProtocol.js` - BAC implementasyonu

## 🎉 Sonuç

Artık kendi MRZ verileriniz sisteme kayıtlı ve NFC testleri için hazır!
