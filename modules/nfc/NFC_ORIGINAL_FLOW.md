# NFC Orijinal Akış Mimarisi (Türk Kimlik Kartı)

Bu doküman, projedeki **orijinal NFC akışını** (Türk kimlik kartı IsoDep + BAC/PACE + secure messaging) adım adım açıklar.

> Not: Şu an `NFCReaderModule` içinde okuma kodlarının büyük kısmı **CAN/PACE problemleri** nedeniyle `DEVRE DIŞI` bırakılmış ve yorum satırına alınmıştır. Bu doküman, o **tamamlanmış orijinal akışı** referans alır.

---

## 1. Yüksek Seviye Mimari

- **Çekirdek sınıf:** `modules/nfc/NFCReaderModule.js`
  - `class NFCReaderModule` → NFC iş mantığı (reader mode, BAC/PACE, APDU, parsing, error handling)
  - `export const NFCReaderScreen` → React Native UI ekranı
  - `export { NFC_ERROR_CODES, NFCReaderModule, IdScanOperation }`
- **Shim / giriş noktası:** `modules/nfc/NFCReader.js`
  - Eski `NFCReader` sınıfını modern `NFCReaderModule`’e proxy eder.
- **Paket girişi:** `modules/nfc/index.js`
  - `NFCReader`, `NFC_STATUS`, `NFC_CONFIG` export eder, SDK dış dünyası buradan erişir.
- **BAC/PACE kripto ve protokoller:**
  - `BACCrypto.js` → MRZ’den anahtar türetme, 3DES, MAC, secure messaging helper’ları
  - `BACProtocol.js` → Tam BAC handshake + secure channel kurulumu
  - `PACECrypto.js`, `PACEProtocol.js` → PACE v2 için şifreleme, ECDH, CMAC, APDU akışı
- **Akışı kullanan ekranlar/komponentler:**
  - `VerificationFlowScreen.js` → OCR (ön+arka) → NFC → Liveness tam akış
  - `VerificationSequenceScreen.js` → OCR → NFC → Liveness adım adım
  - `components/NFCTestComponent.js` → NFC’yi doğrudan test etmek için basit UI

---

## 2. En Üstten Bakış: Adım Adım Orijinal Akış

1. **Ekran / komponent** `NFCReaderModule` örneği oluşturur.
2. İstemci kodu `startNFC(options)` çağırır.
3. `startNFC`:
   - NFC desteği / açık-kapalı durumunu kontrol eder.
   - `NfcManager.start()` ile NFC’yi başlatır.
   - Reader mode flag’lerini hesaplayıp `registerNfcDiscovery()` ile **DiscoverTag** event’ini kurar.
4. Cihaz bir tag gördüğünde `NfcEvents.DiscoverTag` → `tagCallback(tag)` tetiklenir.
5. `tagCallback` titreşim + log + `onTagDiscovered` callback’ini çalıştırır ve ardından `handleTag(tag)` çağrılır.
6. `handleTag(tag)` (orijinal akışta):
   - Kartın desteklediği teknolojileri (`IsoDep`, `Ndef`, `MifareClassic`, `NfcA`) analiz eder.
   - Uygun `NfcTech` ile bağlanır.
   - `IsoDep` ise Türk kimlik kartı akışını başlatır:
     - Uygulama seçimi (`SELECT_APP` APDU)
     - Protokol tespiti (`detectAuthenticationProtocol` → **PACE** mi **BAC** mı)
     - MRZ/CAN varsa `performPACE` veya `performBAC` ile güvenlik kanalını kurar.
     - Sonra veri APDU’larını (`READ_PERSONAL`, `READ_ID`, `READ_BIRTH`) gönderir.
     - `parseCardData` ile alanları (`tcNo`, `fullName`, `birthDate` vb.) parse eder.
   - Sonuç `onResult` callback’i + `IdScanOperation` üzerinden dışarı verilir.
7. Hatalar `handleError` üzerinden uygun kullanıcı mesajı + teknik detay ile yönetilir; gerekirse **manuel MRZ girişi fallback** tetiklenir.

---

## 3. Giriş Noktaları

### 3.1. VerificationFlowScreen (OCR → NFC → Liveness)

Dosya: `VerificationFlowScreen.js`

- `startNfcFlow(ocrData)` fonksiyonu, OCR sonrası NFC akışını başlatır:

```js
const { NFCReaderModule } = require('./modules/nfc/NFCReaderModule');
...
const nfcModuleRef = useRef(new NFCReaderModule());
...
await nfcModuleRef.current.startNFC({
  cardType: 'tc_kimlik',
  readTimeout: 60000,
  mrzSeed: {
    tcNo: ocrData.tcNo,
    name: ocrData.name,
    surname: ocrData.surname,
    birthDate: ocrData.birthDate,
    documentNo: ocrData.documentNo || ocrData.serialNo,
    serialNo: ocrData.serialNo,
    validUntil: ocrData.validUntil,
    mrzCheckDigits: ocrData.mrzCheckDigits,
  },
});
```

- Yani **MRZ verisi ve MRZ check digit’leri** OCR’den geliyor, NFC’ye `mrzSeed` olarak geçiliyor.
- NFC bittikten sonra sonuç `setNfcResult` ile ekrana yansıyor ve akış liveness’a devam ediyor.

### 3.2. VerificationSequenceScreen (Sıralı Akış)

Dosya: `VerificationSequenceScreen.js`

- Kullanıcı **OCR → NFC → Liveness** adımlarını ayrı ayrı başlatabiliyor.
- NFC adımı seçildiğinde navigation, `STEP_SCREENS.nfc = 'NFC'` ile `NFCReaderScreen`’e gider.
- `NFCReaderScreen`, içinden `NFCReaderModule` kullanarak aynı akışı yürütür.

### 3.3. NFCTestComponent (Doğrudan NFC Testi)

Dosya: `components/NFCTestComponent.js`

- Direkt `new NFCReaderModule()` örneği alır ve `startNFC/stopNFC` ile temel okuma senaryosunu test eder.
- **Orijinal akışta**, gerçek kart okuma + parsed field’lar bu komponent üzerinden de gözlenebilirdi.

---

## 4. NFCReaderModule.startNFC Orijinal Akışı

Metot: `startNFC = async (options = {}) => { ... }`

1. **Opsiyon birleştirme**
   - Varsayılanlar: `readTimeout`, `enableVibration`, `cardType`, `retryCount`, `isoDepTimeout`, `sessionMetadata`, `verificationHandler`, `canNumber`.
   - `canNumber` (CAN) sağlanmışsa sadece rakamları alır, `6` haneli olacak şekilde pad’ler ve loglar.
   - `verificationHandler` geçilmişse `setVerificationHandler` ile kaydedilir.

2. **Cihaz yetenek kontrolü**
   - `NfcManager.isSupported()` → değilse `"Bu cihaz NFC desteklemiyor"` hatası.
   - `NfcManager.isEnabled()` → kapalıysa kullanıcıya ayarlardan açması gerektiği mesajı.

3. **NFC başlatma ve reader mode hazırlığı**
   - `await NfcManager.start()` → `this.isReading = true`.
   - `onStarted` callback’i tetiklenir.
   - `await this.registerNfcDiscovery()` ile reader mode + DiscoverTag event ayarlanır.

---

## 5. Reader Mode ve Tag Keşfi

Metot: `registerNfcDiscovery = async () => { ... }`

1. **Reader mode flag’leri**
   - Android API’den veya fallback sabitlerden flag’ler hesaplanır:
     - `FLAG_READER_NFC_A`, `FLAG_READER_NFC_B`, `FLAG_READER_NFC_F`, `FLAG_READER_NFC_V`
     - `FLAG_READER_SKIP_NDEF_CHECK`
   - Hepsi OR’lanıp `readerModeFlags` oluşturulur.

2. **DiscoverTag event listener**
   - `NfcManager.setEventListener(NfcEvents.DiscoverTag, tagCallback)`
   - Not: Orijinal tasarımda **yalnızca event tabanlı** yaklaşım kullanılır, `requestTechnology` ile karışmaz.

3. **Foreground dispatch + reader mode**
   - `NfcManager.registerTagEvent({ isReaderModeEnabled: true, readerModeFlags })`
   - Başarılı olduğunda loglarda `📡 Ready to scan` mesajları görünür.

4. **tagCallback(tag)**
   - Kullanıcıya **titreşim** ile geri bildirim (`Vibration.vibrate(100)`)
   - `onTagDiscovered` callback’i çağrılır.
   - Sonra asıl iş: `await this.handleTag(tag)`.

---

## 6. handleTag: Orijinal Tam Okuma Akışı

Şu an projede `handleTag` içindeki asıl okuma bloğu **yorum satırına alınmış** durumda (CAN/PACE problemi notuyla). Orijinal akış şöyledir:

1. **Tag saklama ve değişkenler**
   - `this.currentTag = tag;`
   - `selectedTech`, `connectionTech`, `result` gibi değişkenler hazırlanır.

2. **Teknoloji listesi çıkarma**
   - `techList = tag.tech || tag.techTypes || []`
   - `hasTech('isodep')`, `hasTech('ndef')`, `hasTech('mifare')`, `hasTech('nfc')` helper’ı ile kart tipi seçilir.

3. **Doğru NfcTech’e bağlanma**
   - Örnek:
     - IsoDep → `selectedTech = 'IsoDep'`, `connectionTech = NfcTech.IsoDep`
   - `await NfcManager.connect([connectionTech])` ile bağlantı kurulur.

4. **Teknolojiye göre okuma**
   - IsoDep ise: `result = await this.readIsoDep(tag)`
   - Ndef → `readNdef`
   - MifareClassic → `readMifareClassic`
   - NfcA → `readNfcA`

5. **Veri doğrulama ve sonuç oluşturma**
   - `hasMeaningfulData` kontrolü ile alanların boş olup olmadığı denetlenir.
   - Anlamlı veri varsa:
     - `onResult` callback’i çağrılır.
     - `IdScanOperation.success` ile `parsedFields`, `cardType`, `rawTagId`, `techList`, `mrzSeed`, `sessionMetadata` içeren sonuç üretilir.
     - `dispatchIdScanOperation(operation)` ile opsiyonel `verificationHandler`’a veya doğrudan dinleyicilere iletilir.

6. **Temizlik**
   - `NfcManager.close()` ve `NfcManager.cancelTechnologyRequest()` çağrıları ile bağlantı düzgünce sonlandırılır.

---

## 7. IsoDep Üzerinden Türk Kimlik Kartı Okuma

Orijinal veri okuma IsoDep teknolojisi üzerinden yapılır.

### 7.1. readIsoDep ve _readIsoDepInternal

- Kamuya açık metot: `readIsoDep(tag)` → `withTimeout` ile `_readIsoDepInternal(tag)` çağrısı.
- `_readIsoDepInternal` akışı:
  1. `SELECT_APP` APDU’su gönderilir (`NFC_COMMANDS.SELECT_APP`).
  2. `isSuccessResponse` ile status word (`SW1SW2`) kontrol edilir, 9000 değilse hata fırlatılır.
  3. MRZ veya CAN mevcutsa authentication fazına girilir.

### 7.2. Authentication Protokolü Tespiti

Metot: `detectAuthenticationProtocol()`

- EF.CardAccess (FID: `0x011C`) seçilip okunmaya çalışılır.
- Başarılıysa veya tipik PACE durumlarını gösteren SW kodları dönüyorsa → `protocol = 'PACE'`.
- Aksi durumda → `protocol = 'BAC'` kabul edilir.

### 7.3. PACE (Modern Kartlar)

Metot: `performPACE(mrzSeed)` → `PACEProtocol.performPACEAuthentication(mrzData)`

- MRZ veya CAN’den PACE parolası türetilir:
  - MRZ tabanlı: belge no + doğum tarihi + bitiş tarihi + MRZ check digit’ler
  - Veya CAN tabanlı: kart üzerindeki 6 haneli CAN
- `PACEProtocol` tarafında:
  1. `MSE:Set AT` ile doğru PACE OID ve parametreler seçilir (Türk kartları için ağırlıklı `PACE_ECDH_GM_AES128`).
  2. `GENERAL_AUTHENTICATE` 4 adımda yürütülür:
     - Şifreli nonce alma, çözme
     - Reader ve kart arasında ECDH anahtar değişimi
     - Ortak gizli anahtardan `kEnc` ve `kMac` türetme
     - Karşılıklı authentication token’ları ile doğrulama
  3. Sonunda `PACESession` içinde `kEnc`, `kMac`, `ssc` saklanır ve `session.isEstablished = true` yapılır.
- NFCReaderModule tarafında bu session, `this.paceSession` ve `this.bacSession` olarak saklanır (secure messaging için aynı arayüzü kullanmak amacıyla).

### 7.4. BAC (Daha Eski Kartlar)

Metot: `performBAC(mrzSeed)` → `BACProtocol.performBACAuthentication(mrzData)`

- `BACCrypto.buildMRZInformation(mrzData)` ile 24 karakterlik MRZ bilgi string’i hazırlanır.
- `BACCrypto.deriveBACKeys` ile base anahtarlar (`kEnc`, `kMac`) türetilir.
- `BACProtocol.performBACAuthentication` içinde:
  1. `GET CHALLENGE` ile `RND.IC` alınır.
  2. Rastgele `RND.IFD` ve `kIFD` üretilir.
  3. `S = RND.IFD || RND.IC || kIFD` 3DES ile şifrelenir (`Kenc`) → `E(IFD)`
  4. `E(IFD)` için MAC hesaplanır (`Kmac`) → `M(IFD)`
  5. `EXTERNAL AUTHENTICATE` APDU’su ile `E(IFD)||M(IFD)` karta gönderilir.
  6. Kart yanıtından `E(IC)||M(IC)` alınır, MAC doğrulanır, decrypt edilip `RND.IFD'` vs. doğrulanır.
  7. `kSeed = kIFD XOR kIC` ile session key seed çıkarılır; buradan `ksEnc`, `ksMac` türetilir.
  8. `SSC` başlatılır ve `BACSession.isEstablished = true` olur.

### 7.5. Secure Messaging ve APDU Akışı

Metot: `transceiveApdu(command, { secure })`

- Eğer `secure === true` ve `this.bacSession?.isEstablished`:
  - `bacSession.wrapAPDU(command)` çağrılır.
    - DO87 (şifreli veri), DO97 (beklenen cevap boyu), DO8E (MAC) alanları hazırlanır.
  - Karttan gelen cevap `bacSession.unwrapAPDU(response)` ile açılır; MAC doğrulanır, data blokları pad’lerinden arındırılır.
- IsoDep veri okuma adımları:
  - `READ_PERSONAL` (kişisel alanlar)
  - `READ_ID` (TC no gibi id alanları)
  - `READ_BIRTH` (doğum tarihi alanı)

### 7.6. Veri Parse Etme

Metot: `parseCardData({ personal, id, birth })`

- `bytesToString` ile alanlar string’e çevrilir.
- Regex ile anlamlı alanlar çıkarılır:
  - İsim/soyisim
  - TC Kimlik No
  - Doğum tarihi
- Debug amaçlı `rawHex` alanında ham hex veriler de döndürülür.

---

## 8. Hata Yönetimi ve Fallback

Metot: `handleError(error)`

- Hata mesajı ve türü log’lanır.
- Duruma göre anlamlı `errorCode` ve kullanıcıya gösterilecek `errorMessage` atanır:
  - `PACE_REQUIRED` → modern kart, güvenlik sağlanamadı (6982 vs.)
  - `BAC_REQUIRED`
  - `AUTHENTICATION_FAILED`
  - `CARD_NOT_SUPPORTED`
  - `TIMEOUT`
  - `TAG_LOST`
  - `NFC_CANCELLED`
- PACE/BAC gereksinimi durumunda `fallbackOption` olarak **manuel MRZ girişi** önerilir.
- `onError` callback’i çağrılır ve aynı zamanda `IdScanOperation.failure(...)` ile `dispatchIdScanOperation` üzerinden üst katmana iletilir.

---

## 9. Şu Anki Geçici Durum (CAN / PACE Problemi)

Projede şu an:

- `handleTag`, `readIsoDep`, `performPACE`, `performBAC`, `readNdef`, `readMifareClassic`, `readNfcA`, `parseCardData` gibi fonksiyonlar,
  - Başında **"DEVRE DIŞI - CAN problemi nedeniyle ..."** logları olan
  - Esas iş yapan blokların ise **tamamı yorum satırına alınmış** bir durumda.
- Aktif davranış:
  - Kart algılandığında **sadece titreşim + basit tag loglama** yapılıyor.
  - Gerçek veri okuma ve BAC/PACE handshake’i çalıştırılmıyor.

Bu doküman, **yorum satırına alınmış olan orijinal implemantasyonu** referans alarak akışı anlatır. CAN/PACE problemleri çözüldüğünde, ilgili bloklar yeniden aktif hale getirilerek bu akış tamamen devreye alınabilir.

İlgili detay dokümanlar:

- `modules/nfc/BAC_IMPLEMENTATION_COMPLETE.md`
- `modules/nfc/NFC_BAC_ISSUE_README.md`
- `modules/nfc/TROUBLESHOOTING_6982.md`

---

## 10. Özet

- **Giriş noktası:** `NFCReaderModule` hem doğrudan hem de `NFCReaderScreen` ve diğer ekranlar üzerinden kullanılır.
- **Orijinal akış:**
  - OCR → MRZ/Check Digit → `startNFC(mrzSeed)`
  - Reader mode + DiscoverTag → `handleTag`
  - IsoDep → `SELECT_APP` → `detectAuthenticationProtocol`
  - Kart tipine göre **PACE** veya **BAC** authentication
  - Secure messaging ile veri APDU’ları → `parseCardData`
  - Sonuç: `IdScanOperation.success` + `onResult` callback’i
- **Şu an:** Okuma tarafı geçici olarak devre dışı; sadece kart algılama ve fallback mesajları aktif.

Bu dosya, NFC tarafındaki mimariyi ve tam okuma flow’unu anlamak için referans olarak kullanılabilir. Özellikle **BAC/PACE debug** veya **yeni ülke kimlikleri / pasaport desteği** eklerken başlangıç noktası olarak idealdir.
