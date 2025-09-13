# iOS Deployment Rehberi - OCR Mobile SDK

## 🚀 Xcode Konfigürasyonu

### 1. Bundle Identifier Ayarı
1. Xcode'da `OCRMobileSDK.xcworkspace` dosyasını açın
2. Sol panelde `OCRMobileSDK` projesini seçin
3. `OCRMobileSDK` target'ını seçin
4. **General** tab'ında:
   - Bundle Identifier'ı benzersiz bir değere değiştirin: `com.yourcompany.ocrmobilesdk`
   - Display Name: `OCR Mobile SDK`
   - Version: `1.0`
   - Build: `1`

### 2. Signing & Capabilities
1. **Signing & Capabilities** tab'ına gidin
2. ✅ "Automatically manage signing" seçeneğini işaretleyin
3. **Team** dropdown'dan Apple Developer hesabınızı seçin
4. Provisioning Profile otomatik olarak oluşturulacak

### 3. Deployment Target
- **iOS Deployment Target**: `14.0` (minimum)

## 📱 Gerçek Cihazda Test

### Cihaz Hazırlığı:
1. iPhone'unuzu USB ile Mac'e bağlayın
2. iPhone'da **Settings > General > Device Management** yolunu izleyin
3. Developer hesabınızı "Trust" edin
4. **Settings > Privacy & Security > Developer Mode** açın (iOS 16+)

### Build ve Run:
1. Xcode'da cihazınızı target olarak seçin (simulator değil)
2. ⌘+R ile build ve run yapın
3. İlk çalıştırmada cihazda "Untrusted Developer" hatası alabilirsiniz
4. **Settings > General > VPN & Device Management > Developer App** bölümünden uygulamayı trust edin

## 🏗️ Archive ve TestFlight

### Archive Alma:
1. Xcode'da **Product > Archive** seçin
2. Build başarılı olursa Organizer açılır
3. **Distribute App** butonuna tıklayın
4. **App Store Connect** seçin
5. **Upload** seçin
6. Signing ayarlarını onaylayın
7. Upload tamamlanana kadar bekleyin

### TestFlight Konfigürasyonu:
1. [App Store Connect](https://appstoreconnect.apple.com) giriş yapın
2. **My Apps** > **+** > **New App** 
3. App bilgilerini doldurun:
   - Platform: iOS
   - Name: OCR Mobile SDK
   - Primary Language: Turkish/English
   - Bundle ID: Xcode'da kullandığınız bundle ID
   - SKU: Benzersiz bir kod (örn: OCRSDK001)
4. **TestFlight** tab'ına gidin
5. Upload edilen build'i seçin
6. **Beta App Information** doldurun
7. **Submit for Review** (internal testing için gerekli değil)

### Internal Testing:
1. TestFlight'ta **Internal Testing** bölümüne gidin
2. **+** ile yeni grup oluşturun
3. Test kullanıcılarını email ile davet edin
4. Build'i gruba assign edin
5. Kullanıcılar TestFlight uygulaması ile test edebilir

## 🔧 Yaygın Sorunlar ve Çözümler

### CocoaPods Sorunları:
```bash
# Pod cache temizleme
cd ios
rm -rf Podfile.lock Pods/ build/
pod deintegrate
pod install

# Ruby/CocoaPods güncelleme
brew install cocoapods
pod repo update
```

### Signing Sorunları:
- Apple Developer hesabının aktif olduğundan emin olun
- Xcode'da Apple ID hesabınızı ekleyin: **Preferences > Accounts**
- Certificate'ların süresi dolmuş olabilir
- Bundle ID'nin benzersiz olduğundan emin olun

### Build Hataları:
```bash
# Node modules temizleme
rm -rf node_modules package-lock.json
npm install

# iOS build cache temizleme
cd ios
xcodebuild clean -workspace OCRMobileSDK.xcworkspace -scheme OCRMobileSDK
```

### Simulator vs Device Sorunları:
- Simulator'da çalışıp cihazda çalışmayan durumlar için:
  - Architecture ayarlarını kontrol edin
  - Device-specific permissions (Camera, NFC) ekleyin
  - Info.plist'te gerekli usage descriptions olduğundan emin olun

## 📋 Checklist

### Deployment Öncesi:
- [ ] Bundle Identifier benzersiz ve doğru
- [ ] Signing ayarları yapılandırılmış
- [ ] Apple Developer hesabı aktif
- [ ] Deployment target uygun (14.0+)
- [ ] App icons eklendi
- [ ] Launch screen yapılandırıldı
- [ ] Info.plist permissions eklendi

### TestFlight Öncesi:
- [ ] Archive başarılı
- [ ] App Store Connect'te app oluşturuldu
- [ ] Build upload edildi
- [ ] Beta App Information dolduruldu
- [ ] Test kullanıcıları davet edildi

## 🎯 Sonraki Adımlar

1. **Production Release**: TestFlight testleri başarılı olduktan sonra App Store review için submit edin
2. **CI/CD**: Fastlane ile otomatik build ve deploy pipeline kurun
3. **Analytics**: Crash reporting ve analytics entegrasyonu ekleyin
4. **Performance**: App performance monitoring araçları entegre edin

---

**Not**: Bu rehber React Native 0.74 ve iOS 14+ için hazırlanmıştır. Farklı versiyonlarda adımlar değişebilir.
