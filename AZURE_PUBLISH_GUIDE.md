# 🚀 Azure NPM Paketi Yayınlama Kılavuzu

## 📦 Paket Bilgileri

- **Paket Adı:** `@turkiye/kimlik-sdk`
- **Versiyon:** 1.0.0
- **Boyut:** ~147KB
- **Registry:** Azure Artifacts
- **Pipeline:** Otomatik CI/CD ile yayınlanır

---

## 🎯 Yayınlama Yöntemleri

### Yöntem 1: Azure Pipeline ile Otomatik Yayınlama (Önerilen) ✅

Azure Pipeline otomatik olarak şu durumlarda tetiklenir:

#### A. Tag ile Yayınlama (Production Release)
```bash
# Version tag oluştur
git tag -a v1.0.0 -m "Release v1.0.0 - Initial production release"
git push origin v1.0.0
```

**Pipeline Adımları:**
1. ✅ Build and Test
2. ✅ Security Scanning
3. ✅ Android Build
4. ✅ iOS Build
5. ✅ **Publish to Azure Artifacts**
6. ✅ Create GitHub Release
7. ✅ Deploy Documentation

#### B. Main Branch Push (Dev Release)
```bash
git checkout main
git merge docs/production-guides
git push origin main
```

**Pipeline Adımları:**
1-5: Yukarıdaki ile aynı
6. ✅ Publish to Azure Artifacts (latest tag)

---

### Yöntem 2: Manuel Yayınlama

Azure Artifacts'a manuel publish için:

#### Ön Gereksinimler

1. **Azure DevOps PAT Token**
   ```bash
   # Azure DevOps > User Settings > Personal Access Tokens
   # Scope: Packaging (Read, Write, & Manage)
   ```

2. **.npmrc Yapılandırması**
   ```bash
   # Token'ı environment variable olarak ekle
   export AZURE_ARTIFACTS_PAT="your-token-here"
   
   # .npmrc dosyasını güncelle (otomatik)
   npm config set //pkgs.dev.azure.com/turkiye/_packaging/kimlik-sdk/npm/registry/:_authToken ${AZURE_ARTIFACTS_PAT}
   ```

3. **Kimlik Doğrulama**
   ```bash
   npm config set @turkiye:registry https://pkgs.dev.azure.com/turkiye/_packaging/kimlik-sdk/npm/registry/
   npm config set always-auth true
   ```

#### Yayınlama Komutları

```bash
# 1. Test ve lint kontrolleri
npm run lint
npm test

# 2. Paket oluştur (test)
npm pack

# 3. Paket içeriğini kontrol et
tar -tzf turkiye-kimlik-sdk-1.0.0.tgz

# 4. Azure Artifacts'a publish
npm publish --registry https://pkgs.dev.azure.com/turkiye/_packaging/kimlik-sdk/npm/registry/

# 5. Doğrulama
npm view @turkiye/kimlik-sdk --registry https://pkgs.dev.azure.com/turkiye/_packaging/kimlik-sdk/npm/registry/
```

---

## 📋 Pre-Publish Checklist

Yayınlamadan önce kontrol edin:

- [ ] ✅ Tüm testler geçiyor (`npm test`)
- [ ] ✅ Lint hataları yok (`npm run lint`)
- [ ] ✅ README.md güncel ve doğru
- [ ] ✅ package.json version doğru
- [ ] ✅ CHANGELOG güncel (varsa)
- [ ] ✅ TypeScript definitions (`index.d.ts`) doğru
- [ ] ✅ Gereksiz dosyalar exclude edilmiş (`.npmignore`)
- [ ] ✅ iOS ve Android native modüller çalışıyor
- [ ] ✅ Örnek uygulamalar test edildi

---

## 🔍 Paket İçeriği Doğrulama

### Yerel Test

```bash
# Paket oluştur
npm pack

# Başka bir projede test et
cd /path/to/test-project
npm install /path/to/ocr/turkiye-kimlik-sdk-1.0.0.tgz

# Import test
node -e "const sdk = require('@turkiye/kimlik-sdk'); console.log(Object.keys(sdk));"
```

### İçerik Listesi

Paket aşağıdaki dosyaları içermelidir:

```
turkiye-kimlik-sdk-1.0.0.tgz
├── sdk.js                      (Ana entry point)
├── index.d.ts                  (TypeScript definitions)
├── package.json
├── README.md
├── modules/                    (OCR, NFC, Liveness)
│   ├── ocr/
│   ├── nfc/
│   └── liveness/
├── utils/                      (Analytics, ErrorHandler, etc.)
│   ├── analytics.js
│   ├── errorHandler.js
│   ├── performanceMonitor.js
│   ├── logger.js
│   ├── imageProcessor.js
│   └── permissions.js
├── components/                 (React components)
│   ├── LivenessTestComponent.js
│   ├── NFCTestComponent.js
│   └── OCRTestComponent.js
└── examples/                   (Usage examples)
    ├── DualSideOCRDemo.js
    └── ...
```

**Dahil EDİLMEYEN dosyalar:**
- ❌ Test dosyaları (`__tests__/`, `*.test.js`)
- ❌ Build artifacts (`android/build/`, `ios/build/`)
- ❌ Development tools (`scripts/`, `tools/`)
- ❌ CI/CD dosyaları (`azure-pipelines.yml`)
- ❌ IDE dosyaları (`.vscode/`, `.idea/`)

---

## 🌐 Azure Artifacts Registry

### Registry URL
```
https://pkgs.dev.azure.com/turkiye/_packaging/kimlik-sdk/npm/registry/
```

### Feed Ayarları

**Azure DevOps Portal:**
1. Azure DevOps > Artifacts
2. kimlik-sdk feed'i seç
3. Connect to feed > npm
4. Talimatları takip et

---

## 📊 Versiyon Yönetimi

### Semantic Versioning

```bash
# Patch (1.0.0 → 1.0.1): Bug fixes
npm version patch

# Minor (1.0.0 → 1.1.0): New features, backward compatible
npm version minor

# Major (1.0.0 → 2.0.0): Breaking changes
npm version major
```

### Pre-release Versiyonları

```bash
# Beta release
npm version 1.1.0-beta.1

# RC (Release Candidate)
npm version 1.1.0-rc.1

# Publish beta
npm publish --tag beta
```

---

## 🔐 Güvenlik

### Hassas Bilgileri Koruma

**Asla şunları commit'lemeyin:**
- ❌ PAT tokens
- ❌ API keys
- ❌ .env dosyaları
- ❌ Certificates

### .npmignore Kontrolü

```bash
# İçeriği kontrol et
npm pack --dry-run

# Dosya listesini gör
tar -tzf turkiye-kimlik-sdk-1.0.0.tgz | head -20
```

---

## 📱 Kurulum (Kullanıcılar için)

### Azure Artifacts'tan Kurulum

```bash
# 1. Registry yapılandırması
npm config set @turkiye:registry https://pkgs.dev.azure.com/turkiye/_packaging/kimlik-sdk/npm/registry/

# 2. Kimlik doğrulama (gerekirse)
npm login --registry https://pkgs.dev.azure.com/turkiye/_packaging/kimlik-sdk/npm/registry/

# 3. Kurulum
npm install @turkiye/kimlik-sdk

# veya belirli versiyon
npm install @turkiye/kimlik-sdk@1.0.0
```

### .npmrc Dosyası (Proje)

```ini
# .npmrc (proje root)
@turkiye:registry=https://pkgs.dev.azure.com/turkiye/_packaging/kimlik-sdk/npm/registry/
always-auth=true
```

---

## 🚀 Pipeline Tetikleme

### Tag ile Release

```bash
# 1. Değişiklikleri commit et
git add .
git commit -m "chore: Prepare v1.0.0 release"
git push

# 2. Tag oluştur
git tag -a v1.0.0 -m "Release v1.0.0

Features:
- OCR ile kimlik okuma
- NFC ile kimlik okuma  
- Canlılık testi
- TypeScript desteği
- Analytics ve error handling
- Performance monitoring"

# 3. Tag'i push et (Pipeline tetiklenir)
git push origin v1.0.0
```

### Pipeline Durumu

**Azure DevOps Portal:**
1. Pipelines > Builds
2. Son build'i seç
3. Stage'leri kontrol et:
   - ✅ BuildTest
   - ✅ Security
   - ✅ AndroidBuild
   - ✅ iOSBuild
   - ✅ **Publish** ← NPM yayını burada
   - ✅ Documentation

---

## 📈 Post-Publish

### Doğrulama

```bash
# Paketin yayınlandığını kontrol et
npm view @turkiye/kimlik-sdk

# Tüm versiyonları listele
npm view @turkiye/kimlik-sdk versions

# Son versiyon bilgileri
npm view @turkiye/kimlik-sdk dist-tags
```

### GitHub Release

Pipeline otomatik olarak GitHub Release oluşturur:
- 📦 .tgz paketi eklenmiş
- 📱 Android APK eklenmiş (varsa)
- 📝 Release notes
- 🏷️ Version tag

**URL:**
```
https://github.com/atabeyaykut/ocr/releases/tag/v1.0.0
```

---

## 🐛 Sorun Giderme

### Paket Bulunamıyor

```bash
# Registry'yi kontrol et
npm config get @turkiye:registry

# Yeniden yapılandır
npm config set @turkiye:registry https://pkgs.dev.azure.com/turkiye/_packaging/kimlik-sdk/npm/registry/
```

### Yetki Hatası (401/403)

```bash
# PAT token'ı yenile
export AZURE_ARTIFACTS_PAT="new-token"

# Yeniden authenticate
npm login --registry https://pkgs.dev.azure.com/turkiye/_packaging/kimlik-sdk/npm/registry/
```

### Pipeline Başarısız

1. Azure DevOps > Pipelines > Failed build
2. Log'ları incele
3. Hatayı düzelt
4. Yeniden push et veya retry pipeline

---

## 📚 Kaynaklar

- [Azure Artifacts Documentation](https://docs.microsoft.com/en-us/azure/devops/artifacts/)
- [npm Publishing Guide](https://docs.npmjs.com/cli/v8/commands/npm-publish)
- [Semantic Versioning](https://semver.org/)
- [Azure Pipelines](https://docs.microsoft.com/en-us/azure/devops/pipelines/)

---

## ✅ Hızlı Başlatma

**Production Release İçin (Önerilen):**

```bash
# 1. Final değişiklikler
git add .
git commit -m "chore: Release v1.0.0"
git push

# 2. Tag ve push (Pipeline otomatik çalışır)
git tag -a v1.0.0 -m "Release v1.0.0"
git push origin v1.0.0

# 3. Azure DevOps'ta pipeline'ı izle
# https://dev.azure.com/turkiye/kimlik-sdk/_build

# 4. Doğrula
npm view @turkiye/kimlik-sdk@1.0.0
```

**Tamamlandı!** 🎉

Paket artık Azure Artifacts'ta yayında ve kullanıma hazır!
