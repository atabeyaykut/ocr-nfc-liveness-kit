# BAC Protocol Düzeltmeleri - Özet ve Test Planı

## 🔧 Yapılan Kritik Düzeltmeler

### 1. **Tip Uyuşmazlıkları Giderildi** ✅
- **Sorun**: `CryptoJS.lib.WordArray.create(kSeed)` number[] dizisini doğru dönüştürmüyordu
- **Çözüm**: Tüm byte[] → WordArray dönüşümleri için `bytesToWordArray()` kullanıldı
- **Dosya**: `BACProtocol.js` lines 97-120

```javascript
// ❌ ÖNCE (YANLIŞ):
const hash = CryptoJS.SHA1(CryptoJS.lib.WordArray.create(kSeed));

// ✅ SONRA (DOĞRU):
const kSeedWA = bytesToWordArray(kSeed);
const c1 = bytesToWordArray([0x00, 0x00, 0x00, 0x01]);
const hashEnc = CryptoJS.SHA1(kSeedWA.concat(c1));
```

### 2. **IV (Initialization Vector) Düzeltildi** ✅
- **Sorun**: `CryptoJS.lib.WordArray.create([0, 0])` yanlış IV oluşturuyordu (word array bekleniyor)
- **Çözüm**: `CryptoJS.enc.Hex.parse('0000000000000000')` kullanıldı (8 zero bytes)
- **Dosya**: `BACProtocol.js` line 335

```javascript
// ❌ ÖNCE (YANLIŞ):
const iv = CryptoJS.lib.WordArray.create([0, 0]); // 8 bytes değil!

// ✅ SONRA (DOĞRU):
const zeroIV = CryptoJS.enc.Hex.parse('0000000000000000'); // 8 zero bytes
```

### 3. **Session Key Derivation - ICAO 9303 Standardına Uygun** ✅
- **Sorun**: Eski implementasyon basit hash extension kullanıyordu
- **Çözüm**: ICAO 9303 spec'e göre:
  - `Ksenc = SHA-1(Kseed || 0x00000001)`
  - `Ksmac = SHA-1(Kseed || 0x00000002)`
- **Parity bit adjustment** her iki key için de uygulanıyor
- **Dosya**: `BACProtocol.js` lines 97-161

### 4. **Parity Bit Adjustment Eklendi** ✅
- **Sorun**: DES/3DES anahtarları odd parity gerektirir
- **Çözüm**: `adjustKeyParity()` fonksiyonu eklendi ve session key türetiminde kullanılıyor
- **Dosya**: `BACProtocol.js` lines 138-161

```javascript
adjustKeyParity(key) {
    const bytes = wordArrayToBytes(key);
    for (let i = 0; i < bytes.length; i++) {
        let byte = bytes[i] & 0xFE; // Clear LSB
        let parity = 0;
        // Count set bits in upper 7 bits
        for (let j = 1; j < 8; j++) {
            if ((byte >> j) & 1) parity++;
        }
        // Set LSB for odd parity
        if (parity % 2 === 0) byte |= 1;
        bytes[i] = byte;
    }
    return bytesToWordArray(bytes);
}
```

### 5. **EXTERNAL AUTHENTICATE Le Parametresi Kaldırıldı** ✅
- **Sorun**: APDU sonuna `[0x28]` (Le) ekleniyordu, çoğu chip kabul etmiyor
- **Çözüm**: Le parametresi kaldırıldı (ICAO 9303 spec'e uygun)
- **Dosya**: `BACProtocol.js` lines 353-358

```javascript
// ❌ ÖNCE:
const authCommand = APDU.EXTERNAL_AUTHENTICATE.concat(
    [cmdData.length], cmdData, [0x28] // ❌ Le ekleniyordu
);

// ✅ SONRA:
const authCommand = APDU.EXTERNAL_AUTHENTICATE.concat(
    [cmdData.length], cmdData
    // NO Le - spec'e göre eklenmemeli
);
```

### 6. **TLV Multi-byte Length Encoding** ✅
- **Sorun**: Length alanı her zaman tek byte varsayılıyordu (>127 byte'lık data için hata)
- **Çözüm**: `encodeTLVLength()` ve `parseTLV()` fonksiyonları eklendi
- **Dosya**: `BACProtocol.js` lines 166-214

```javascript
encodeTLVLength(length) {
    if (length < 0x80) return [length]; // Short form
    
    // Long form: 0x80 | numBytes, then bytes
    const bytes = [];
    let temp = length;
    while (temp > 0) {
        bytes.unshift(temp & 0xFF);
        temp >>= 8;
    }
    return [0x80 | bytes.length, ...bytes];
}
```

### 7. **Timing-Safe MAC Comparison** ✅
- **Sorun**: `Buffer.equals()` timing attack'e açık olabilir
- **Çözüm**: Constant-time XOR comparison kullanıldı
- **Dosya**: `BACProtocol.js` lines 398-420

```javascript
// Timing-safe MAC comparison
let macValid = mic.length === expectedMac.length;
if (macValid) {
    let diff = 0;
    for (let i = 0; i < mic.length; i++) {
        diff |= mic[i] ^ expectedMac[i];
    }
    macValid = (diff === 0);
}
```

### 8. **Secure Messaging Response MAC Verification** ✅
- **Sorun**: `unwrapAPDU()` MAC doğrulaması yapmıyordu
- **Çözüm**: Response parsing'te DO8E (MAC) parse edilip doğrulanıyor
- **Dosya**: `BACProtocol.js` lines 286-363

### 9. **ISO 9797-1 Padding & MAC Detaylı Log** ✅
- **Çözüm**: `calculateMAC()` ve `padData()` fonksiyonlarına detaylı debugging log'ları eklendi
- **Dosya**: `BACCrypto.js` lines 455-541

---

## 🧪 Test ve Debug Planı

### Adım 1: MRZ Verisi Kontrolü
```javascript
// Loglardan kontrol et:
// [BAC] Building MRZ information from: {...}
// [BAC] ✅ MRZ Information String: A43D646181980917310330332 (24 chars)
```

**Kontrol Noktaları**:
- MRZ string uzunluğu **24 karakter** olmalı
- Document No check digit OCR'den alınıyor mu? (mrzCheckDigits.documentNo)
- Birth date format: YYMMDD (örn: `980917` = 17.09.1998)
- Expiry date format: YYMMDD

### Adım 2: Key Derivation Kontrolü
```javascript
// Loglardan kontrol et:
// [BAC Session] Kenc (hex): xxxx... (32 hex chars = 16 bytes)
// [BAC Session] Kmac (hex): xxxx... (32 hex chars = 16 bytes)
```

**Kontrol Noktaları**:
- Kenc ve Kmac her biri **16 bytes** (32 hex karakter)
- Parity adjustment yapılmış mı kontrol et

### Adım 3: EXTERNAL AUTHENTICATE Test
```javascript
// Loglardan kontrol et:
// [BAC Protocol] Command length: 45 (CLA+INS+P1+P2+Lc+40data = 5+40)
// [BAC Protocol] E(IFD) length: 32
// [BAC Protocol] M(IFD) length: 8
```

**Beklenen APDU**:
- CLA: `0x00`
- INS: `0x82`
- P1: `0x00`
- P2: `0x00`
- Lc: `0x28` (40 decimal)
- Data: 32 bytes (E(IFD)) + 8 bytes (M(IFD)) = 40 bytes
- **Le YOK** ✅

### Adım 4: Response Hataları
Response SW kodlarına göre:

#### `6300` - Authentication Failed
**Neden**: MAC doğrulaması başarısız
**Çözüm**:
- MRZ check digits'leri kontrol et
- Key derivation log'larını incele

#### `6982` - Security Status Not Satisfied
**Neden**: 
1. BAC desteklenmiyor (PACE gerekiyor olabilir)
2. MRZ bilgisi yanlış
3. Kart bloke

**Test**:
```bash
# Kartın hangi protokolü desteklediğini öğren
# EF.CardAccess dosyasını oku (PACE support)
```

#### `6988` - Incorrect Encryption
**Neden**: Encryption/decryption yanlış
**Çözüm**:
- IV kontrolü: `0000000000000000` olmalı
- 3DES key expansion: 16 bytes → 24 bytes (K1||K2||K1)

### Adım 5: Session Key Verification
```javascript
// Mutual auth başarılıysa:
// [BAC Protocol] ✅ MAC verified
// [BAC Protocol] ✅ RND.IFD verified
// [BAC Session] Session Ksenc: xxxx...
// [BAC Session] Session Ksmac: xxxx...
// [BAC Session] ✅ Secure channel established
```

---

## 🔍 Debug Checklist

### Eğer GET CHALLENGE Başarısız Olursa:
- [ ] NFC bağlantısı aktif mi?
- [ ] `NfcManager.transceive()` doğru çalışıyor mu?
- [ ] Response SW = `9000` mı?

### Eğer EXTERNAL AUTHENTICATE `6300` Verirse:
- [ ] MRZ check digits OCR'den geliyor mu?
- [ ] Kenc/Kmac doğru türetilmiş mi?
- [ ] E(IFD) doğru şifrelenmiş mi? (32 bytes)
- [ ] M(IFD) doğru hesaplanmış mı? (8 bytes)
- [ ] IV = `0x0000000000000000` kullanılıyor mu?

### Eğer EXTERNAL AUTHENTICATE `6982` Verirse:
- [ ] Kart BAC destekliyor mu? (PACE gerekebilir)
- [ ] MRZ bilgisi doğru mu? (OCR hatası olabilir)
- [ ] Document No format doğru mu? (9 char, padding '<')

### Eğer EXTERNAL AUTHENTICATE `6988` Verirse:
- [ ] 3DES key expansion doğru mu? (16→24 bytes)
- [ ] Padding ISO 9797-1 Method 2 mi? (0x80 + 0x00...)
- [ ] S = RND.IFD || RND.IC || kIFD (32 bytes) doğru mu?

---

## 📊 Test Vektörleri (ICAO 9303 Spec)

Bilinen test vektörleriyle test etmek için:

```javascript
// Örnek MRZ (ICAO 9303 test)
const testMRZ = {
    documentNo: 'L898902C<',
    birthDate: '690806',
    expiryDate: '940623',
    mrzCheckDigits: {
        documentNo: '3',
        birthDate: '1',
        expiryDate: '5'
    }
};

// Expected Kenc/Kmac (test için)
// Bu değerler spec'te var, karşılaştırabilirsin
```

---

## ⚠️ Önemli Notlar

### 1. PACE vs BAC
Modern e-ID'lerde (2017+) çoğunlukla **PACE** kullanılıyor. Eğer kartınız PACE gerektiriyorsa:
- `EF.CardAccess` dosyasını oku (SecurityInfos)
- PACE protocol implement et (daha karmaşık)
- BAC fallback olarak kalsın

### 2. MRZ Check Digits
OCR'den gelen check digits **mutlaka** kullanılmalı. Hesaplanan check digits yanlış olabilir çünkü:
- Document No formatı ülkeye göre değişir
- OCR'den gelen tam format zaten doğru check digit içerir

### 3. Random Number Generation
`Math.random()` kullanılıyor ama production için:
```javascript
import { getRandomBytes } from 'react-native-get-random-values';
```
Daha güvenli olur.

### 4. NFC Transceive Platform Farkları
Android ve iOS'ta `NfcManager.transceive()` farklı davranabilir:
- Android: `number[]` array kabul eder
- iOS: Bazen `Uint8Array` gerekebilir

---

## 🚀 Sonraki Adımlar

1. **Test Et**: Gerçek Türk kimlik kartıyla test et
2. **Log'ları Topla**: Başarısız denemede tüm log'ları kaydet
3. **SW Kodlarını Analiz Et**: Hangi adımda hata aldığını belirle
4. **PACE Check**: Eğer `6982` alıyorsan, kart PACE mi kullanıyor kontrol et
5. **Alternatif MRZ Formatları**: buildMRZInformation'da alternatif formatlar denenebilir

---

## 📚 Referanslar

- ICAO 9303 Part 11: Security Mechanisms for MRTDs
- ISO/IEC 9797-1: MAC algorithms
- ISO/IEC 7816-4: APDU commands
- BSI TR-03110: Advanced Security Mechanisms (PACE)

---

## ✅ Düzeltme Özeti

| Sorun | Düzeltildi | Dosya |
|-------|-----------|-------|
| WordArray tip uyuşmazlığı | ✅ | BACProtocol.js:97-120 |
| Yanlış IV oluşturma | ✅ | BACProtocol.js:335 |
| Session key derivation | ✅ | BACProtocol.js:97-133 |
| Parity bit adjustment | ✅ | BACProtocol.js:138-161 |
| EXTERNAL AUTH Le parametresi | ✅ | BACProtocol.js:353-358 |
| TLV multi-byte length | ✅ | BACProtocol.js:166-214 |
| Timing-safe MAC comparison | ✅ | BACProtocol.js:398-420 |
| Response MAC verification | ✅ | BACProtocol.js:286-363 |
| ISO 9797-1 padding | ✅ | BACCrypto.js:529-541 |
| MAC calculation logging | ✅ | BACCrypto.js:455-518 |

**Tüm kritik sorunlar ICAO 9303 spec'e uygun olarak düzeltildi!** ✅
