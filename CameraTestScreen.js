/**
 * Camera Test Screen - Real Camera Implementation
 * Uses react-native-vision-camera for real camera access
 */

import React, { useState, useEffect, useRef } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  SafeAreaView,
  StatusBar,
  Alert,
  PermissionsAndroid,
  Platform,
  ActivityIndicator,
} from 'react-native';
// Import with error handling
let Camera, useCameraDevice, useCameraPermission;

try {
  const VisionCamera = require('react-native-vision-camera');
  Camera = VisionCamera.Camera;
  useCameraDevice = VisionCamera.useCameraDevice;
  useCameraPermission = VisionCamera.useCameraPermission;
} catch (error) {
  console.warn('Vision Camera not available:', error);
  // Fallback - create mock implementations
  Camera = () => null;
  useCameraDevice = () => null;
  useCameraPermission = () => ({ hasPermission: false, requestPermission: async () => false });
}

const CameraTestScreen = ({ onBack }) => {
  const [isActive, setIsActive] = useState(false);
  const [photo, setPhoto] = useState(null);
  const [isCapturing, setIsCapturing] = useState(false);
  const [torchEnabled, setTorchEnabled] = useState(false);
  const [flashMode, setFlashMode] = useState('off'); // 'off', 'on', 'auto'
  const cameraRef = useRef(null);
  
  const { hasPermission, requestPermission } = useCameraPermission();
  const device = useCameraDevice('back');

  useEffect(() => {
    checkPermissions();
    
    return () => {
      // Cleanup: deactivate camera on unmount
      setIsActive(false);
    };
  }, []);

  const checkPermissions = async () => {
    if (!hasPermission) {
      const granted = await requestPermission();
      if (!granted) {
        Alert.alert(
          'Kamera İzni Gerekli',
          'Kamera kullanmak için izin vermeniz gerekiyor.',
          [
            { text: 'İptal', onPress: () => onBack?.() },
            { text: 'İzin Ver', onPress: () => requestPermission() }
          ]
        );
      }
    }
  };

  const takePhoto = async () => {
    if (!cameraRef.current) {
      Alert.alert('Hata', 'Kamera hazır değil');
      return;
    }

    try {
      setIsCapturing(true);
      const photo = await cameraRef.current.takePhoto({
        qualityPrioritization: 'quality',
        flash: flashMode,
      });
      
      setPhoto(photo);
      setIsActive(false);
      
      Alert.alert(
        '✅ Fotoğraf Çekildi!',
        `Fotoğraf başarıyla çekildi!\n\nYol: ${photo.path}\nBoyut: ${(photo.width)}x${(photo.height)}`,
        [
          { text: 'Yeni Fotoğraf', onPress: () => {
            setPhoto(null);
            setIsActive(true);
          }},
          { text: 'Tamam' }
        ]
      );
    } catch (error) {
      Alert.alert('Hata', 'Fotoğraf çekilemedi: ' + error.message);
    } finally {
      setIsCapturing(false);
    }
  };

  if (!hasPermission) {
    return (
      <SafeAreaView style={styles.container}>
        <View style={styles.permissionContainer}>
          <Text style={styles.permissionTitle}>📷 Kamera İzni Gerekli</Text>
          <Text style={styles.permissionText}>
            Kamera kullanmak için izin vermeniz gerekiyor.
          </Text>
          <TouchableOpacity
            style={styles.permissionButton}
            onPress={requestPermission}
          >
            <Text style={styles.permissionButtonText}>İzin Ver</Text>
          </TouchableOpacity>
          <TouchableOpacity
            style={styles.backButton}
            onPress={onBack}
          >
            <Text style={styles.backButtonText}>Geri Dön</Text>
          </TouchableOpacity>
        </View>
      </SafeAreaView>
    );
  }

  if (!device) {
    return (
      <SafeAreaView style={styles.container}>
        <View style={styles.errorContainer}>
          <Text style={styles.errorTitle}>❌ Kamera Bulunamadı</Text>
          <Text style={styles.errorText}>
            Cihazınızda kamera bulunamadı.
          </Text>
          <TouchableOpacity
            style={styles.backButton}
            onPress={onBack}
          >
            <Text style={styles.backButtonText}>Geri Dön</Text>
          </TouchableOpacity>
        </View>
      </SafeAreaView>
    );
  }

  return (
    <SafeAreaView style={styles.container}>
      <StatusBar barStyle="light-content" backgroundColor="#000" />
      
      {/* Header */}
      <View style={styles.header}>
        <TouchableOpacity
          style={styles.headerBackButton}
          onPress={() => {
            setIsActive(false);
            onBack?.();
          }}
        >
          <Text style={styles.headerBackText}>← Geri</Text>
        </TouchableOpacity>
        <Text style={styles.headerTitle}>Kamera Testi</Text>
        <View style={styles.headerSpacer} />
      </View>

      {/* Camera View */}
      {isActive ? (
        <View style={styles.cameraContainer}>
          {device && (
            <Camera
              ref={cameraRef}
              style={StyleSheet.absoluteFill}
              device={device}
              isActive={isActive}
              photo={true}
              torch={torchEnabled ? 'on' : 'off'}
            />
          )}
          
          {/* Top Controls - Flash & Torch */}
          <View style={styles.topControls}>
            <TouchableOpacity
              style={[styles.iconButton, torchEnabled && styles.iconButtonActive]}
              onPress={() => setTorchEnabled(!torchEnabled)}
            >
              <Text style={styles.iconText}>{torchEnabled ? '🔦' : '🔦'}</Text>
              <Text style={styles.iconLabel}>{torchEnabled ? 'Fener: Açık' : 'Fener: Kapalı'}</Text>
            </TouchableOpacity>
            
            <TouchableOpacity
              style={[styles.iconButton, flashMode !== 'off' && styles.iconButtonActive]}
              onPress={() => {
                const modes = ['off', 'on', 'auto'];
                const currentIndex = modes.indexOf(flashMode);
                const nextMode = modes[(currentIndex + 1) % modes.length];
                setFlashMode(nextMode);
              }}
            >
              <Text style={styles.iconText}>⚡</Text>
              <Text style={styles.iconLabel}>
                Flaş: {flashMode === 'off' ? 'Kapalı' : flashMode === 'on' ? 'Açık' : 'Oto'}
              </Text>
            </TouchableOpacity>
          </View>

          {/* Camera Controls */}
          <View style={styles.controlsContainer}>
            <TouchableOpacity
              style={[styles.captureButton, isCapturing && styles.captureButtonDisabled]}
              onPress={takePhoto}
              disabled={isCapturing}
            >
              {isCapturing ? (
                <ActivityIndicator color="#fff" size="large" />
              ) : (
                <View style={styles.captureButtonInner} />
              )}
            </TouchableOpacity>
          </View>
        </View>
      ) : (
        <View style={styles.infoContainer}>
          <Text style={styles.infoIcon}>📷</Text>
          <Text style={styles.infoTitle}>Kamera Hazır</Text>
          <Text style={styles.infoText}>
            Kamera başarıyla başlatıldı ve kullanıma hazır.
          </Text>
          
          {photo && (
            <View style={styles.photoInfo}>
              <Text style={styles.photoInfoTitle}>✅ Son Fotoğraf:</Text>
              <Text style={styles.photoInfoText}>Yol: {photo.path}</Text>
              <Text style={styles.photoInfoText}>
                Boyut: {photo.width}x{photo.height}
              </Text>
            </View>
          )}
          
          <TouchableOpacity
            style={styles.startButton}
            onPress={() => setIsActive(true)}
          >
            <Text style={styles.startButtonText}>📸 Kamerayı Aç</Text>
          </TouchableOpacity>
          
          <View style={styles.instructionsContainer}>
            <Text style={styles.instructionsTitle}>📋 Talimatlar:</Text>
            <Text style={styles.instructionsText}>
              1. "Kamerayı Aç" butonuna tıklayın{'\n'}
              2. Kamera önizlemesi açılacak{'\n'}
              3. Beyaz butona basarak fotoğraf çekin{'\n'}
              4. Fotoğraf bilgilerini görün
            </Text>
          </View>
        </View>
      )}
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#000',
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    padding: 16,
    backgroundColor: '#1a1a1a',
  },
  headerBackButton: {
    padding: 8,
  },
  headerBackText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: '600',
  },
  headerTitle: {
    color: '#fff',
    fontSize: 18,
    fontWeight: 'bold',
  },
  headerSpacer: {
    width: 60,
  },
  permissionContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
    backgroundColor: '#fff',
  },
  permissionTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#212121',
    marginBottom: 16,
    textAlign: 'center',
  },
  permissionText: {
    fontSize: 16,
    color: '#757575',
    textAlign: 'center',
    marginBottom: 32,
  },
  permissionButton: {
    backgroundColor: '#2196F3',
    paddingHorizontal: 32,
    paddingVertical: 16,
    borderRadius: 12,
    marginBottom: 16,
  },
  permissionButtonText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
  },
  backButton: {
    backgroundColor: '#757575',
    paddingHorizontal: 32,
    paddingVertical: 16,
    borderRadius: 12,
  },
  backButtonText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
  },
  errorContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
    backgroundColor: '#fff',
  },
  errorTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#F44336',
    marginBottom: 16,
    textAlign: 'center',
  },
  errorText: {
    fontSize: 16,
    color: '#757575',
    textAlign: 'center',
    marginBottom: 32,
  },
  cameraContainer: {
    flex: 1,
  },
  topControls: {
    position: 'absolute',
    top: 20,
    left: 0,
    right: 0,
    flexDirection: 'row',
    justifyContent: 'space-around',
    paddingHorizontal: 20,
  },
  iconButton: {
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
    paddingHorizontal: 16,
    paddingVertical: 10,
    borderRadius: 20,
    alignItems: 'center',
    borderWidth: 2,
    borderColor: 'transparent',
  },
  iconButtonActive: {
    backgroundColor: 'rgba(33, 150, 243, 0.8)',
    borderColor: '#fff',
  },
  iconText: {
    fontSize: 24,
    marginBottom: 4,
  },
  iconLabel: {
    color: '#fff',
    fontSize: 11,
    fontWeight: '600',
  },
  controlsContainer: {
    position: 'absolute',
    bottom: 40,
    left: 0,
    right: 0,
    alignItems: 'center',
  },
  captureButton: {
    width: 80,
    height: 80,
    borderRadius: 40,
    backgroundColor: 'rgba(255, 255, 255, 0.3)',
    justifyContent: 'center',
    alignItems: 'center',
    borderWidth: 4,
    borderColor: '#fff',
  },
  captureButtonDisabled: {
    opacity: 0.5,
  },
  captureButtonInner: {
    width: 64,
    height: 64,
    borderRadius: 32,
    backgroundColor: '#fff',
  },
  infoContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
    backgroundColor: '#fff',
  },
  infoIcon: {
    fontSize: 64,
    marginBottom: 16,
  },
  infoTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#212121',
    marginBottom: 12,
  },
  infoText: {
    fontSize: 16,
    color: '#757575',
    textAlign: 'center',
    marginBottom: 24,
  },
  photoInfo: {
    backgroundColor: '#E8F5E9',
    padding: 16,
    borderRadius: 12,
    marginBottom: 24,
    width: '100%',
    borderWidth: 1,
    borderColor: '#4CAF50',
  },
  photoInfoTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#2E7D32',
    marginBottom: 8,
  },
  photoInfoText: {
    fontSize: 14,
    color: '#558B2F',
    marginBottom: 4,
  },
  startButton: {
    backgroundColor: '#2196F3',
    paddingHorizontal: 32,
    paddingVertical: 16,
    borderRadius: 12,
    marginBottom: 24,
  },
  startButtonText: {
    color: '#fff',
    fontSize: 18,
    fontWeight: 'bold',
  },
  instructionsContainer: {
    backgroundColor: '#FFF3E0',
    padding: 16,
    borderRadius: 12,
    width: '100%',
    borderWidth: 1,
    borderColor: '#FF9800',
  },
  instructionsTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#E65100',
    marginBottom: 8,
  },
  instructionsText: {
    fontSize: 14,
    color: '#F57C00',
    lineHeight: 22,
  },
});

export default CameraTestScreen;
