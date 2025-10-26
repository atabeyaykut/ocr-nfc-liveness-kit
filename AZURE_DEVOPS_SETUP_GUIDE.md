# Azure DevOps & GitHub Entegrasyon Rehberi
## React Native Kimlik SDK CI/CD Kurulumu

---

## 📋 Ön Hazırlık Kontrol Listesi

✅ Azure hesabı (https://dev.azure.com)  
✅ GitHub hesabı ve repository erişimi  
✅ Proje klasöründeki dosyalar:
- `.npmrc`
- `package.json`
- `azure-pipelines.yml`

---

## 🎯 ADIM 1: Azure DevOps Organizasyonu Oluşturma

### 1.1 Azure DevOps'a Giriş
1. **https://dev.azure.com** adresine gidin
2. Microsoft hesabınızla giriş yapın
3. Sağ üst köşede **"+ New organization"** butonuna tıklayın

### 1.2 Organizasyon Ayarları
```
Organization Name: kantlori
Region: Central US (veya size yakın bölge)
```

4. **"Continue"** butonuna tıklayın
5. Organizasyon oluşturulduktan sonra URL'niz:
   ```
   https://dev.azure.com/kantlori
   ```

### 1.3 Proje Oluşturma
1. **"+ New project"** butonuna tıklayın
2. Proje ayarları:
   ```
   Project name: ocr-nfc-liveness-kit
   Visibility: Private
   Version control: Git
   Work item process: Agile
   ```
3. **"Create"** butonuna tıklayın

✅ **Checkpoint**: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit adresine erişebilmelisiniz

---

## 📦 ADIM 2: Azure Artifacts Feed Oluşturma

### 2.1 Artifacts Sayfasına Gitme
1. Sol menüden **"Artifacts"** sekmesine tıklayın
2. **"+ Create Feed"** butonuna tıklayın

### 2.2 Feed Ayarları
```
Name: ocr-nfc-liveness-kit
Visibility: Organization
Scope: @kantlori
Upstream sources: ✅ Include packages from public sources
```

3. **"Create"** butonuna tıklayın

### 2.3 Feed URL'ini Kaydetme
Feed oluşturulduktan sonra sağ üst köşeden **"Connect to feed"** > **"npm"** seçin.

Feed URL'niz (`.npmrc` dosyanızda zaten mevcut):
```
https://pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/
```

✅ **Checkpoint**: Feed başarıyla oluşturuldu

---

## 🔐 ADIM 3: Personal Access Token (PAT) Oluşturma

### 3.1 PAT Oluşturma
1. Sağ üst köşede **kullanıcı simgesi** > **"Personal access tokens"** tıklayın
2. **"+ New Token"** butonuna tıklayın

### 3.2 Token Ayarları
```
Name: ocr-nfc-liveness-kit-npm-publish
Organization: kantlori
Expiration: 90 days (veya Custom date)
Scopes:
  ✅ Packaging (Read, write & manage)
  ✅ Build (Read & execute)
  ✅ Code (Read)
```

3. **"Create"** butonuna tıklayın
4. ⚠️ **ÖNEMLİ**: Token'ı kopyalayıp güvenli bir yere kaydedin (bir daha göremezsiniz!)

```
Örnek token: abcd1234efgh5678ijkl9012mnop3456qrst7890uvwx
```

✅ **Checkpoint**: PAT token'ı kaydedildi

---

## 🔗 ADIM 4: Service Connections Oluşturma

### 4.1 GitHub Service Connection

1. Sol alt köşeden **"Project settings"** (⚙️) tıklayın
2. Sol menüden **"Service connections"** seçin
3. **"New service connection"** butonuna tıklayın
4. **"GitHub"** seçin > **"Next"**

#### OAuth Yöntemi (Önerilen)
```
Authentication method: OAuth
GitHub URL: https://github.com
```
5. **"Authorize"** butonuna tıklayın
6. GitHub'da oturum açın ve erişim izni verin

#### Connection Ayarları
```
Service connection name: github-connection
Description: GitHub repository access for ocr-nfc-liveness-kit
Grant access permission to all pipelines: ✅
```
7. **"Save"** butonuna tıklayın

### 4.2 NPM Service Connection (Azure Artifacts)

1. **"New service connection"** > **"npm"** seçin
2. Connection ayarları:

```
Registry URL: https://pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/
Authentication method: Personal Access Token
Personal Access Token: [ADIM 3'te oluşturduğunuz PAT token]
Service connection name: ocr-nfc-liveness-kit-npm-connection
Grant access permission to all pipelines: ✅
```

3. **"Verify and save"** butonuna tıklayın

✅ **Checkpoint**: 2 service connection oluşturuldu
- `github-connection`
- `ocr-nfc-liveness-kit-npm-connection`

---

## 📊 ADIM 5: Variable Group Oluşturma

### 5.1 Variable Group Sayfasına Gitme
1. **"Pipelines"** > **"Library"** sekmesine gidin
2. **"+ Variable group"** butonuna tıklayın

### 5.2 Variable Group Ayarları
```
Variable group name: ocr-nfc-liveness-kit-variables
Description: CI/CD variables for ocr-nfc-liveness-kit pipeline
```

### 5.3 Değişkenleri Ekleme
**"+ Add"** butonuna tıklayarak aşağıdaki değişkenleri tek tek ekleyin:

| Variable Name | Value | Secret? |
|--------------|-------|---------|
| `AZURE_ARTIFACTS_PAT` | [ADIM 3'teki PAT token] | ✅ Yes |
| `GITHUB_CONNECTION` | `github-connection` | ❌ No |
| `NPM_CONNECTION` | `ocr-nfc-liveness-kit-npm-connection` | ❌ No |
| `AZURE_STATIC_WEB_APPS_API_TOKEN` | `[Şimdilik boş bırakabilirsiniz]` | ✅ Yes |

4. **"Save"** butonuna tıklayın

✅ **Checkpoint**: `ocr-nfc-liveness-kit-variables` variable group oluşturuldu

---

## 📝 ADIM 6: GitHub Repository Dosyalarını Güncelleme

### 6.1 .npmrc Dosyasını Güncelleme

`.npmrc` dosyanız zaten doğru, ancak CI için token injection satırlarının yorum olmadığından emin olun:

```bash
# Local development için (commented)
; //pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/:_authToken=${AZURE_ARTIFACTS_PAT}

# CI/CD için (active - yorum kaldırılacak)
//pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/:_authToken=${AZURE_ARTIFACTS_PAT}
//pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/:_authToken=${AZURE_ARTIFACTS_PAT}
```

### 6.2 package.json Kontrolü

`package.json` dosyanız hazır. Versiyon yönetimi için:

```json
{
  "name": "@kantlori/ocr-nfc-liveness-kit",
  "version": "1.0.0",
  ...
}
```

### 6.3 azure-pipelines.yml Kontrolü

Pipeline dosyanız hazır. Key noktalar:
- Variable group: `ocr-nfc-liveness-kit-variables` ✅
- NPM connection: `ocr-nfc-liveness-kit-npm-connection` ✅
- GitHub connection: `github-connection` ✅
- Registry: `https://pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/` ✅

### 6.4 GitHub'a Push
```bash
git add .npmrc package.json azure-pipelines.yml
git commit -m "ci: Azure DevOps CI/CD configuration"
git push origin main
```

✅ **Checkpoint**: Dosyalar GitHub'a yüklendi

---

## 🚀 ADIM 7: Azure Pipeline Oluşturma ve Çalıştırma

### 7.1 Pipeline Oluşturma

1. Azure DevOps'ta **"Pipelines"** > **"Pipelines"** sekmesine gidin
2. **"New pipeline"** butonuna tıklayın
3. **"GitHub"** seçin
4. Repository seçimi:
   - GitHub hesabınızla authorize olun
   - `ocr` repository'sini seçin
5. **"Existing Azure Pipelines YAML file"** seçin
6. Branch: `main`, Path: `/azure-pipelines.yml` seçin
7. **"Continue"** butonuna tıklayın

### 7.2 Pipeline Ayarları

Pipeline YAML önizlemesi gösterilecek. Şunları kontrol edin:
```yaml
variables:
  - group: ocr-nfc-liveness-kit-variables  # ✅
```

### 7.3 Pipeline'ı Kaydetme ve Çalıştırma

1. **"Run"** butonuna tıklayın
2. Pipeline ilk kez çalışmaya başlayacak

### 7.4 Build İzleme

Pipeline stages:
1. ✅ **BuildTest** - Lint ve test
2. ✅ **Security** - Security scanning
3. ✅ **AndroidBuild** - Android APK build
4. ✅ **iOSBuild** - iOS build
5. ✅ **Publish** - NPM package publish
6. ✅ **Documentation** - Docs deployment

⏱️ İlk build ~15-20 dakika sürebilir.

### 7.5 Hata Giderme

**Eğer service connection hatası alırsanız:**
1. Pipeline'da **"Permit"** butonuna tıklayın
2. Service connection'a pipeline erişimi verin

**Eğer npm authentication hatası alırsanız:**
1. Variable group'ta `AZURE_ARTIFACTS_PAT` doğru mu kontrol edin
2. PAT token'ın "Packaging" scope'u olduğunu doğrulayın

✅ **Checkpoint**: Pipeline başarıyla çalıştı

---

## 🏷️ ADIM 8: GitHub Release Oluşturma

### 8.1 Tag ile Build Tetikleme

Pipeline otomatik olarak tag'lerden release oluşturur. İlk release için:

```bash
# Version 1.0.0 için tag oluştur
git tag v1.0.0
git push origin v1.0.0
```

### 8.2 Otomatik Release

Pipeline tag'i algıladığında:
1. Package version'ı `1.0.0` olarak günceller
2. NPM package'ı Azure Artifacts'a publish eder
3. GitHub'da otomatik release oluşturur
4. Release notes ekler
5. Artifacts (APK, tgz) ekler

### 8.3 GitHub Release Kontrol

1. GitHub repository'nizde **"Releases"** sekmesine gidin
2. `v1.0.0` release'ini görmelisiniz
3. Assets:
   - `kantlori-ocr-nfc-liveness-kit-1.0.0.tgz`
   - `app-release.apk`

✅ **Checkpoint**: GitHub release oluşturuldu

---

## 📥 ADIM 9: Package Kullanımı

### 9.1 Developers için .npmrc Oluşturma

Diğer geliştiriciler paketi kullanmak için `.npmrc` dosyası oluşturmalı:

```bash
@kantlori:registry=https://pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/
always-auth=true
```

### 9.2 Authentication

Her geliştirici kendi PAT token'ını oluşturmalı:
1. Azure DevOps > User Settings > Personal Access Tokens
2. Scope: Packaging (Read)
3. Token'ı `.npmrc` dosyasına ekle:

```bash
//pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/:_authToken=YOUR_PAT_TOKEN
```

### 9.3 Package Installation

```bash
npm install @kantlori/ocr-nfc-liveness-kit@1.0.0
```

---

## 🔄 ADIM 10: Continuous Deployment Workflow

### 10.1 Development Workflow

```bash
# Feature geliştirme
git checkout -b feature/new-ocr-feature
# ... kod değişiklikleri ...
git commit -m "feat: new OCR feature"
git push origin feature/new-ocr-feature

# Pull request oluştur → Otomatik build ve test çalışır
# Merge to main → Build, test, Android/iOS build çalışır
```

### 10.2 Release Workflow

```bash
# Version bump
npm version patch  # 1.0.0 → 1.0.1
npm version minor  # 1.0.1 → 1.1.0
npm version major  # 1.1.0 → 2.0.0

# Tag ve push
git push origin main
git push origin --tags

# Pipeline otomatik olarak:
# - Package'ı publish eder
# - GitHub release oluşturur
# - APK/IPA build eder
```

---

## ✅ Kurulum Tamamlandı!

### Özet
- ✅ Azure DevOps organizasyonu: `kantlori`
- ✅ Azure Artifacts feed: `ocr-nfc-liveness-kit`
- ✅ Service connections: GitHub + NPM
- ✅ Variable group: `ocr-nfc-liveness-kit-variables`
- ✅ CI/CD Pipeline: Tam otomatik
- ✅ GitHub releases: Otomatik oluşturma

### Yararlı Linkler
- **Azure DevOps**: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit
- **Artifacts Feed**: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_artifacts/feed/ocr-nfc-liveness-kit
- **Pipelines**: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_build
- **Service Connections**: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_settings/adminservices

### Sonraki Adımlar
1. 🧪 Test pipeline'ı bir commit ile
2. 📦 İlk release'i oluştur (`v1.0.0` tag)
3. 👥 Team üyelerine PAT token oluşturma talimatı ver
4. 📚 README.md'ye installation guide ekle
5. 🔒 Security scanning sonuçlarını incele

---

## 🆘 Destek ve Troubleshooting

### Sık Karşılaşılan Hatalar

#### 1. "TF401019: The Git repository with name or identifier ... does not exist"
**Çözüm**: GitHub service connection'ı yeniden authorize edin.

#### 2. "Unable to authenticate to npm registry"
**Çözüm**: 
- Variable group'ta `AZURE_ARTIFACTS_PAT` değerini kontrol edin
- PAT token süresi dolmuş olabilir, yeni token oluşturun

#### 3. "Cannot find module '@kantlori/ocr-nfc-liveness-kit'"
**Çözüm**: 
- `.npmrc` dosyasının doğru yapılandırıldığından emin olun
- Authentication token'ın geçerli olduğunu doğrulayın

#### 4. Android/iOS build hataları
**Çözüm**: 
- `android/` ve `ios/` klasörlerinin repository'de olduğundan emin olun
- Gradle ve CocoaPods dependencies güncel mi kontrol edin

### İletişim
Sorularınız için Azure DevOps'ta "ocr-nfc-liveness-kit" projesinde issue açabilirsiniz.

---

**Son Güncelleme**: 2025-10-27  
**Versiyon**: 1.0  
**Hazırlayan**: DevOps Team
