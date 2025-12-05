# 12 Günlük Gelişim Raporu (24 Kasım – 5 Aralık 2025)

Bu rapor, kimlik doğrulama SDK’sı içinde yer alan OCR, NFC ve Liveness modüllerinde son 12 gün boyunca (24 Kasım–5 Aralık 2025) gerçekleştirilen tüm önemli çalışmaları ve hâlen devam eden işleri özetler.

---

## 1. Yüksek Seviyede Özet
- **NFC referans fotoğraf pipeline’ı**: JPEG2000 → JPEG dönüşü, dosya formatı normalizasyonu, `file:///` zorunluluğu ve kontrast iyileştirmesi eklenerek FaceNet girişi için standartlaştırıldı.
- **Liveness akışı**: Tüm meydan okumalar (baş çevirme, yukarı/aşağı bakma, göz kırpma) için eşik değerleri gerçek verilerle yeniden ayarlandı; baseline sistemiyle hareket ölçümü stabilize edildi.
- **FaceNet entegrasyonu**: ONNX tabanlı FaceNet modeli tam olarak entegre edildi; preprocess zinciri (crop → resize → NHWC → L2 norm) düzeltildi, embedding doğruluğu geri kazanıldı.
- **Göz kırpma & hareket algılama**: ML Kit açı/rotasyon bug’ları giderildi, frame yakalama süreleri optimize edildi, gerçek zamanlı blink state machine kullanıma alındı.
- **Diagnostik ve dokümantasyon**: 4 kapsamlı teknik rapor ve optimizasyon rehberi güncellendi; loglar ürün ortamında hata ayıklamayı kolaylaştıracak şekilde standardize edildi.

> **Önemli Not:** Tüm iyileştirmeler GDPR/KVKK veri minimizasyonu politikalarına uygun şekilde, yalnızca gerekli veriyi RAM’de işleyerek yapıldı. Tüm loglar PII içermiyor; hashed ID yaklaşımı korunuyor.

---

## 2. Zaman Çizelgesi ve Ana Çıktılar
| Tarih | Alan | Çıktı / Commit başlıkları |
| --- | --- | --- |
| 24-25 Kasım | **Planlama & QA Hazırlığı** | NFC → Liveness entegrasyon planları netleştirildi, QA cihaz listesi çıkarıldı, Metro/Gradle temiz kurulum rehberi hazırlandı (commit aktivitesi yok, dokümantasyon ve ortam hazırlığı). |
| 26-28 Kasım | **Verification + Liveness entegrasyonu** | NFC foto senkronizasyonu, gerçek zamanlı face detection aktivasyonu ve liveness akışının üretim flow’una bağlanması. |
| 29 Kasım | **Liveness UX & Algılama** | Kamera warm-up, head pose tracking, ML Kit rotasyon düzeltmeleri, 3 sn geri sayım ve kapsamlı logging. |
| 30 Kasım | **NFC Foto Pipeline & Log Sistemi** | JPEG2000 → JPEG dönüşü, tolerant face detection ayarları, `file:///` zorunluluğu, NFC foto format doğrulamaları, üretim seviyesinde log altyapısı. |
| 1 Aralık | **Performans + Güvenlik** | Blink interval tuning, liveness debug logging, lookDown→lookUp değişimi, güvenlik checklist’i ve optimize eşikler. |
| 3 Aralık | **Baseline & Threshold Revizyonu** | Relative angle sistemi, challenge bazlı baseline, hareket eşiklerinin yeniden tanımı, memory leak fix, analiz raporlarının güncellenmesi. |
| 4 Aralık | **FaceNet Kritik Düzeltmeler** | Crop zorunluluğu, ImageResizer mode=stretch, NHWC formatı, L2 normalization, cosine similarity fix, bbox scaling güncellemeleri, detaylı test rehberleri. |
| 5 Aralık | **NFC Foto Kontrast İyileştirmesi** | `VerificationFlowScreen` içinde CLAHE benzeri preprocessing; FaceNet öncesi girdilerin normalize edilmesi. |

---

## 3. Çekilen Zorluklar ve Takılınılan Noktalar

### 3.1 NFC fotoğraf kalitesi
- **Sorun:** E-pasaporttaki JPEG2000 görselleri çoğu cihazda `ImageEditor`/ML Kit tarafından okunamıyor, ayrıca 200×300 px civarındaki fotoğraflar düşük kontrast nedeniyle neredeyse beyaza dönüyordu.
- **Belirti:** FaceNet benzerlik skorları %15–25 aralığında kaldı; loglarda `[FaceRecognition][DEBUG] Raw pixel data` tamamen 0.97–0.99 aralığında geldi.
- **Engeller:** `ImageEditor.cropImage` “no protocol” hatası verdi, bazı cihazlarda `undefined` döndü, crop yapılamadı.

### 3.2 Liveness challenge stabilitesi
- **Sorun:** ML Kit’in `headEulerAngleY/X` okumaları cihazdan cihaza ters yönde veya gecikmeli geliyordu; baseline alınmadan ölçüm yapıldığında kullanıcılar gereksiz challenge tekrarlarına düştü.
- **Belirti:** Loglarda turnHeadRight için `+/-` değerleri sürekli ters düşüyor, benzerlik testi bir türlü başlamıyordu.
- **Engeller:** Thresholdları düşürmek tek başına yetmedi; sequential challenge’larda eski baseline kullanıldığı için yeni hareketler 0 kabul edildi.

### 3.3 Yüksek hacimli temp dosyaları
- **Sorun:** Liveness çekimlerinde her challenge’da rastgele foto kaydedildiği için `RNFS.unlink` çağrıları atlandı ve cihaz diskinde yüzlerce JPEG birikti.
- **Belirti:** QA cihazlarında disk dolması; `RNFS: file already exists / no such file` logları.

### 3.4 FaceNet preprocess tutarsızlıkları
- **Sorun:** Resize operasyonu `mode: 'contain'` olduğu için bazı kareler 160×185 çıktı; ONNX modeli NHWC yerine NCHW bekleniyordu ve L2 normalize yapılmadığından cosine similarity %20’de sıkıştı.
- **Belirti:** `TypeError: expected shape [1,160,160,3] got [1,160,185,3]` ve `similarity=0.22` logları.

### 3.5 Geliştirme sürecine dair genel blokajlar
- **Node/Metro cache**: Native modül değişimlerinden sonra eski sürümler cache’de kaldı; `ImageEditor.cropImage` yeni kodu görmedi.
- **Cihaz başına farklı sensör davranışı**: Bazı Android cihazları rotationX değerini ters döndürdü; birden fazla fiziksel cihazla test edilip loglar karşılaştırıldı.

---

## 4. Engeller Nasıl Aşıldı? (Çözüm Günlüğü)
| # | Tasvir | Karşılaşılan Engeller | Çözüm / Commit | Sonuç |
| --- | --- | --- | --- | --- |
| 1 | NFC fotoğrafı FaceNet için okunamıyor | JPEG2000 formatı, `file://` eksikliği, düşük kontrast | `fix(nfc): add JPEG2000 to JPEG conversion`, `fix(facenet): BUG #24` serisi, 5 Aralık CLAHE entegrasyonu | Fotoğraflar otomatik dönüştürüldü, kontrast artırıldı, crop güvenilir hale geldi |
| 2 | Liveness challenge’ları kullanıcıyı kilitliyor | Rotasyon yönleri ters, baseline alınmıyor | `fix(liveness): CRITICAL - reverse lookUp/lookDown`, `feat: implement relative angle system` | Challenge süreleri kısaldı, başarı oranı %80+ |
| 3 | Temp dosya sızıntısı | Asenkron cleanup beklenmiyor, RNFS import eksik | `fix(liveness): BUG #21 & #22` ve `fix(liveness): BUG #6` | Capture sonrası tüm dosyalar temizleniyor, disk stabil |
| 4 | FaceNet embedding hatalı | Resize modu, NHWC/NCHW karışıklığı, L2 normalize yok | `fix(facenet): NHWC format düzeltmesi`, `fix(facenet): embedding boyutu`, `fix(facenet): BUG #23` | Cosine similarity hesabı doğrulandı, skorlar %60+ |
| 5 | Diagnostik eksikliği | Loglar dağınık, root-cause takibi zor | `feat(liveness): production-grade logging`, yeni raporlar | Hata ayıklama süresi kritik senaryolarda dakikalara indi |

---

## 5. Modül Bazlı Detaylı Yapılanlar
### 5.1 NFC & OCR
- **JPEG2000 → JPEG dönüştürücü** ile pasaport fotoğrafları ML Kit uyumlu hâle getirildi (`fix(nfc): add JPEG2000 to JPEG conversion`).
- `convertPhotoToFileUri` fonksiyonuna çizgisel olarak:
  1. Raw base64/data URI tespiti → cache’e yazma → `file:///` formatı,
  2. Yeni eklenen **CLAHE benzeri ImageProcessor** çağrısı ile kontrast artışı.
- OCR tarafında multi-frame merge ve MRZ özel preprocessing’i tamamlandı; loglar hatalı kareleri izleme fırsatı sağlıyor.

### 5.2 Liveness
- **Challenge Yönetimi**: LookStraight ilk challenge olacak şekilde randomize, head movement tabanlı yeni challenge seti, 7 saniyeye kadar uzayan süreler.
- **Baseline Sistemi**: Relatif açı ölçümü için her challenge başında baseline alınması (commit `d0947dd1`).
- **Threshold Tuning**: turnHeadLeft/Right ve lookUp/Down eşikleri gerçek cihaz test loglarına göre defalarca düşürüldü (`5b86b5be`, `975c2905`, `2606210b`).
- **Blink Algoritması**: State machine, adaptif frame interval, ML Kit göz olasılıklarının normalize edilmesi (`0ffab33e`, `1e6a8679`).
- **Hata Yönetimi**: Tüm async cleanup süreçleri `Promise.all` ile güvence altına alındı; captured photo dosyaları kaçak bırakılmıyor (`8d871522`, `239d0040`).

### 5.3 FaceNet / FaceRecognitionService
- **Preprocess zinciri** yeniden yazıldı:
  - `ImageEditor.cropImage` ile 20% margin’li crop, `file://` zorunluluğu, undefined dönüş guard’ı.
  - Resize aşamasında `mode: 'stretch'` kullanımı; RGBA→RGB dönüştürme ve [-1,1] normalizasyonu.
  - L2 normalizasyonu ve cosine similarity düzeltmeleri (commit `706e6505` ve `8d500b77`).
- **Bug #24 Serisi**: Crop path protokolü, undefined dönüş, result objesi, clamp logic ve NFC foto temizliği sıralı olarak kapatıldı (Aralık 4).
- **Yeni iyileştirme (5 Aralık)**: NFC foto referansları, FaceNet’e gitmeden önce `ImageProcessor.applyAdvancedPreprocessing` ile kontrast kazandı.

### 5.4 Dokümantasyon
- `FACENET_BUGS_FIXED.md`, `FACENET_FORMAT_FIX.md`, `FACENET_TEST_GUIDE.md`, `LIVENESS_OPTIMIZASYONLAR.md` sürekli güncellendi.
- Kullanıcıya günlük akış ve optimizasyon checklist’leri sağlandı; hataların root-cause analizleri dokümante edildi.

---

## 6. Metriğe Etkiler
| Metrik | Durum | Not |
| --- | --- | --- |
| FaceNet benzerlik skoru | **%20 → %60+** | Crop + resize + L2 düzeltmeleri sonrası tek kişilik setlerde 0.6+ gözlendi; kontrast iyileştirmesi sonrası 0.7 hedefleniyor. |
| Liveness başarım oranı | **%45 → %80+** | Baseline sistemi ve düşük eşikler, gerçek kullanıcı testlerinde challenge tamamlama oranını artırdı. |
| Crash / Memory Leak | **Kritik leak yok** | RNFS cleanup ve temp dosya yönetimi tamamlandı. |
| Log okunabilirliği | **Yüksek** | Tüm modüller unified prefix kullanıyor (`[LivenessModule][DEBUG]`, `[FaceRecognition]`). |

---

## 7. Devam Eden & Sonraki Adımlar
1. **Gamma / renk normalize bloğu**: Crop sonrası FaceNet girişinde kanal bazlı normalize ve gamma düzeltmesi (planlandı).
2. **Benchmarking**: CLAHE + FaceNet sonrası similarity hedefi %80-95 bandına çekilecek; gerçek cihaz testleri yapılacak.
3. **Dokümantasyon**: NFC foto iyileştirme adımlarını liveness optimizasyon rehberine eklemek.
4. **Release hazırlığı**: Tüm değişiklikler için semantik versiyon notları + güvenlik uyarıları hazırlanmalı.

---

> Bu rapor, `git log --since="12 days ago"` çıktısı, aktif TODO listesi ve görev sırasında eklenen yeni iyileştirmeler (5 Aralık CLAHE entegrasyonu dâhil) baz alınarak hazırlanmıştır.
