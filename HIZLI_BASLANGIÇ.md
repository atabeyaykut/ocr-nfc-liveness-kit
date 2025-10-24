# 🚀 Hızlı Başlangıç Kılavuzu

OCR Mobile App'i **5 dakikada** çalıştırın!

## ⚡ Hızlı Kurulum

### 1. Bağımlılıkları Yükle
```bash
npm install
```

### 2. Android'de Çalıştır

**İki terminal penceresi açın:**

```bash
# Terminal 1: Metro bundler'ı başlat
npm start
```

```bash
# Terminal 2: Android uygulamasını çalıştır
npm run android
```

### 3. iOS'te Çalıştır (macOS için)

```bash
# Önce iOS bağımlılıklarını yükle
cd ios && pod install && cd ..

# İki terminal penceresi açın:
```

```bash
# Terminal 1: Metro bundler'ı başlat
npm start
```

```bash
# Terminal 2: iOS uygulamasını çalıştır
npm run ios
```

## ✅ Kontrol Listesi

Çalıştırmadan önce bunları kontrol edin:

- [ ] Node.js 14+ yüklü mü? → `node --version`
- [ ] npm yüklü mü? → `npm --version`
- [ ] Android Studio yüklü mü? (Android için)
- [ ] Xcode yüklü mü? (iOS için)
- [ ] Cihaz/Emulator hazır mı?
- [ ] USB Debugging açık mı? (Android fiziksel cihaz)

## 📱 İlk Çalıştırma

Uygulama başlatıldığında:

1. **Ana Menü** görünecek
2. Kamera izni isteyecek → **İzin Ver**
3. 4 modülden birini seçin:
   - 📄 **OCR Okuma** - Tek yüz tarama
   - ⭐ **Çift Taraflı Tarama** - Tam veri (önerilen)
   - 📱 **NFC Okuma** - Çip okuma (fiziksel cihaz gerekli)
   - 😀 **Canlılık Testi** - Yüz doğrulama

## 🐛 Sorun mu var?

### Metro Bundler başlamıyor
```bash
# Cache'i temizle
npm start -- --reset-cache
```

### Build hatası alıyorum
```bash
# Her şeyi temizle ve yeniden başla
rm -rf node_modules
npm install

# Android için
cd android && ./gradlew clean && cd ..

# iOS için
cd ios && pod deintegrate && pod install && cd ..
```

### Cihaz algılanmıyor

**Android:**
```bash
adb devices  # Cihazınızı görüyor musunuz?
```

**iOS:**
```bash
xcrun simctl list  # Simulator listesi
```

## 📊 Test Kimlik Kartı

**Gerçek Türk kimlik kartı kullanın!** Bu production-ready bir uygulama, mock data yok.

### OCR Test İçin:
- İyi aydınlatılmış ortam
- Titremeden fotoğraf çekin
- Kartı düz tutun (parlama olmasın)

### NFC Test İçin:
- NFC özellikli **fiziksel cihaz** gerekli
- Kartı telefonun arkasına yaklaştırın
- 2-3 saniye bekleyin

## 🎯 Sonraki Adımlar

1. **STANDALONE_UYGULAMA.md** → Detaylı dokümantasyon
2. **README.md** → Teknik detaylar ve API
3. **examples/** → Örnek kullanımlar

## 💡 Pro İpuçları

- 🔥 **Hot Reload aktif**: Kod değişiklikleriniz otomatik yansır
- 🐛 **Debug Menu**: Cihazda Cmd+M (Android) veya Cmd+D (iOS)
- 📱 **Physical Device**: NFC için mutlaka fiziksel cihaz kullanın
- ⚡ **Fast Refresh**: Hızlı geliştirme için varsayılan olarak açık

## 🆘 Yardım Lazım mı?

```bash
# Console logları
adb logcat  # Android
# Xcode Console  # iOS

# React Native DevTools
# Cihazda shake veya Cmd+D/M
```

---

**İyi geliştirmeler! 🎉**

*Not: İlk build 2-5 dakika sürebilir. Sabırlı olun.*
