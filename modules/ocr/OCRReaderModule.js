/**
 * OCR Reader Module
 * Kimlik kartı okuma modülü - Gerçek veri ile çalışır
 * Android 11 uyumlu
 */

import React, { useState, useRef, useCallback } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Alert,
  ActivityIndicator,
  Image,
  Dimensions,
  StatusBar,
  Platform,
} from 'react-native';
import { RNCamera } from 'react-native-camera';
import ImageCropPicker from 'react-native-image-crop-picker';
import TextRecognition from 'react-native-text-recognition';
import RNFS from 'react-native-fs';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';

const { width: screenWidth, height: screenHeight } = Dimensions.get('window');

// OCR Field Patterns for Turkish ID Card
const ID_PATTERNS = {
  TC_NO: /\b\d{11}\b/,
  NAME: /(?:AD[I]?\s*[:\-]?\s*)([A-ZÇĞİÖŞÜ\s]+)/i,
  SURNAME: /(?:SOYAD[I]?\s*[:\-]?\s*)([A-ZÇĞİÖŞÜ\s]+)/i,
  BIRTH_DATE: /(?:D\.TAR[İI]H[İI]?\s*[:\-]?\s*)(\d{2}[\.\/]\d{2}[\.\/]\d{4})/i,
  SERIAL_NO: /([A-Z]\d{2}[A-Z]\d{5})/,
  VALID_UNTIL: /(?:GEÇERLİLİK\s*[:\-]?\s*)(\d{2}[\.\/]\d{2}[\.\/]\d{4})/i,
};

class OCRReaderModule {
  constructor() {
    this.callbacks = {};
  }

  // API Methods
  startOCR = (options = {}) => {
    const defaultOptions = {
      language: 'tr',
      cropHints: true,
      quality: 'high',
      cardType: 'tc_kimlik',
      enableFlash: false,
    };
    
    this.options = { ...defaultOptions, ...options };
    
    if (this.callbacks.onStarted) {
      this.callbacks.onStarted();
    }
  };

  onOCRResult = (callback) => {
    this.callbacks.onResult = callback;
  };

  onOCRError = (callback) => {
    this.callbacks.onError = callback;
  };

  onOCRStarted = (callback) => {
    this.callbacks.onStarted = callback;
  };

  // Processing Methods
  processImage = async (imagePath) => {
    try {
      // Text recognition
      const result = await TextRecognition.recognize(imagePath);
      
      if (!result || result.length === 0) {
        throw new Error('Metin algılanamadı. Lütfen daha net bir fotoğraf çekin.');
      }

      // Parse fields
      const parsedFields = this.parseIDFields(result);
      
      // Calculate confidence
      const confidence = this.calculateConfidence(parsedFields);
      
      // Get base64 if requested
      let imageBase64 = null;
      if (this.options.includeImage) {
        imageBase64 = await RNFS.readFile(imagePath, 'base64');
      }

      const response = {
        success: true,
        text: result,
        fields: parsedFields,
        confidence: confidence,
        imageBase64: imageBase64,
        timestamp: new Date().toISOString(),
        cardType: this.options.cardType,
      };

      if (this.callbacks.onResult) {
        this.callbacks.onResult(response);
      }

      return response;
    } catch (error) {
      const errorResponse = {
        success: false,
        error: error.message,
        code: 'OCR_PROCESSING_ERROR',
      };

      if (this.callbacks.onError) {
        this.callbacks.onError(errorResponse);
      }

      throw error;
    }
  };

  parseIDFields = (text) => {
    const fields = {};

    // TC Kimlik No
    const tcMatch = text.match(ID_PATTERNS.TC_NO);
    if (tcMatch) {
      fields.tcNo = tcMatch[0];
    }

    // İsim
    const nameMatch = text.match(ID_PATTERNS.NAME);
    if (nameMatch) {
      fields.name = nameMatch[1].trim();
    }

    // Soyisim
    const surnameMatch = text.match(ID_PATTERNS.SURNAME);
    if (surnameMatch) {
      fields.surname = surnameMatch[1].trim();
    }

    // Doğum Tarihi
    const birthMatch = text.match(ID_PATTERNS.BIRTH_DATE);
    if (birthMatch) {
      fields.birthDate = birthMatch[1];
    }

    // Seri No
    const serialMatch = text.match(ID_PATTERNS.SERIAL_NO);
    if (serialMatch) {
      fields.serialNo = serialMatch[0];
    }

    // Geçerlilik Tarihi
    const validMatch = text.match(ID_PATTERNS.VALID_UNTIL);
    if (validMatch) {
      fields.validUntil = validMatch[1];
    }

    return fields;
  };

  calculateConfidence = (fields) => {
    const requiredFields = ['tcNo', 'name', 'surname'];
    const optionalFields = ['birthDate', 'serialNo', 'validUntil'];
    
    let score = 0;
    let maxScore = 0;

    // Required fields (40 points each)
    requiredFields.forEach(field => {
      maxScore += 40;
      if (fields[field]) {
        score += 40;
      }
    });

    // Optional fields (10 points each)
    optionalFields.forEach(field => {
      maxScore += 10;
      if (fields[field]) {
        score += 10;
      }
    });

    return Math.round((score / maxScore) * 100);
  };
}

// React Component for OCR UI
export const OCRReaderScreen = ({ navigation, route }) => {
  const [isProcessing, setIsProcessing] = useState(false);
  const [flashMode, setFlashMode] = useState(false);
  const [previewImage, setPreviewImage] = useState(null);
  const [ocrResult, setOcrResult] = useState(null);
  const cameraRef = useRef(null);
  const ocrModule = useRef(new OCRReaderModule()).current;

  // Setup callbacks
  React.useEffect(() => {
    checkCameraPermission();
    
    ocrModule.onOCRResult((result) => {
      setOcrResult(result);
      setIsProcessing(false);
    });

    ocrModule.onOCRError((error) => {
      Alert.alert('Hata', error.error || 'OCR işlemi başarısız oldu');
      setIsProcessing(false);
    });
  }, []);

  const checkCameraPermission = async () => {
    const result = await check(PERMISSIONS.ANDROID.CAMERA);
    
    if (result !== RESULTS.GRANTED) {
      const requestResult = await request(PERMISSIONS.ANDROID.CAMERA);
      if (requestResult !== RESULTS.GRANTED) {
        Alert.alert(
          'Kamera İzni Gerekli',
          'OCR özelliğini kullanabilmek için kamera izni vermeniz gerekiyor.',
          [{ text: 'Tamam', onPress: () => navigation.goBack() }]
        );
      }
    }
  };

  const takePicture = async () => {
    if (cameraRef.current && !isProcessing) {
      setIsProcessing(true);
      
      try {
        const options = {
          quality: 0.9,
          base64: false,
          fixOrientation: true,
          forceUpOrientation: true,
        };
        
        const data = await cameraRef.current.takePictureAsync(options);
        setPreviewImage(data.uri);
        
        // Process with OCR
        ocrModule.startOCR({ includeImage: true });
        const result = await ocrModule.processImage(data.uri);
        
      } catch (error) {
        console.error('Fotoğraf çekme hatası:', error);
        Alert.alert('Hata', 'Fotoğraf çekilemedi. Lütfen tekrar deneyin.');
        setIsProcessing(false);
      }
    }
  };

  const selectFromGallery = async () => {
    try {
      const image = await ImageCropPicker.openPicker({
        width: 1200,
        height: 800,
        cropping: true,
        cropperToolbarTitle: 'Kimlik Kartını Kırpın',
        cropperChooseText: 'Seç',
        cropperCancelText: 'İptal',
      });

      setIsProcessing(true);
      setPreviewImage(image.path);
      
      ocrModule.startOCR({ includeImage: true });
      const result = await ocrModule.processImage(image.path);
      
    } catch (error) {
      if (error.code !== 'E_PICKER_CANCELLED') {
        Alert.alert('Hata', 'Görsel seçilemedi.');
      }
      setIsProcessing(false);
    }
  };

  const retryOCR = () => {
    setOcrResult(null);
    setPreviewImage(null);
  };

  const renderOverlay = () => (
    <View style={styles.overlay}>
      <View style={styles.overlayTop}>
        <Text style={styles.instructionText}>
          Kimlik kartınızı çerçeve içine yerleştirin
        </Text>
      </View>
      
      <View style={styles.overlayMiddle}>
        <View style={styles.overlayLeft} />
        
        <View style={styles.frameContainer}>
          <View style={[styles.corner, styles.cornerTopLeft]} />
          <View style={[styles.corner, styles.cornerTopRight]} />
          <View style={[styles.corner, styles.cornerBottomLeft]} />
          <View style={[styles.corner, styles.cornerBottomRight]} />
        </View>
        
        <View style={styles.overlayRight} />
      </View>
      
      <View style={styles.overlayBottom}>
        <Text style={styles.hintText}>
          • Kartın tamamı görünür olmalı{'\n'}
          • Yeterli ışık olduğundan emin olun{'\n'}
          • Yansıma ve gölge olmamasına dikkat edin
        </Text>
      </View>
    </View>
  );

  const renderResult = () => {
    if (!ocrResult) return null;

    return (
      <View style={styles.resultContainer}>
        <Text style={styles.resultTitle}>OCR Sonuçları</Text>
        
        {ocrResult.fields.tcNo && (
          <View style={styles.resultRow}>
            <Text style={styles.resultLabel}>TC Kimlik No:</Text>
            <Text style={styles.resultValue}>{ocrResult.fields.tcNo}</Text>
          </View>
        )}
        
        {ocrResult.fields.name && (
          <View style={styles.resultRow}>
            <Text style={styles.resultLabel}>Ad:</Text>
            <Text style={styles.resultValue}>{ocrResult.fields.name}</Text>
          </View>
        )}
        
        {ocrResult.fields.surname && (
          <View style={styles.resultRow}>
            <Text style={styles.resultLabel}>Soyad:</Text>
            <Text style={styles.resultValue}>{ocrResult.fields.surname}</Text>
          </View>
        )}
        
        {ocrResult.fields.birthDate && (
          <View style={styles.resultRow}>
            <Text style={styles.resultLabel}>Doğum Tarihi:</Text>
            <Text style={styles.resultValue}>{ocrResult.fields.birthDate}</Text>
          </View>
        )}
        
        <View style={styles.resultRow}>
          <Text style={styles.resultLabel}>Güven Skoru:</Text>
          <Text style={[
            styles.resultValue,
            { color: ocrResult.confidence > 70 ? '#4CAF50' : '#FF9800' }
          ]}>
            %{ocrResult.confidence}
          </Text>
        </View>
        
        <TouchableOpacity style={styles.retryButton} onPress={retryOCR}>
          <Text style={styles.retryButtonText}>Yeniden Tara</Text>
        </TouchableOpacity>
      </View>
    );
  };

  if (ocrResult) {
    return (
      <View style={styles.container}>
        {previewImage && (
          <Image source={{ uri: previewImage }} style={styles.previewImage} />
        )}
        {renderResult()}
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <StatusBar barStyle="light-content" backgroundColor="#000" />
      
      <RNCamera
        ref={cameraRef}
        style={styles.camera}
        type={RNCamera.Constants.Type.back}
        flashMode={flashMode ? RNCamera.Constants.FlashMode.torch : RNCamera.Constants.FlashMode.off}
        androidCameraPermissionOptions={{
          title: 'Kamera İzni',
          message: 'OCR için kamera erişimi gerekiyor',
          buttonPositive: 'İzin Ver',
          buttonNegative: 'İptal',
        }}
        captureAudio={false}
      >
        {renderOverlay()}
      </RNCamera>
      
      <View style={styles.controls}>
        <TouchableOpacity
          style={styles.flashButton}
          onPress={() => setFlashMode(!flashMode)}
        >
          <Text style={styles.flashButtonText}>
            {flashMode ? '⚡ Açık' : '⚡ Kapalı'}
          </Text>
        </TouchableOpacity>
        
        <TouchableOpacity
          style={[styles.captureButton, isProcessing && styles.captureButtonDisabled]}
          onPress={takePicture}
          disabled={isProcessing}
        >
          {isProcessing ? (
            <ActivityIndicator color="#FFF" size="large" />
          ) : (
            <View style={styles.captureButtonInner} />
          )}
        </TouchableOpacity>
        
        <TouchableOpacity
          style={styles.galleryButton}
          onPress={selectFromGallery}
        >
          <Text style={styles.galleryButtonText}>📷</Text>
        </TouchableOpacity>
      </View>
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
    ...StyleSheet.absoluteFillObject,
  },
  overlayTop: {
    flex: 0.15,
    backgroundColor: 'rgba(0,0,0,0.6)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  overlayMiddle: {
    flex: 0.5,
    flexDirection: 'row',
  },
  overlayLeft: {
    flex: 1,
    backgroundColor: 'rgba(0,0,0,0.6)',
  },
  overlayRight: {
    flex: 1,
    backgroundColor: 'rgba(0,0,0,0.6)',
  },
  overlayBottom: {
    flex: 0.35,
    backgroundColor: 'rgba(0,0,0,0.6)',
    justifyContent: 'flex-start',
    alignItems: 'center',
    paddingTop: 20,
  },
  frameContainer: {
    width: screenWidth * 0.85,
    height: screenWidth * 0.54,
    position: 'relative',
  },
  corner: {
    position: 'absolute',
    width: 40,
    height: 40,
    borderColor: '#FFF',
    borderWidth: 3,
  },
  cornerTopLeft: {
    top: 0,
    left: 0,
    borderRightWidth: 0,
    borderBottomWidth: 0,
  },
  cornerTopRight: {
    top: 0,
    right: 0,
    borderLeftWidth: 0,
    borderBottomWidth: 0,
  },
  cornerBottomLeft: {
    bottom: 0,
    left: 0,
    borderRightWidth: 0,
    borderTopWidth: 0,
  },
  cornerBottomRight: {
    bottom: 0,
    right: 0,
    borderLeftWidth: 0,
    borderTopWidth: 0,
  },
  instructionText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
    textAlign: 'center',
  },
  hintText: {
    color: '#FFF',
    fontSize: 12,
    textAlign: 'center',
    lineHeight: 18,
  },
  controls: {
    position: 'absolute',
    bottom: 30,
    left: 0,
    right: 0,
    flexDirection: 'row',
    justifyContent: 'space-around',
    alignItems: 'center',
    paddingHorizontal: 30,
  },
  captureButton: {
    width: 70,
    height: 70,
    borderRadius: 35,
    backgroundColor: '#FFF',
    justifyContent: 'center',
    alignItems: 'center',
    borderWidth: 5,
    borderColor: '#DDD',
  },
  captureButtonDisabled: {
    backgroundColor: '#AAA',
  },
  captureButtonInner: {
    width: 50,
    height: 50,
    borderRadius: 25,
    backgroundColor: '#FFF',
  },
  flashButton: {
    padding: 15,
    backgroundColor: 'rgba(255,255,255,0.2)',
    borderRadius: 10,
  },
  flashButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
  galleryButton: {
    padding: 15,
    backgroundColor: 'rgba(255,255,255,0.2)',
    borderRadius: 10,
  },
  galleryButtonText: {
    fontSize: 24,
  },
  previewImage: {
    width: '100%',
    height: 300,
    resizeMode: 'contain',
    marginBottom: 20,
  },
  resultContainer: {
    flex: 1,
    padding: 20,
    backgroundColor: '#FFF',
  },
  resultTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    marginBottom: 20,
    textAlign: 'center',
  },
  resultRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingVertical: 10,
    borderBottomWidth: 1,
    borderBottomColor: '#EEE',
  },
  resultLabel: {
    fontSize: 14,
    color: '#666',
    flex: 1,
  },
  resultValue: {
    fontSize: 14,
    fontWeight: '600',
    color: '#333',
    flex: 2,
    textAlign: 'right',
  },
  retryButton: {
    marginTop: 30,
    paddingVertical: 15,
    backgroundColor: '#2196F3',
    borderRadius: 10,
    alignItems: 'center',
  },
  retryButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
});

export default OCRReaderModule;
