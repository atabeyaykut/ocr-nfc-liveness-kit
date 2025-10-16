# SDK UX & Erişilebilirlik Önerileri

**Versiyon:** 1.0  
**Tarih:** 2025-10-16  
**Kapsam:** OCR, NFC, Liveness Modülleri

---

## 📋 UX Skor Özeti

| Kategori | Skor | Durum |
|----------|------|-------|
| **İzin Yönetimi** | 65% | 🟡 |
| **Hata Mesajları** | 70% | 🟡 |
| **Kullanıcı Yönlendirme** | 60% | 🟡 |
| **Görsel Geri Bildirim** | 75% | 🟢 |
| **Erişilebilirlik** | 40% | 🔴 |
| **Lokalizasyon** | 50% | 🔴 |
| **Genel UX Skoru** | **60%** | 🟡 |

---

## 1. İZİN YÖNETİMİ

### 1.1 Kamera İzni

**❌ Mevcut Durum:**
```javascript
// Doğrudan kamera açılıyor, context yok
await camera.start();
// Red edilirse sadece "Permission denied" hatası
```

**✅ Önerilen Yaklaşım:**
```javascript
// 1. Pre-permission education screen
const educateUser = () => (
  <View style={styles.educationScreen}>
    <Image source={require('./camera-icon.png')} />
    <Text style={styles.title}>
      Kimlik Belgesi Taraması İçin Kamera Gerekli
    </Text>
    <Text style={styles.description}>
      Kimliğinizdeki bilgileri otomatik okumak için kamera erişimine ihtiyacımız var.
      Fotoğraflarınız cihazınızda işlenir ve saklanmaz.
    </Text>
    <Button onPress={requestPermission}>İzin Ver</Button>
    <Button onPress={skipToManual} type="secondary">Manuel Giriş</Button>
  </View>
);

// 2. Contextual permission request
const requestPermission = async () => {
  const status = await Camera.requestPermission();
  
  if (status === 'denied') {
    // Kullanıcı reddetti
    showAlert({
      title: 'Kamera İzni Gerekli',
      message: 'Kimlik belgesi taramak için kamera erişimi gerekiyor.',
      buttons: [
        { text: 'Ayarları Aç', onPress: openSettings },
        { text: 'Manuel Giriş Yap', onPress: skipToManual }
      ]
    });
  }
};

// 3. Settings deep link
const openSettings = () => {
  if (Platform.OS === 'ios') {
    Linking.openURL('app-settings:');
  } else {
    Linking.openSettings();
  }
};
```

**Accessibility:**
```javascript
<Button
  accessible={true}
  accessibilityLabel="Kamera iznini ver"
  accessibilityHint="Kimlik belgenizi taramak için kamera erişimi verir"
  onPress={requestPermission}
/>
```

### 1.2 NFC İzni

**✅ iOS Specific - Inline Instruction:**
```javascript
<View style={styles.nfcInstructions}>
  <AnimatedNFCIcon />
  <Text style={styles.instructionText}>
    Kimlik kartınızı iPhone'unuzun üst kısmına yaklaştırın
  </Text>
  {Platform.OS === 'ios' && Platform.Version < '13.0' && (
    <Text style={styles.warningText}>
      ⚠️ NFC okuma iOS 13+ gerektirir. Lütfen güncelleme yapın.
    </Text>
  )}
</View>
```

---

## 2. HATA MESAJLARİ

### 2.1 User-Friendly Error Messages

**❌ Kötü Örnek:**
```
Error: OCR_002
Low light condition detected
```

**✅ İyi Örnek:**
```javascript
const ERROR_MESSAGES = {
  // Türkçe
  tr: {
    OCR_002: {
      title: 'Fotoğraf Karanlık',
      message: 'Kimlik belgeniz yeterince aydınlık değil.',
      suggestion: 'Lambayı açın veya pencere kenarına gidin.',
      action: 'Tekrar Dene',
      illustration: 'light-bulb-icon.png'
    },
    OCR_003: {
      title: 'Yansıma Var',
      message: 'Kimlik belgenizde parlama görüyoruz.',
      suggestion: 'Işığı doğrudan belgeye tutmayın. Hafif açıdan tutun.',
      action: 'Tekrar Çek',
      illustration: 'no-glare-icon.png'
    },
    NFC_001: {
      title: 'Zaman Aşımı',
      message: 'Kimlik kartı okunamadı.',
      suggestion: 'Kartı telefonun arkasına yaklaştırıp 5 saniye tutun.',
      action: 'Tekrar Dene',
      illustration: 'nfc-position.gif'
    }
  },
  
  // İngilizce
  en: {
    OCR_002: {
      title: 'Photo Too Dark',
      message: 'Your ID card is not bright enough.',
      suggestion: 'Turn on the light or move near a window.',
      action: 'Try Again',
      illustration: 'light-bulb-icon.png'
    }
  }
};

// Component
const ErrorScreen = ({ errorCode, onRetry }) => {
  const locale = useLocale();
  const error = ERROR_MESSAGES[locale][errorCode];
  
  return (
    <View style={styles.errorContainer}>
      <Image source={error.illustration} style={styles.illustration} />
      <Text style={styles.errorTitle}>{error.title}</Text>
      <Text style={styles.errorMessage}>{error.message}</Text>
      <View style={styles.suggestionBox}>
        <Icon name="lightbulb" />
        <Text style={styles.suggestion}>{error.suggestion}</Text>
      </View>
      <Button onPress={onRetry}>{error.action}</Button>
    </View>
  );
};
```

### 2.2 Progressive Error Disclosure

```javascript
// 1st attempt: Basit mesaj
"Fotoğraf bulanık. Lütfen tekrar çekin."

// 2nd attempt: Daha detaylı
"Fotoğraf hala bulanık. Telefonu sabit tutun ve odaklanmasını bekleyin."

// 3rd attempt: Video tutorial
"Sorun devam ediyor. Nasıl çekilir? (Video izle)"

// 4th attempt: Manuel giriş önerisi
"Otomatik okuma çalışmıyor. Manuel olarak girmek ister misiniz?"
```

---

## 3. KULLANICI YÖNLENDİRME

### 3.1 OCR Kamera Rehberi

**Real-time Overlay:**
```javascript
const CameraGuide = ({ frameDetected, quality }) => (
  <View style={styles.overlay}>
    {/* Document frame overlay */}
    <View style={[
      styles.documentFrame,
      frameDetected && styles.frameDetected
    ]}>
      {!frameDetected && (
        <Text style={styles.guideText}>
          Kimlik kartınızı çerçeveye yerleştirin
        </Text>
      )}
      
      {frameDetected && quality.tooFar && (
        <Text style={styles.guideText}>📏 Daha yakın tutun</Text>
      )}
      
      {frameDetected && quality.tooClose && (
        <Text style={styles.guideText}>📏 Biraz uzaklaştırın</Text>
      )}
      
      {frameDetected && quality.glare && (
        <Text style={styles.guideText}>💡 Işık yansıyor</Text>
      )}
      
      {frameDetected && quality.blur && (
        <Text style={styles.guideText}>🤚 Telefonu sabit tutun</Text>
      )}
      
      {frameDetected && quality.perfect && (
        <View style={styles.perfectState}>
          <CheckIcon color="green" size={48} />
          <Text style={styles.guideText}>✅ Mükemmel! Çekiliyor...</Text>
        </View>
      )}
    </View>
    
    {/* Quality indicators */}
    <View style={styles.qualityBar}>
      <QualityIndicator label="Işık" value={quality.brightness} />
      <QualityIndicator label="Netlik" value={quality.sharpness} />
      <QualityIndicator label="Açı" value={quality.angle} />
    </View>
  </View>
);
```

### 3.2 NFC Pozisyon Rehberi

```javascript
const NFCPositionGuide = ({ deviceModel }) => {
  // Device-specific NFC antenna position
  const nfcPosition = getNFCAntennaPosition(deviceModel);
  
  return (
    <View style={styles.nfcGuide}>
      <AnimatedPhone model={deviceModel}>
        <NFCAntennaHighlight position={nfcPosition} />
      </AnimatedPhone>
      
      <Text style={styles.instruction}>
        {deviceModel === 'iPhone' 
          ? 'Kartı telefonun üst kısmına yaklaştırın'
          : 'Kartı telefonun arkasına yaklaştırın'}
      </Text>
      
      <ProgressCircle timeout={10} />
      
      <Button onPress={showDetailedGuide} type="link">
        Daha detaylı yardım
      </Button>
    </View>
  );
};

// Detailed guide with video
const DetailedNFCGuide = () => (
  <ScrollView>
    <Video source={require('./nfc-tutorial.mp4')} />
    <Text style={styles.stepTitle}>Adım 1: Kartı çıkarın</Text>
    <Text style={styles.stepDescription}>
      Kimlik kartınızı cüzdanınızdan çıkarın.
    </Text>
    <Image source={require('./step1.png')} />
    
    <Text style={styles.stepTitle}>Adım 2: Telefonu düz tutun</Text>
    <Text style={styles.stepDescription}>
      Telefonu masada veya elinizde düz tutun.
    </Text>
    
    <Text style={styles.stepTitle}>Adım 3: Kartı yaklaştırın</Text>
    <Text style={styles.stepDescription}>
      Kartı telefonun {getNFCPosition()} 5 saniye tutun.
    </Text>
  </ScrollView>
);
```

### 3.3 Liveness Challenge Instructions

```javascript
const LivenessInstructions = ({ challenge, progress }) => {
  const instructions = {
    BLINK: {
      text: 'Göz kırpın',
      voice: 'Lütfen göz kırpın',
      icon: '👁️',
      animation: 'blink.lottie'
    },
    TURN_LEFT: {
      text: 'Başınızı sola çevirin',
      voice: 'Başınızı sola çevirin',
      icon: '⬅️',
      animation: 'turn-left.lottie'
    },
    SMILE: {
      text: 'Gülümseyin',
      voice: 'Lütfen gülümseyin',
      icon: '😊',
      animation: 'smile.lottie'
    }
  };
  
  const current = instructions[challenge];
  
  return (
    <View style={styles.instructionOverlay}>
      <LottieView source={current.animation} autoPlay loop />
      <Text style={styles.largeInstruction}>{current.icon}</Text>
      <Text style={styles.instructionText}>{current.text}</Text>
      
      <ProgressBar 
        current={progress.completed} 
        total={progress.total} 
      />
      
      {/* Voice instruction */}
      <TextToSpeech text={current.voice} locale="tr-TR" />
    </View>
  );
};
```

---

## 4. ERİŞİLEBİLİRLİK

### 4.1 Screen Reader Support

```javascript
// VoiceOver (iOS) & TalkBack (Android) support
const AccessibleButton = ({ label, hint, onPress }) => (
  <TouchableOpacity
    accessible={true}
    accessibilityLabel={label}
    accessibilityHint={hint}
    accessibilityRole="button"
    onPress={onPress}
  >
    <Text>{label}</Text>
  </TouchableOpacity>
);

// Usage
<AccessibleButton
  label="Kimlik belgesi tarama başlat"
  hint="Kimliğinizi taramak için kamerayı açar"
  onPress={startOCR}
/>

// Live region for dynamic content
<View
  accessible={true}
  accessibilityLiveRegion="polite"
  accessibilityLabel={`OCR işlemi ${progress}% tamamlandı`}
>
  <ProgressBar progress={progress} />
</View>
```

### 4.2 Sesli Yönlendirme

```javascript
import Tts from 'react-native-tts';

const VoiceGuidance = () => {
  const speak = async (text) => {
    await Tts.setDefaultLanguage('tr-TR');
    await Tts.speak(text);
  };
  
  // OCR guidance
  useEffect(() => {
    if (quality.tooFar) {
      speak('Lütfen kimlik kartınızı daha yakın tutun');
    } else if (quality.glare) {
      speak('Işık yansıyor. Kartı hafif açıdan tutun');
    } else if (quality.perfect) {
      speak('Mükemmel. Fotoğraf çekiliyor');
    }
  }, [quality]);
  
  // Liveness challenges
  useEffect(() => {
    speak(challengeInstructions[currentChallenge]);
  }, [currentChallenge]);
};

// Accessibility settings
const AccessibilitySettings = () => (
  <View>
    <Switch
      label="Sesli yönlendirme"
      value={voiceGuidanceEnabled}
      onChange={setVoiceGuidance}
      accessible={true}
      accessibilityLabel="Sesli yönlendirmeyi aç kapa"
    />
    
    <Switch
      label="Titreşim geri bildirimi"
      value={hapticEnabled}
      onChange={setHaptic}
    />
    
    <Slider
      label="Yazı boyutu"
      min={12}
      max={24}
      value={fontSize}
      onChange={setFontSize}
      accessible={true}
      accessibilityLabel="Yazı boyutunu ayarla"
    />
  </View>
);
```

### 4.3 Yüksek Kontrast Modu

```javascript
const useHighContrast = () => {
  const colorScheme = useColorScheme();
  const [highContrast, setHighContrast] = useState(false);
  
  const colors = highContrast ? {
    background: '#000000',
    text: '#FFFFFF',
    primary: '#FFFF00',  // Yüksek kontrast sarı
    error: '#FF0000',
    success: '#00FF00'
  } : {
    background: colorScheme === 'dark' ? '#1A1A1A' : '#FFFFFF',
    text: colorScheme === 'dark' ? '#E0E0E0' : '#333333',
    primary: '#007AFF',
    error: '#FF3B30',
    success: '#34C759'
  };
  
  return { colors, highContrast, setHighContrast };
};
```

### 4.4 Alternatif Input Methodları

```javascript
// Manuel veri girişi alternatifi
const ManualInputOption = () => (
  <View>
    <Text>OCR çalışmıyor mu?</Text>
    <Button onPress={() => navigate('ManualInput')}>
      Manuel Olarak Gir
    </Button>
  </View>
);

// Manuel form
const ManualIDForm = () => (
  <Form>
    <TextInput
      label="TC Kimlik No"
      keyboardType="number-pad"
      maxLength={11}
      accessibilityLabel="T C Kimlik Numarası"
      accessibilityHint="11 haneli kimlik numaranızı girin"
    />
    <TextInput
      label="Ad"
      autoCapitalize="characters"
      accessibilityLabel="Adınız"
    />
    <TextInput
      label="Soyad"
      autoCapitalize="characters"
      accessibilityLabel="Soyadınız"
    />
    <DatePicker
      label="Doğum Tarihi"
      accessibilityLabel="Doğum tarihinizi seçin"
    />
  </Form>
);
```

---

## 5. LOKALİZASYON

### 5.1 Çoklu Dil Desteği

```javascript
// i18n configuration
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';

i18n
  .use(initReactI18next)
  .init({
    resources: {
      tr: {
        translation: {
          'ocr.title': 'Kimlik Belgesi Taraması',
          'ocr.instruction': 'Kimlik kartınızı çerçeveye yerleştirin',
          'ocr.error.lowLight': 'Fotoğraf karanlık. Lütfen ışık altında çekin.',
          'nfc.title': 'Kimlik Kartı Okuma',
          'nfc.instruction': 'Kartınızı telefonun {{position}} yaklaştırın',
          'liveness.challenge.blink': 'Göz kırpın',
          'common.retry': 'Tekrar Dene',
          'common.cancel': 'İptal',
          'common.continue': 'Devam Et'
        }
      },
      en: {
        translation: {
          'ocr.title': 'ID Document Scanning',
          'ocr.instruction': 'Place your ID card in the frame',
          'ocr.error.lowLight': 'Photo is dark. Please take in good lighting.',
          'nfc.title': 'ID Card Reading',
          'nfc.instruction': 'Hold your card near the {{position}} of your phone',
          'liveness.challenge.blink': 'Blink your eyes',
          'common.retry': 'Try Again',
          'common.cancel': 'Cancel',
          'common.continue': 'Continue'
        }
      },
      ar: {
        // Arabic (RTL support)
        translation: {
          'ocr.title': 'مسح بطاقة الهوية',
          // ...
        }
      }
    },
    lng: 'tr',
    fallbackLng: 'en',
    interpolation: {
      escapeValue: false
    }
  });

// Usage
import { useTranslation } from 'react-i18next';

const OCRScreen = () => {
  const { t, i18n } = useTranslation();
  
  return (
    <View>
      <Text>{t('ocr.title')}</Text>
      <Text>{t('ocr.instruction')}</Text>
      <Button onPress={() => i18n.changeLanguage('en')}>
        English
      </Button>
    </View>
  );
};
```

### 5.2 RTL (Right-to-Left) Support

```javascript
import { I18nManager } from 'react-native';

const isRTL = I18nManager.isRTL;

const styles = StyleSheet.create({
  container: {
    flexDirection: isRTL ? 'row-reverse' : 'row',
  },
  text: {
    textAlign: isRTL ? 'right' : 'left',
  }
});
```

---

## 6. PERFORMANS & UX OPTIMIZATION

### 6.1 Loading States

```javascript
const LoadingIndicator = ({ stage, progress }) => {
  const stages = {
    preprocessing: 'Görüntü işleniyor...',
    recognition: 'Metin tanınıyor...',
    validation: 'Doğrulanıyor...'
  };
  
  return (
    <View style={styles.loadingContainer}>
      <ActivityIndicator size="large" />
      <Text style={styles.loadingText}>{stages[stage]}</Text>
      <ProgressBar progress={progress} />
      <Text style={styles.progressText}>{Math.round(progress * 100)}%</Text>
    </View>
  );
};
```

### 6.2 Haptic Feedback

```javascript
import ReactNativeHapticFeedback from 'react-native-haptic-feedback';

// Success haptic
const onSuccess = () => {
  ReactNativeHapticFeedback.trigger('notificationSuccess');
  showSuccessAnimation();
};

// Error haptic
const onError = () => {
  ReactNativeHapticFeedback.trigger('notificationError');
  showErrorAnimation();
};

// Light impact (button press)
const onButtonPress = () => {
  ReactNativeHapticFeedback.trigger('impactLight');
};
```

### 6.3 Skeleton Screens

```javascript
const SkeletonLoader = () => (
  <View>
    <ShimmerPlaceholder style={styles.titleSkeleton} />
    <ShimmerPlaceholder style={styles.imageSkeleton} />
    <ShimmerPlaceholder style={styles.buttonSkeleton} />
  </View>
);

// Usage
{isLoading ? <SkeletonLoader /> : <ActualContent />}
```

---

## 7. UX CHECKLIST

### Must Have ✅

- [ ] Context-aware permission requests
- [ ] User-friendly error messages (not error codes)
- [ ] Real-time camera guidance
- [ ] Progress indicators for long operations
- [ ] Retry mechanisms with suggestions
- [ ] Manual input alternative
- [ ] Accessibility labels on all interactive elements
- [ ] Minimum touch target size (44x44pt iOS, 48x48dp Android)

### Should Have ⚠️

- [ ] Voice guidance for vision-impaired users
- [ ] Haptic feedback
- [ ] High contrast mode
- [ ] Multi-language support (TR, EN minimum)
- [ ] Detailed help/tutorial screens
- [ ] Device-specific NFC guidance
- [ ] Skeleton loading states

### Nice to Have 💡

- [ ] Dark mode
- [ ] RTL language support
- [ ] Animations (Lottie)
- [ ] Video tutorials
- [ ] A/B tested UX flows
- [ ] In-app feedback mechanism

---

## 8. A/B TEST ÖNERİLERİ

### Test 1: Permission Request Timing

**Variant A:** İlk açılışta permission iste  
**Variant B:** Kullanıcı "Başla" butonuna bastığında iste  
**Metric:** Permission grant rate

### Test 2: Error Message Style

**Variant A:** Teknik mesaj + kod  
**Variant B:** User-friendly mesaj + görsel  
**Metric:** Retry rate, success rate

### Test 3: NFC Guidance

**Variant A:** Statik resim  
**Variant B:** Animated GIF  
**Variant C:** Video tutorial  
**Metric:** NFC success rate, time to success

---

**Son Güncelleme:** 2025-10-16  
**UX Lead:** [İsim]  
**Accessibility Review:** [İsim]
