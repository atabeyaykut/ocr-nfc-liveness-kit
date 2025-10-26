# Azure DevOps Quick Reference Card
## Kimlik SDK CI/CD

---

## 🔑 Kritik Bilgiler

### Organization & Project
```
Organization: kantlori
Project: ocr-nfc-liveness-kit
Project URL: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit
```

### Azure Artifacts
```
Feed Name: ocr-nfc-liveness-kit
Scope: @kantlori
Registry: https://pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/
```

### Service Connections
```
GitHub: github-connection
NPM: ocr-nfc-liveness-kit-npm-connection
```

### Variable Group
```
Name: ocr-nfc-liveness-kit-variables
Variables:
  - AZURE_ARTIFACTS_PAT (Secret)
  - GITHUB_CONNECTION
  - NPM_CONNECTION
```

---

## 📦 Package Installation

### Developer Setup
```bash
# Option 1: Script (Recommended)
./scripts/setup-azure-auth.sh

# Option 2: Manual
echo "@kantlori:registry=https://pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/" > .npmrc
echo "always-auth=true" >> .npmrc
echo "//pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/:_authToken=YOUR_PAT" >> .npmrc

# Install
npm install @kantlori/ocr-nfc-liveness-kit
```

---

## 🏷️ Release Commands

```bash
# Version bump
npm version patch  # 1.0.0 → 1.0.1
npm version minor  # 1.0.1 → 1.1.0
npm version major  # 1.1.0 → 2.0.0

# Release
git push origin main
git push origin --tags

# Or create tag manually
git tag v1.0.0
git push origin v1.0.0
```

---

## 🔐 PAT Token Oluşturma

1. https://dev.azure.com/kantlori
2. User Settings → Personal Access Tokens
3. New Token
4. Scopes: **Packaging (Read, write & manage)**
5. 90 days expiration
6. Copy token

---

## 🚀 Pipeline Stages

```
1. BuildTest     → Lint & Tests
2. Security      → Security Scan
3. AndroidBuild  → APK Build
4. iOSBuild      → iOS Build
5. Publish       → NPM Publish + GitHub Release
6. Documentation → Docs Deploy
```

---

## 🔧 Useful Commands

```bash
# Check package versions
npm view @kantlori/ocr-nfc-liveness-kit versions

# Clean install
rm -rf node_modules package-lock.json
npm cache clean --force
npm install

# Test package
node -e "console.log(require('@kantlori/ocr-nfc-liveness-kit'))"

# Pipeline URL
open https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_build
```

---

## 📱 CI/CD Triggers

| Event | Trigger | Action |
|-------|---------|--------|
| Push to `main` | ✅ | Build + Test + Android/iOS |
| Push to `develop` | ✅ | Build + Test only |
| Pull Request | ✅ | Build + Test only |
| Tag `v*` | ✅ | Full pipeline + NPM publish |
| Manual | ✅ | Any stage |

---

## 🐛 Quick Troubleshooting

**Cannot install package:**
```bash
# Check auth
npm whoami --registry=https://pkgs.dev.azure.com/kantlori/ocr-nfc-liveness-kit/_packaging/ocr-nfc-liveness-kit/npm/registry/

# Re-authenticate
./scripts/setup-azure-auth.sh
```

**Pipeline fails:**
```bash
# Check variable group
https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_library

# Check service connections
https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_settings/adminservices
```

**PAT expired:**
```bash
# Create new PAT (90 days)
# Update Variable Group: AZURE_ARTIFACTS_PAT
# Run setup script again
```

---

## 📚 Documentation Files

| File | Purpose |
|------|---------|
| `AZURE_DEVOPS_SETUP_GUIDE.md` | Full setup guide |
| `AZURE_SETUP_CHECKLIST.md` | Quick checklist |
| `DEPLOYMENT_SUMMARY.md` | Status & summary |
| `docs/INSTALLATION.md` | User installation |
| `README.md` | Package overview |

---

## 🔗 Quick Links

- **Artifacts**: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_artifacts/feed/ocr-nfc-liveness-kit
- **Pipelines**: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_build
- **Library**: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_library
- **Settings**: https://dev.azure.com/kantlori/ocr-nfc-liveness-kit/_settings
- **PAT Tokens**: https://dev.azure.com/kantlori/_usersSettings/tokens

---

**Print this card for quick reference! 📄**
