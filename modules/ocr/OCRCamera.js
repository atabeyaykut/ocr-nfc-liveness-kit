// OCR Camera Component - React Native camera integration for OCR
import React, { useState, useRef, useEffect } from 'react';
import {
  View,
  StyleSheet,
  TouchableOpacity,
  Text,
  Alert,
  Dimensions,
} from 'react-native';
import Animated, { useSharedValue, useAnimatedStyle, withRepeat, withTiming } from 'react-native-reanimated';
import {
  Camera,
  useCameraDevices,
  useFrameProcessor,
} from 'react-native-vision-camera';
import Logger from '../../utils/logger';
import { OCR_STATUS } from './types';

const OCRCamera = ({
  onImageCaptured,
  onError,
  onCropAreaSelected,
  style,
  guidanceText = 'Kartın tamamını çerçeve içine hizalayın',
  multiFrameMode = true, // Enable multi-frame capture by default
  frameCount = 3, // Number of frames to capture
}) => {
  const [cameraStatus, setCameraStatus] = useState(OCR_STATUS.IDLE);
  const [hasPermission, setHasPermission] = useState(null);
  const [showCropOverlay, setShowCropOverlay] = useState(false);
  const [capturedImage, setCapturedImage] = useState(null);
  const [capturedFrames, setCapturedFrames] = useState([]); // Store multiple frames
  const [currentFrameIndex, setCurrentFrameIndex] = useState(0);
  const [torchEnabled, setTorchEnabled] = useState(false);
  const [flashMode, setFlashMode] = useState('off');
  const [cropArea, setCropArea] = useState({
    x: 50,
    y: 150,
    width: 300,
    height: 200,
  });
  const cameraRef = useRef(null);
  const devices = useCameraDevices();
  const device = devices.back;
  const pulseAnim = useSharedValue(1);

  const screenWidth = Dimensions.get('window').width;
  const screenHeight = Dimensions.get('window').height;

  useEffect(() => {
    requestCameraPermission();
    startPulseAnimation();

    return () => {
      // Cleanup camera on unmount
      setCameraStatus(OCR_STATUS.IDLE);
    };
  }, []);

  const startPulseAnimation = () => {
    pulseAnim.value = withRepeat(
      withTiming(1.1, { duration: 1000 }),
      -1,
      true
    );
  };

  const animatedFrameStyle = useAnimatedStyle(() => ({
    transform: [{ scale: pulseAnim.value }]
  }));

  const requestCameraPermission = async () => {
    try {
      Logger.info('Requesting camera permission...');
      const permission = await Camera.requestCameraPermission();

      if (permission === 'authorized') {
        setHasPermission(true);
        setCameraStatus(OCR_STATUS.READY);
        Logger.info('Camera permission granted');
      } else {
        setHasPermission(false);
        const error = new Error('Camera permission denied');
        Logger.error('Camera permission denied');
        if (onError) {
          onError(error);
        }
      }
    } catch (error) {
      Logger.error('Camera permission failed:', error.message);
      setHasPermission(false);
      if (onError) {
        onError(error);
      }
    }
  };

  const capturePhoto = async () => {
    try {
      if (!cameraRef.current) {
        throw new Error('Kamera hazır değil');
      }

      setCameraStatus(OCR_STATUS.PROCESSING);

      if (multiFrameMode) {
        // Multi-frame mode: Capture multiple photos sequentially
        Logger.info(`Starting multi-frame capture (${frameCount} frames)...`);
        const frames = [];

        for (let i = 0; i < frameCount; i++) {
          setCurrentFrameIndex(i + 1);
          Logger.info(`Capturing frame ${i + 1}/${frameCount}...`);

          const photo = await cameraRef.current.takePhoto({
            quality: 0.9, // Higher quality for multi-frame
            skipMetadata: true,
            flash: i === 0 ? flashMode : 'off', // Only use flash on first frame
          });

          const photoUri = `file://${photo.path}`;
          frames.push(photoUri);
          Logger.info(`Frame ${i + 1} captured:`, photoUri);

          // Small delay between captures for stability
          if (i < frameCount - 1) {
            await new Promise(resolve => setTimeout(resolve, 200));
          }
        }

        Logger.info(`All ${frameCount} frames captured successfully`);
        setCapturedFrames(frames);

        // Return all frames to parent component
        if (onImageCaptured) {
          onImageCaptured({
            type: 'multi-frame',
            frames: frames,
            frameCount: frames.length
          });
        }

        setCurrentFrameIndex(0);
        setCameraStatus(OCR_STATUS.READY);
      } else {
        // Single frame mode (original behavior)
        Logger.info('Taking single photo...');

        const photo = await cameraRef.current.takePhoto({
          quality: 0.8,
          skipMetadata: true,
          flash: flashMode,
        });

        const photoUri = `file://${photo.path}`;
        Logger.info('Photo captured successfully', { uri: photoUri });

        // Show crop selection UI
        setCapturedImage(photoUri);
        setShowCropOverlay(true);
        setCameraStatus(OCR_STATUS.READY);
      }
    } catch (error) {
      Logger.error('Photo capture failed:', error.message);
      setCameraStatus(OCR_STATUS.ERROR);
      setCurrentFrameIndex(0);

      if (onError) {
        onError(new Error(`Fotoğraf çekme hatası: ${error.message}`));
      }
    }
  };

  const confirmCrop = () => {
    if (capturedImage && onImageCaptured) {
      const imageWithCropArea = {
        ...capturedImage,
        cropArea,
      };
      onImageCaptured(imageWithCropArea);
      if (onCropAreaSelected) {
        onCropAreaSelected(cropArea);
      }
    }
    setShowCropOverlay(false);
    setCapturedImage(null);
  };

  const retakePhoto = () => {
    setShowCropOverlay(false);
    setCapturedImage(null);
    setCameraStatus(OCR_STATUS.READY);
  };

  const renderGuidanceOverlay = () => {
    const displayText = multiFrameMode && currentFrameIndex > 0
      ? `Fotoğraf ${currentFrameIndex}/${frameCount} çekiliyor...`
      : guidanceText;

    const subText = multiFrameMode && cameraStatus !== OCR_STATUS.PROCESSING
      ? `${frameCount} fotoğraf çekilecek ve birleştirilecek`
      : 'Kartın tamamını çerçeve içine yerleştirin';

    return (
      <View style={styles.guidanceOverlay}>
        <View style={styles.guidanceTop}>
          <Text style={styles.guidanceText}>{displayText}</Text>
          {multiFrameMode && cameraStatus === OCR_STATUS.PROCESSING && (
            <Text style={styles.frameCounter}>
              📸 {currentFrameIndex}/{frameCount}
            </Text>
          )}
        </View>

        <Animated.View
          style={[styles.guidanceFrame, animatedFrameStyle]}
        >
          <View style={styles.frameCorner} />
          <View style={[styles.frameCorner, styles.topRight]} />
          <View style={[styles.frameCorner, styles.bottomLeft]} />
          <View style={[styles.frameCorner, styles.bottomRight]} />
        </Animated.View>

        <View style={styles.guidanceBottom}>
          <Text style={styles.guidanceSubText}>
            {subText}
          </Text>
        </View>
      </View>
    );
  };

  const renderCropOverlay = () => (
    <View style={styles.cropOverlay}>
      <View style={styles.cropHeader}>
        <Text style={styles.cropTitle}>Metin Alanını Seçin</Text>
        <Text style={styles.cropSubtitle}>
          Çıkarmak istediğiniz metin alanını ayarlayın
        </Text>
      </View>

      <View style={styles.cropArea}>
        <View
          style={[
            styles.cropSelection,
            {
              left: cropArea.x,
              top: cropArea.y,
              width: cropArea.width,
              height: cropArea.height,
            },
          ]}
        >
          <View style={styles.cropHandle} />
        </View>
      </View>

      <View style={styles.cropControls}>
        <TouchableOpacity style={styles.cropButton} onPress={retakePhoto}>
          <Text style={styles.cropButtonText}>Tekrar Çek</Text>
        </TouchableOpacity>
        <TouchableOpacity
          style={[styles.cropButton, styles.confirmButton]}
          onPress={confirmCrop}
        >
          <Text style={[styles.cropButtonText, styles.confirmButtonText]}>
            Onayla
          </Text>
        </TouchableOpacity>
      </View>
    </View>
  );

  if (hasPermission === null) {
    return (
      <View style={[styles.container, style]}>
        <Text style={styles.message}>Requesting camera permission...</Text>
      </View>
    );
  }

  if (hasPermission === false) {
    return (
      <View style={[styles.container, style]}>
        <View style={styles.errorContainer}>
          <Text style={styles.errorTitle}>Kamera İzni Gerekli</Text>
          <Text style={styles.errorMessage}>
            OCR işlemi için kamera erişimine ihtiyacımız var. Lütfen ayarlardan
            kamera iznini etkinleştirin.
          </Text>
          <TouchableOpacity
            style={styles.permissionButton}
            onPress={requestCameraPermission}
          >
            <Text style={styles.permissionButtonText}>İzin Ver</Text>
          </TouchableOpacity>
        </View>
      </View>
    );
  }

  if (!device) {
    return (
      <View style={[styles.container, style]}>
        <Text style={styles.message}>Kamera bulunamadı</Text>
      </View>
    );
  }

  return (
    <View style={[styles.container, style]}>
      <Camera
        ref={cameraRef}
        style={styles.camera}
        device={device}
        isActive={!showCropOverlay}
        photo={true}
        torch={torchEnabled ? 'on' : 'off'}
      />

      {!showCropOverlay && (
        <View style={styles.topControls}>
          <TouchableOpacity
            style={[styles.iconButton, torchEnabled && styles.iconButtonActive]}
            onPress={() => setTorchEnabled(!torchEnabled)}
          >
            <Text style={styles.iconText}>{torchEnabled ? '🔦' : '🔦'}</Text>
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
              {flashMode === 'off' ? 'Kapalı' : flashMode === 'on' ? 'Açık' : 'Oto'}
            </Text>
          </TouchableOpacity>
        </View>
      )}

      {!showCropOverlay && renderGuidanceOverlay()}
      {showCropOverlay && renderCropOverlay()}

      {!showCropOverlay && (
        <View style={styles.controls}>
          <TouchableOpacity
            style={[
              styles.captureButton,
              cameraStatus === OCR_STATUS.CAPTURING && styles.capturing,
            ]}
            onPress={capturePhoto}
            disabled={cameraStatus === OCR_STATUS.CAPTURING}
          >
            <View style={styles.captureButtonInner}>
              <Text style={styles.captureButtonText}>
                {cameraStatus === OCR_STATUS.CAPTURING ? 'Çekiliyor...' : 'Çek'}
              </Text>
            </View>
          </TouchableOpacity>
        </View>
      )}
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
  topControls: {
    position: 'absolute',
    top: 20,
    left: 0,
    right: 0,
    flexDirection: 'row',
    justifyContent: 'space-around',
    paddingHorizontal: 20,
    zIndex: 10,
  },
  iconButton: {
    backgroundColor: 'rgba(0, 0, 0, 0.6)',
    paddingHorizontal: 14,
    paddingVertical: 8,
    borderRadius: 18,
    alignItems: 'center',
    borderWidth: 2,
    borderColor: 'transparent',
  },
  iconButtonActive: {
    backgroundColor: 'rgba(0, 122, 255, 0.8)',
    borderColor: '#fff',
  },
  iconText: {
    fontSize: 22,
  },
  iconLabel: {
    color: '#fff',
    fontSize: 10,
    fontWeight: '600',
    marginTop: 2,
  },
  errorContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 30,
    backgroundColor: '#1a1a1a',
  },
  errorTitle: {
    color: '#fff',
    fontSize: 24,
    fontWeight: 'bold',
    textAlign: 'center',
    marginBottom: 15,
  },
  errorMessage: {
    color: '#ccc',
    fontSize: 16,
    textAlign: 'center',
    lineHeight: 24,
    marginBottom: 30,
  },
  permissionButton: {
    backgroundColor: '#007AFF',
    paddingHorizontal: 30,
    paddingVertical: 15,
    borderRadius: 25,
  },
  permissionButtonText: {
    color: '#fff',
    fontSize: 18,
    fontWeight: 'bold',
  },
  guidanceOverlay: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    justifyContent: 'space-between',
  },
  guidanceTop: {
    paddingTop: 60,
    paddingHorizontal: 20,
    alignItems: 'center',
  },
  guidanceText: {
    color: '#fff',
    fontSize: 20,
    fontWeight: 'bold',
    textAlign: 'center',
    backgroundColor: 'rgba(0,0,0,0.7)',
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 20,
  },
  frameCounter: {
    color: '#FFD700',
    fontSize: 18,
    fontWeight: 'bold',
    textAlign: 'center',
    backgroundColor: 'rgba(0,0,0,0.8)',
    paddingHorizontal: 15,
    paddingVertical: 8,
    borderRadius: 15,
    marginTop: 10,
  },
  guidanceFrame: {
    position: 'absolute',
    top: '30%',
    left: '10%',
    right: '10%',
    height: 200,
    borderWidth: 3,
    borderColor: '#00FF00',
    borderRadius: 10,
  },
  frameCorner: {
    position: 'absolute',
    width: 30,
    height: 30,
    borderColor: '#00FF00',
    borderWidth: 4,
    borderRightWidth: 4,
    borderBottomWidth: 4,
  },
  topRight: {
    top: -2,
    right: -2,
    borderLeftWidth: 0,
  },
  bottomLeft: {
    bottom: -2,
    left: -2,
    borderRightWidth: 0,
    borderTopWidth: 0,
  },
  bottomRight: {
    bottom: -2,
    right: -2,
    borderLeftWidth: 0,
    borderTopWidth: 0,
  },
  guidanceBottom: {
    paddingBottom: 150,
    paddingHorizontal: 20,
    alignItems: 'center',
  },
  guidanceSubText: {
    color: '#ccc',
    fontSize: 16,
    textAlign: 'center',
    backgroundColor: 'rgba(0,0,0,0.7)',
    paddingHorizontal: 15,
    paddingVertical: 8,
    borderRadius: 15,
  },
  cropOverlay: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    backgroundColor: 'rgba(0,0,0,0.8)',
  },
  cropHeader: {
    paddingTop: 60,
    paddingHorizontal: 20,
    alignItems: 'center',
  },
  cropTitle: {
    color: '#fff',
    fontSize: 22,
    fontWeight: 'bold',
    marginBottom: 8,
  },
  cropSubtitle: {
    color: '#ccc',
    fontSize: 16,
    textAlign: 'center',
  },
  cropArea: {
    flex: 1,
    margin: 20,
    position: 'relative',
  },
  cropSelection: {
    position: 'absolute',
    borderWidth: 2,
    borderColor: '#FFD700',
    backgroundColor: 'rgba(255, 215, 0, 0.2)',
  },
  cropHandle: {
    position: 'absolute',
    bottom: -10,
    right: -10,
    width: 20,
    height: 20,
    backgroundColor: '#FFD700',
    borderRadius: 10,
  },
  cropControls: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    paddingHorizontal: 40,
    paddingBottom: 50,
  },
  cropButton: {
    backgroundColor: '#666',
    paddingHorizontal: 30,
    paddingVertical: 15,
    borderRadius: 25,
    minWidth: 120,
  },
  confirmButton: {
    backgroundColor: '#007AFF',
  },
  cropButtonText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
    textAlign: 'center',
  },
  confirmButtonText: {
    color: '#fff',
  },
  controls: {
    position: 'absolute',
    bottom: 50,
    left: 0,
    right: 0,
    alignItems: 'center',
  },
  captureButton: {
    width: 90,
    height: 90,
    borderRadius: 45,
    backgroundColor: 'rgba(255,255,255,0.9)',
    justifyContent: 'center',
    alignItems: 'center',
    borderWidth: 5,
    borderColor: '#007AFF',
  },
  capturing: {
    backgroundColor: 'rgba(200,200,200,0.9)',
  },
  captureButtonInner: {
    width: 70,
    height: 70,
    borderRadius: 35,
    backgroundColor: '#007AFF',
    justifyContent: 'center',
    alignItems: 'center',
  },
  captureButtonText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
  },
  message: {
    color: '#fff',
    fontSize: 16,
    textAlign: 'center',
    margin: 20,
  },
});

export default OCRCamera;
