# ⚡ QUICK START - Get APK in 5 Minutes

## 🚀 **FASTEST WAY: Download from GitHub Actions**

### Step 1: Open GitHub Actions
```
https://github.com/atabeyaykut/ocr/actions
```

### Step 2: Find Latest Successful Build
- Look for green checkmark ✅
- Latest commit: `bcb10bc` or newer
- Click on the workflow run

### Step 3: Download APK
- Scroll down to **Artifacts** section
- Click on artifact (usually named `app-debug` or similar)
- Download ZIP file
- Extract `app-debug.apk`

### Step 4: Install on Device
```bash
adb install app-debug.apk
```

**Done!** 🎉

---

## ⚠️ **Local Build Requires Android SDK**

If you see this error:
```
SDK location not found
```

**You have 2 options:**

### A) Use GitHub Actions (Recommended)
- No setup needed
- Follow steps above
- Get APK in 5 minutes

### B) Install Android SDK
1. Download Android Studio: https://developer.android.com/studio
2. Install and open Android Studio
3. Go to: **More Actions** → **SDK Manager**
4. Install:
   - ✅ Android SDK Platform 34
   - ✅ Android SDK Build-Tools 34
   - ✅ Android SDK Platform-Tools
5. Click **Apply** and wait for download
6. Try build again:
   ```bash
   cd android
   ./gradlew assembleDebug
   ```

**Setup time**: 15-30 minutes

---

## 📊 **Comparison**

| Method | Time | Difficulty | Recommended |
|--------|------|------------|-------------|
| **GitHub Actions** | 5 min | ⭐ Easy | ✅ **YES** |
| **Local Build** | 30 min | ⭐⭐⭐ Medium | ⚠️ Optional |

---

## 🎯 **Recommended Path**

1. ✅ **Now**: Get APK from GitHub Actions (5 min)
2. ✅ **Later**: Install Android SDK if you need local development

**You don't need local build to test the app!** 🚀
