/**
 * OCR Camera Capture Component
 * Real camera implementation using react-native-vision-camera
 * Replaces mock captureImage() implementation
 */

import React, { useRef, useState, useEffect } from 'react';
import { View, Text, StyleSheet, TouchableOpacity, Alert } from 'react-native';
import { Camera, useCameraDevices } from 'react-native-vision-camera';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';
import Logger from '../../utils/logger';

/**
 * OCR Camera Capture Component
 * @param {function} onPhoto - Callback when photo is captured (path, error)
 * @param {string} cameraPosition - 'back' or 'front'
 * @param {object} captureOptions - Quality and other options
 */
export default function OCRCameraCapture({ 
  onPhoto, 
  cameraPosition = 'back',
  captureOptions = {},
  showGuide = true 
}) {
  const devices = useCameraDevices();
  const device = cameraPosition === 'back' ? devices.back : devices.front;
  const camera = useRef(null);
  const [hasPermission, setHasPermission] = useState(false);
  const [isReady, setIsReady] = useState(false);

  useEffect(() => {
    checkCameraPermission();
  }, []);

  /**
   * Check and request camera permission
   */
  const checkCameraPermission = async () => {
    try {
      const cameraPermission = await Camera.getCameraPermissionStatus();
      
      if (cameraPermission === 'granted') {
        setHasPermission(true);
        return;
      }

      // Request permission if not granted
      const newPermission = await Camera.requestCameraPermission();
      if (newPermission === 'granted') {
        setHasPermission(true);
      } else {
        Alert.alert(
          'Kamera İzni Gerekli',
          'OCR için kamera erişimi gereklidir. Lütfen ayarlardan izin verin.',
          [{ text: 'Tamam' }]
        );
      }
    } catch (error) {
      Logger.error('Camera permission check failed:', error);
      Alert.alert('Hata', 'Kamera izni kontrolü başarısız oldu.');
    }
  };

  /**
   * Capture photo from camera
   */
  const takePhoto = async () => {
    if (!camera.current || !isReady) {
      Logger.warn('Camera not ready for capture');
      return;
    }

    try {
      Logger.info('Capturing photo for OCR...');
      
      const photo = await camera.current.takePhoto({
        flash: captureOptions.flash || 'auto',
        qualityPrioritization: captureOptions.quality || 'speed',
        enableAutoStabilization: true,
        enableAutoRedEyeReduction: false,
      });

      // Get the file path
      const photoPath = photo.path.startsWith('file://') 
        ? photo.path 
        : `file://${photo.path}`;

      Logger.info('Photo captured successfully:', photoPath);
      
      if (onPhoto) {
        onPhoto(photoPath, null);
      }
    } catch (error) {
      Logger.error('Photo capture failed:', error);
      
      if (onPhoto) {
        onPhoto(null, error);
      }
      
      Alert.alert(
        'Fotoğraf Çekme Hatası',
        'Fotoğraf çekilemedi. Lütfen tekrar deneyin.'
      );
    }
  };

  if (!hasPermission) {
    return (
      <View style={styles.container}>
        <Text style={styles.errorText}>
          Kamera izni gerekli. Lütfen izin verin.
        </Text>
        <TouchableOpacity 
          style={styles.button} 
          onPress={checkCameraPermission}
        >
          <Text style={styles.buttonText}>İzin Ver</Text>
        </TouchableOpacity>
      </View>
    );
  }

  if (!device) {
    return (
      <View style={styles.container}>
        <Text style={styles.errorText}>
          Kamera bulunamadı.
        </Text>
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <Camera
        ref={camera}
        style={StyleSheet.absoluteFill}
        device={device}
        isActive={true}
        photo={true}
        onInitialized={() => {
          Logger.info('Camera initialized');
          setIsReady(true);
        }}
        onError={(error) => {
          Logger.error('Camera error:', error);
          Alert.alert('Kamera Hatası', error.message);
        }}
      />
      
      {showGuide && (
        <View style={styles.guideOverlay}>
          <View style={styles.guideBorder} />
          <Text style={styles.guideText}>
            Kimlik belgenizi çerçeve içine yerleştirin
          </Text>
        </View>
      )}
      
      <View style={styles.controls}>
        <TouchableOpacity 
          style={[styles.captureButton, !isReady && styles.captureButtonDisabled]} 
          onPress={takePhoto}
          disabled={!isReady}
        >
          <View style={styles.captureButtonInner} />
        </TouchableOpacity>
      </View>
      
      {!isReady && (
        <View style={styles.loadingOverlay}>
          <Text style={styles.loadingText}>Kamera hazırlanıyor...</Text>
        </View>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#000',
    justifyContent: 'center',
    alignItems: 'center',
  },
  errorText: {
    color: '#FFF',
    fontSize: 16,
    textAlign: 'center',
    marginBottom: 20,
    paddingHorizontal: 20,
  },
  button: {
    backgroundColor: '#2196F3',
    paddingHorizontal: 30,
    paddingVertical: 12,
    borderRadius: 8,
  },
  buttonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
  guideOverlay: {
    ...StyleSheet.absoluteFillObject,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'rgba(0, 0, 0, 0.3)',
  },
  guideBorder: {
    width: '85%',
    height: '60%',
    borderWidth: 2,
    borderColor: '#FFF',
    borderRadius: 8,
    borderStyle: 'dashed',
  },
  guideText: {
    color: '#FFF',
    fontSize: 16,
    marginTop: 20,
    textAlign: 'center',
    backgroundColor: 'rgba(0, 0, 0, 0.6)',
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 8,
  },
  controls: {
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
    borderColor: '#FFF',
  },
  captureButtonDisabled: {
    opacity: 0.5,
  },
  captureButtonInner: {
    width: 60,
    height: 60,
    borderRadius: 30,
    backgroundColor: '#FFF',
  },
  loadingOverlay: {
    ...StyleSheet.absoluteFillObject,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'rgba(0, 0, 0, 0.7)',
  },
  loadingText: {
    color: '#FFF',
    fontSize: 16,
    marginTop: 10,
  },
});
