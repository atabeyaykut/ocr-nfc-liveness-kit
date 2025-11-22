# e-Devlet NFC/PACE Tersine Mühendislik Planı

## 1. Amaç
- e-Devlet uygulamasının **PACE/BAC/EAC** akışını birebir kaydedip mevcut SDK'ya aktarmak.
- Kartın beklediği **MSE:Set AT / MSE:Set DST / Mutual Authenticate / Secure Messaging** komutlarını tespit etmek.
- PACE başarısızlığının kök nedenini gerçek APDU dizisi üzerinden çözmek.

## 2. Ön Koşullar & Araçlar
- **APK analizi:** `apktool`, `jadx` (CLI veya GUI)
- **Runtime hook/sniff:** `Frida` (tercihen `frida-server` + `frida-tools`), gerekirse `Xposed`
- **ADB** erişimi, USB debugging açık Android cihaz
- **Loglama:** `adb logcat`, opsiyonel dosya yönlendirme (`> pace_sniff.log`)

## 3. APK Çıkarma & Dosya Yapısı
1. **Decompile** (yapıldı):
   ```bash
   apktool d android/base.apk -o temp_edevlet_apk
   ```
2. Kaynak kod için `jadx` önerisi:
   ```bash
   jadx -d temp_edevlet_jadx android/base.apk
   ```
3. İncelenecek kritik dizinler:
   - `temp_edevlet_apk/smali_classes*/tr/gov/turkiye/edevlet/kapisi/verification/`
   - `temp_edevlet_apk/smali_classes*/org/jmrtd/`
   - `temp_edevlet_apk/smali_classes*/net/sf/scuba/smartcards/`

## 4. Kod İçinde Aranacak Anahtarlar
| Arama Terimi | Neden |
|--------------|-------|
| `sendMSESetATExtAuth`, `sendMutualAuthenticate`, `sendMSESetDST` | JMRTD'nin PACE & TA adımlarını bulmak |
| `SecureMessagingAPDUSender` | SM wrap/unwarp mantığını görmek |
| `IsoDepCardService.transmit` | Tüm APDU'ların geçtiği tek nokta |
| `passwordRef` / `0x83` | Kartın hangi Password ID'yi beklediğini görmek |
| `CommandAPDU` literal tanımları | Custom APDU'lara hızlı erişim |

## 5. Runtime Sniff / Hook Planı
1. **Hook noktası:** `net.sf.scuba.smartcards.IsoDepCardService.transmit(CommandAPDU)` (opsiyonel olarak `android.nfc.tech.IsoDep.transceive`).
2. **Frida örnek iskelet:**
   ```javascript
   Java.perform(function () {
     var IsoDepService = Java.use('net.sf.scuba.smartcards.IsoDepCardService');
     IsoDepService.transmit.implementation = function (cmd) {
       var hex = bytesToHex(cmd.getBytes());
       console.log('[APDU->] ' + hex);
       var resp = this.transmit(cmd);
       console.log('[<-APDU] ' + bytesToHex(resp.getBytes()));
       return resp;
     };
   });
   ```
   > `bytesToHex` yardımcı fonksiyonu eklemeyi unutma.
3. **Alternatif:** APK'yi patchleyip `IsoDepCardService.transmit` içine log satırı enjekte et, yeniden imzala.
4. **Kayıt formatı:** Her APDU için `timestamp | direction | hex | SW1SW2` şeklinde düzenli log.

## 6. Toplanacak Bilgiler
- **MSE:Set AT** komutları: CLA, P1/P2, TLV sırası (0x80/0x83/0x84), PasswordRef değeri.
- **MSE:Set DST / External Authenticate:** Kartın Terminal Authentication isteyip istemediğini gösterir.
- **Mutual Authenticate / Secure Messaging paketleri:** SSC, kEnc/kMac üretimi nasıl yapılıyor?
- **SW kodları:** Hangi adımda hangi SW geliyor, özellikle 6988/6982 ayrımı.

## 7. Elde Edilen Verinin Kullanımı
1. Sniff loglarını `docs/sniff_logs/edevlet_<tarih>.log` gibi kaydet.
2. MSE komutlarını kendi `PACEProtocol.mseSetAT` fonksiyonuna bire bir uygula.
3. Eğer TA/CA gereksinimi varsa JMRTD'nin ilgili sertifika ve imza çağrılarını port et.
4. Secure Messaging’in karttaki varyantı (DES/3DES/AES, SSC başlangıcı) loglardan çıkarıldıktan sonra mevcut `PACESession` içine ekle.

## 8. Kullanıcıdan Beklenenler (Tek Seferde)
1. **APK incelemesi:** `jadx` veya IDE ile `CardReadActivity`, `IsoDepCardService`, `EACTAAPDUSender` kodlarına bak.
2. **Hook kurulumu:** Frida veya patch yöntemiyle APDU logları al.
3. **Log paylaşımı:** Tüm PACE akışını kapsayan bir okutma sırasında üretilen log dosyasını paylaş.
4. **Ek bilgi:** Eğer TA için sertifika/anahtar gerekiyorsa, sniff loglarında görülen referanslara erişim için gerekli dosyaları sağlayın.

> Bu adımları tamamladığında gerçek PACE dizisini kopyalayabilecek ve kartla uyumlu hale getirebileceğiz.
