# 📚 KULLANIM ÖRNEKLERİ

Bu dosya yeni eklenen modüllerin nasıl kullanılacağını gösterir.

---

## 📸 Vision Camera Kullanımı

### 1. Kamera İzinlerini Kontrol Et

```javascript
import CameraModule from './modules/camera/CameraModule';

// İzin durumunu kontrol et
const checkPermissions = async () => {
  const status = await CameraModule.getCameraPermissionStatus();
  
  if (status !== 'authorized') {
    const granted = await CameraModule.requestCameraPermission();
    if (!granted) {
      console.log('Kamera izni reddedildi');
      return false;
    }
  }
  return true;
};
```

### 2. Basit Kamera Kullanımı

```javascript
import React, { useRef, useState } from 'react';
import { View, TouchableOpacity, Text, Image } from 'react-native';
import { Camera } from 'react-native-vision-camera';
import CameraModule from './modules/camera/CameraModule';

const CameraScreen = () => {
  const camera = useRef(null);
  const [photoPath, setPhotoPath] = useState(null);
  const { backCamera, hasCamera } = CameraModule.useCameraSetup();

  const takePhoto = async () => {
    try {
      const photo = await CameraModule.takePhoto(camera, {
        flash: 'off',
        qualityPrioritization: 'quality',
      });
      
      setPhotoPath(photo.path);
      console.log('Fotoğraf çekildi:', photo.path);
    } catch (error) {
      console.error('Fotoğraf çekme hatası:', error);
    }
  };

  if (!hasCamera || !backCamera) {
    return <Text>Kamera bulunamadı</Text>;
  }

  return (
    <View style={{ flex: 1 }}>
      <Camera
        ref={camera}
        style={{ flex: 1 }}
        device={backCamera}
        isActive={true}
        photo={true}
      />
      
      <TouchableOpacity
        style={{
          position: 'absolute',
          bottom: 40,
          alignSelf: 'center',
          backgroundColor: 'white',
          padding: 20,
          borderRadius: 50,
        }}
        onPress={takePhoto}
      >
        <Text>📷 Fotoğraf Çek</Text>
      </TouchableOpacity>

      {photoPath && (
        <Image
          source={{ uri: `file://${photoPath}` }}
          style={{
            position: 'absolute',
            top: 20,
            right: 20,
            width: 100,
            height: 100,
            borderRadius: 10,
          }}
        />
      )}
    </View>
  );
};

export default CameraScreen;
```

---

## 👤 ML Kit Face Detection Kullanımı

### 1. Yüz Algılama (Dosya Yolu ile)

```javascript
import FaceDetectionModule from './modules/faceDetection/FaceDetectionModule';

const detectFacesInImage = async (imagePath) => {
  try {
    const result = await FaceDetectionModule.detectFaces(imagePath);
    
    console.log(`${result.faceCount} yüz algılandı`);
    
    result.faces.forEach((face, index) => {
      console.log(`Yüz ${index + 1}:`, {
        boundingBox: face.boundingBox,
        headAngleY: face.headEulerAngleY,
        headAngleZ: face.headEulerAngleZ,
        smilingProbability: face.smilingProbability,
        leftEyeOpen: face.leftEyeOpenProbability,
        rightEyeOpen: face.rightEyeOpenProbability,
      });
    });
    
    return result;
  } catch (error) {
    console.error('Yüz algılama hatası:', error);
    throw error;
  }
};
```

### 2. Canlılık Tespiti

```javascript
const checkLiveness = async (imagePath) => {
  try {
    const result = await FaceDetectionModule.checkLiveness(imagePath);
    
    if (result.isLive) {
      console.log('✅ Canlı yüz tespit edildi');
      console.log('Metrikler:', result.metrics);
    } else {
      console.log('❌ Sahte yüz veya sorunlu:', result.reason);
    }
    
    return result;
  } catch (error) {
    console.error('Canlılık tespiti hatası:', error);
    throw error;
  }
};
```

### 3. Base64 İle Yüz Algılama

```javascript
const detectFromBase64 = async (base64Image) => {
  try {
    const result = await FaceDetectionModule.detectFacesFromBase64(base64Image);
    console.log('Algılanan yüz sayısı:', result.faceCount);
    return result;
  } catch (error) {
    console.error('Base64 yüz algılama hatası:', error);
    throw error;
  }
};
```

### 4. Yüz Kalitesi Analizi

```javascript
const analyzeFaceQuality = async (imagePath) => {
  try {
    const result = await FaceDetectionModule.detectFaces(imagePath);
    
    if (result.faceCount === 0) {
      console.log('Yüz bulunamadı');
      return null;
    }
    
    const face = result.faces[0];
    const quality = FaceDetectionModule.analyzeFaceQuality(face);
    
    console.log('Yüz Kalitesi:', {
      score: quality.score,
      isFrontal: quality.isFrontal ? '✅' : '❌',
      eyesOpen: quality.eyesOpen ? '✅' : '❌',
      hasGoodLighting: quality.hasGoodLighting ? '✅' : '❌',
    });
    
    return quality;
  } catch (error) {
    console.error('Kalite analizi hatası:', error);
    throw error;
  }
};
```

### 5. İki Yüzü Karşılaştırma

```javascript
const compareTwoFaces = async (imagePath1, imagePath2) => {
  try {
    const result1 = await FaceDetectionModule.detectFaces(imagePath1);
    const result2 = await FaceDetectionModule.detectFaces(imagePath2);
    
    if (result1.faceCount === 0 || result2.faceCount === 0) {
      console.log('Her iki resimde de yüz bulunamadı');
      return null;
    }
    
    const face1 = result1.faces[0];
    const face2 = result2.faces[0];
    
    const comparison = FaceDetectionModule.compareFaces(face1, face2);
    
    console.log('Karşılaştırma Sonucu:', {
      similarity: `${comparison.similarity}%`,
      isMatch: comparison.isMatch ? '✅ Eşleşti' : '❌ Eşleşmedi',
      confidence: comparison.confidence,
    });
    
    return comparison;
  } catch (error) {
    console.error('Yüz karşılaştırma hatası:', error);
    throw error;
  }
};
```

---

## 📷 + 👤 Tam Entegrasyon Örneği

### Selfie Doğrulama Ekranı

```javascript
import React, { useRef, useState, useEffect } from 'react';
import { View, Text, TouchableOpacity, StyleSheet, Alert } from 'react-native';
import { Camera } from 'react-native-vision-camera';
import CameraModule from './modules/camera/CameraModule';
import FaceDetectionModule from './modules/faceDetection/FaceDetectionModule';

const SelfieVerificationScreen = () => {
  const camera = useRef(null);
  const [hasPermission, setHasPermission] = useState(false);
  const [isProcessing, setIsProcessing] = useState(false);
  const { backCamera, frontCamera, hasCamera } = CameraModule.useCameraSetup();

  useEffect(() => {
    checkPermissions();
  }, []);

  const checkPermissions = async () => {
    const granted = await CameraModule.requestCameraPermission();
    setHasPermission(granted);
  };

  const takeSelfie = async () => {
    if (!camera.current) return;
    
    setIsProcessing(true);
    
    try {
      // 1. Fotoğraf çek
      const photo = await CameraModule.takePhoto(camera, {
        flash: 'off',
        qualityPrioritization: 'quality',
      });
      
      console.log('Selfie çekildi:', photo.path);
      
      // 2. Yüz algıla
      const faceResult = await FaceDetectionModule.detectFaces(photo.path);
      
      if (faceResult.faceCount === 0) {
        Alert.alert('Hata', 'Yüz algılanamadı. Lütfen tekrar deneyin.');
        setIsProcessing(false);
        return;
      }
      
      if (faceResult.faceCount > 1) {
        Alert.alert('Hata', 'Birden fazla yüz algılandı. Lütfen tek kişi olduğunuzdan emin olun.');
        setIsProcessing(false);
        return;
      }
      
      // 3. Canlılık tespiti yap
      const livenessResult = await FaceDetectionModule.checkLiveness(photo.path);
      
      if (!livenessResult.isLive) {
        Alert.alert('Canlılık Tespiti Başarısız', livenessResult.reason);
        setIsProcessing(false);
        return;
      }
      
      // 4. Yüz kalitesi analizi
      const face = faceResult.faces[0];
      const quality = FaceDetectionModule.analyzeFaceQuality(face);
      
      if (quality.score < 50) {
        Alert.alert(
          'Düşük Kalite',
          `Fotoğraf kalitesi yetersiz (Skor: ${quality.score}/100). Lütfen:\n` +
          `${!quality.isFrontal ? '- Yüzünüzü kameraya doğru tutun\n' : ''}` +
          `${!quality.eyesOpen ? '- Gözlerinizi açık tutun\n' : ''}` +
          `${!quality.hasGoodLighting ? '- Daha iyi ışıklandırma sağlayın\n' : ''}`
        );
        setIsProcessing(false);
        return;
      }
      
      // 5. Başarılı!
      Alert.alert(
        'Başarılı! ✅',
        `Selfie doğrulandı!\n\n` +
        `Kalite Skoru: ${quality.score}/100\n` +
        `Canlılık: ${livenessResult.isLive ? '✅' : '❌'}\n` +
        `Yüz Açısı Y: ${face.headEulerAngleY.toFixed(1)}°\n` +
        `Yüz Açısı Z: ${face.headEulerAngleZ.toFixed(1)}°`
      );
      
      // TODO: Fotoğrafı sunucuya gönder veya kaydet
      
    } catch (error) {
      console.error('Selfie doğrulama hatası:', error);
      Alert.alert('Hata', 'Bir hata oluştu. Lütfen tekrar deneyin.');
    } finally {
      setIsProcessing(false);
    }
  };

  if (!hasPermission) {
    return (
      <View style={styles.container}>
        <Text>Kamera izni gerekli</Text>
        <TouchableOpacity onPress={checkPermissions}>
          <Text>İzin İste</Text>
        </TouchableOpacity>
      </View>
    );
  }

  if (!hasCamera || !frontCamera) {
    return (
      <View style={styles.container}>
        <Text>Kamera bulunamadı</Text>
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <Camera
        ref={camera}
        style={styles.camera}
        device={frontCamera}
        isActive={true}
        photo={true}
      />
      
      <View style={styles.overlay}>
        <Text style={styles.title}>Selfie Doğrulama</Text>
        <Text style={styles.instructions}>
          Yüzünüzü oval içinde tutun
        </Text>
      </View>
      
      <TouchableOpacity
        style={[
          styles.captureButton,
          isProcessing && styles.captureButtonDisabled
        ]}
        onPress={takeSelfie}
        disabled={isProcessing}
      >
        <Text style={styles.captureButtonText}>
          {isProcessing ? '⏳ İşleniyor...' : '📷 Selfie Çek'}
        </Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#000',
  },
  camera: {
    flex: 1,
  },
  overlay: {
    position: 'absolute',
    top: 60,
    left: 0,
    right: 0,
    alignItems: 'center',
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#fff',
    marginBottom: 10,
  },
  instructions: {
    fontSize: 16,
    color: '#fff',
    textAlign: 'center',
  },
  captureButton: {
    position: 'absolute',
    bottom: 40,
    alignSelf: 'center',
    backgroundColor: '#007AFF',
    paddingHorizontal: 40,
    paddingVertical: 15,
    borderRadius: 25,
  },
  captureButtonDisabled: {
    backgroundColor: '#666',
  },
  captureButtonText: {
    color: '#fff',
    fontSize: 18,
    fontWeight: 'bold',
  },
});

export default SelfieVerificationScreen;
```

---

## 🎯 Önemli Notlar

### Vision Camera Permissions

AndroidManifest.xml'e eklenmiş olmalı:

```xml
<uses-permission android:name="android.permission.CAMERA" />
```

### ML Kit Kullanımı

- İlk kez çalıştırıldığında model indirilir (internet gerekli)
- Sonraki kullanımlarda offline çalışır
- Yüz kalitesi için iyi ışıklandırma önemli

### Performans

- Kamera preview sürekli çalışırken yüz algılama throttle edilmeli
- Her frame için yüz algılama yapmayın (örn: 1 saniyede 1 kez)
- Yüksek çözünürlük fotoğraflar yüz algılamayı yavaşlatabilir

---

## 📖 Daha Fazla Bilgi

- [Vision Camera v3 Docs](https://react-native-vision-camera.com/docs/guides)
- [ML Kit Face Detection](https://developers.google.com/ml-kit/vision/face-detection)
