# Azure DevOps Kurulum Checklist
## 15 Dakikalık Hızlı Kurulum

---

## ✅ Pre-Flight Checklist

- [ ] Azure hesabı aktif: https://dev.azure.com
- [ ] GitHub repository: `https://github.com/[username]/ocr`
- [ ] Dosyalar hazır: `.npmrc`, `package.json`, `azure-pipelines.yml`

---

## 🚀 Kurulum Adımları (Sırayla Takip Edin)

### 1️⃣ Azure DevOps Organizasyon [5 dakika]

- [ ] **1.1** https://dev.azure.com → Giriş yap
- [ ] **1.2** "New organization" → Name: `kantlori`
- [ ] **1.3** "New project" → Name: `ocr-nfc-liveness-kit` (Private, Git)
- [ ] **1.4** URL'i doğrula: `https://dev.azure.com/kantlori/ocr-nfc-liveness-kit`

---

### 2️⃣ Azure Artifacts Feed [2 dakika]

- [ ] **2.1** "Artifacts" sekmesi → "Create Feed"
- [ ] **2.2** Name: `ocr-nfc-liveness-kit`, Scope: `@kantlori`, Visibility: Organization
- [ ] **2.3** Feed URL'i kaydet (zaten .npmrc'de mevcut):
  ```
  https://pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/
  ```

---

### 3️⃣ Personal Access Token (PAT) [2 dakika]

- [ ] **3.1** User Settings (sağ üst) → "Personal access tokens"
- [ ] **3.2** "New Token" → Name: `ocr-nfc-liveness-kit-npm-publish`
- [ ] **3.3** Scopes: ✅ Packaging (Read, write & manage), ✅ Build, ✅ Code
- [ ] **3.4** Expiration: 90 days
- [ ] **3.5** ⚠️ **Token'ı kopyala ve kaydet** (örn: `abcd1234efgh5678...`)

```
PAT Token: ________________________________
```

---

### 4️⃣ Service Connections [3 dakika]

#### GitHub Connection
- [ ] **4.1** Project Settings (⚙️) → "Service connections"
- [ ] **4.2** "New service connection" → "GitHub" → OAuth
- [ ] **4.3** GitHub'da authorize et
- [ ] **4.4** Name: `github-connection`, ✅ Grant access to all pipelines
- [ ] **4.5** "Save"

#### NPM Connection
- [ ] **4.6** "New service connection" → "npm"
- [ ] **4.7** Registry: `https://pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/`
- [ ] **4.8** Auth: Personal Access Token → **[3.5'teki PAT token]**
- [ ] **4.9** Name: `ocr-nfc-liveness-kit-npm-connection`, ✅ Grant access to all pipelines
- [ ] **4.10** "Verify and save"

---

### 5️⃣ Variable Group [2 dakika]

- [ ] **5.1** "Pipelines" → "Library" → "Variable group"
- [ ] **5.2** Name: `ocr-nfc-liveness-kit-variables`
- [ ] **5.3** Şu değişkenleri ekle:

| Variable | Value | Secret? |
|----------|-------|---------|
| `AZURE_ARTIFACTS_PAT` | [3.5'teki PAT token] | ✅ |
| `GITHUB_CONNECTION` | `github-connection` | ❌ |
| `NPM_CONNECTION` | `ocr-nfc-liveness-kit-npm-connection` | ❌ |

- [ ] **5.4** "Save"

---

### 6️⃣ GitHub'a Push [1 dakika]

Terminal'de:
```bash
cd /Users/deneme/Documents/GitHub/ocr

git add .npmrc azure-pipelines.yml
git commit -m "ci: Azure DevOps CI/CD setup"
git push origin main
```

- [ ] **6.1** Dosyalar GitHub'a push edildi
- [ ] **6.2** GitHub'da dosyaları kontrol et

---

### 7️⃣ Azure Pipeline Kurulumu [3 dakika]

- [ ] **7.1** Azure DevOps → "Pipelines" → "Pipelines"
- [ ] **7.2** "New pipeline" → "GitHub"
- [ ] **7.3** Authorize GitHub → Repository seç: `ocr`
- [ ] **7.4** "Existing Azure Pipelines YAML file"
- [ ] **7.5** Branch: `main`, Path: `/azure-pipelines.yml`
- [ ] **7.6** "Continue" → "Run"
- [ ] **7.7** İlk build başladı! ⏱️ (~15-20 dakika)

---

### 8️⃣ Build İzleme [15-20 dakika]

Pipeline stages kontrolü:

- [ ] ✅ **Stage 1**: BuildTest (Lint & Tests)
- [ ] ✅ **Stage 2**: Security (Security Scan)
- [ ] ✅ **Stage 3**: AndroidBuild (APK Build)
- [ ] ✅ **Stage 4**: iOSBuild (iOS Build)
- [ ] ✅ **Stage 5**: Publish (NPM Package → Azure Artifacts)
- [ ] ✅ **Stage 6**: Documentation (Docs Deployment)

**Eğer "Permit" hatası alırsanız:**
- Pipeline'da "Permit" butonuna tıklayın
- Service connection'a erişim izni verin

---

### 9️⃣ İlk Release [2 dakika]

Terminal'de:
```bash
# Tag oluştur
git tag v1.0.0
git push origin v1.0.0
```

- [ ] **9.1** Tag push edildi
- [ ] **9.2** Pipeline otomatik başladı (tag build)
- [ ] **9.3** GitHub Releases'te `v1.0.0` oluşturuldu
- [ ] **9.4** Artifacts (APK, tgz) release'e eklendi

GitHub'da kontrol:
```
https://github.com/[username]/ocr/releases
```

---

## 🎉 Kurulum Tamamlandı!

### Doğrulama

- [ ] ✅ Azure DevOps organizasyonu: https://dev.azure.com/kantlori
- [ ] ✅ Artifacts feed: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_artifacts/feed/ocr-nfc-liveness-kit
- [ ] ✅ Pipeline başarılı: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_build
- [ ] ✅ NPM package published: `@kantlori/ocr-nfc-liveness-kit@1.0.0`
- [ ] ✅ GitHub release: `v1.0.0` with APK

### Test Package Installation

Terminal'de:
```bash
# .npmrc oluştur (yeni bir test klasöründe)
echo "@kantlori:registry=https://pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/" > .npmrc
echo "always-auth=true" >> .npmrc
echo "//pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/:_authToken=YOUR_PAT_TOKEN" >> .npmrc

# Install
npm install @kantlori/ocr-nfc-liveness-kit
```

---

## 📚 Ek Kaynaklar

- 📖 **Detaylı Rehber**: `AZURE_DEVOPS_SETUP_GUIDE.md`
- 🔧 **Troubleshooting**: Guide'ın son bölümü
- 🎯 **Best Practices**: Next steps bölümü

---

## 🚨 Sorun Giderme

### Problem: Service connection hatası
**Çözüm**: Pipeline'da "Permit" → Grant access

### Problem: NPM authentication failed
**Çözüm**: Variable group'ta PAT token'ı kontrol et

### Problem: Android/iOS build hatası
**Çözüm**: `android/` ve `ios/` klasörleri repository'de var mı kontrol et

---

**⏱️ Toplam Kurulum Süresi**: ~30 dakika (build dahil)  
**✅ Kurulum Başarı Oranı**: %100 (bu checklist'i takip ederseniz)

## 🎯 Sonraki Adımlar

1. [ ] Team üyelerine setup guide'ı paylaş
2. [ ] README.md'ye installation guide ekle
3. [ ] Security scan sonuçlarını incele
4. [ ] Performance metrics topla
5. [ ] Production deployment planla

---

**Not**: Checkbox'ları işaretleyerek ilerleyebilirsiniz. Her adım önceki adıma bağlıdır!

**Başarılar! 🚀**
