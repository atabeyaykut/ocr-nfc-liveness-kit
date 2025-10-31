/**
 * Dual Side OCR Screen - ImagePicker Based
 * Reads both front and back of ID card
 * STANDALONE VERSION - 100% Working
 */

import React, { useState } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Image,
  ScrollView,
  ActivityIndicator,
  Alert,
  SafeAreaView,
} from 'react-native';
import ImageCropPicker from 'react-native-image-crop-picker';
import TextRecognition from '@react-native-ml-kit/text-recognition';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';

export const DualSideOCRScreen = ({ navigation }) => {
  const [frontImage, setFrontImage] = useState(null);
  const [backImage, setBackImage] = useState(null);
  const [frontOCR, setFrontOCR] = useState(null);
  const [backOCR, setBackOCR] = useState(null);
  const [loading, setLoading] = useState(false);
  const [currentStep, setCurrentStep] = useState('front'); // 'front' or 'back' or 'done'

  const requestCameraPermission = async () => {
    const result = await request(PERMISSIONS.ANDROID.CAMERA);
    return result === RESULTS.GRANTED;
  };

  const captureImage = async (side) => {
    try {
      const hasPermission = await requestCameraPermission();
      if (!hasPermission) {
        Alert.alert('İzin Gerekli', 'Kamera izni vermeniz gerekiyor.');
        return;
      }

      const image = await ImageCropPicker.openCamera({
        width: 1920,
        height: 1080,
        cropping: true,
        cameraType: 'back', // Arka kamera (kimlik kartı için)
        includeBase64: false,
        compressImageQuality: 0.8,
        mediaType: 'photo',
      });

      if (side === 'front') {
        setFrontImage(image.path);
        await performOCR(image.path, 'front');
      } else {
        setBackImage(image.path);
        await performOCR(image.path, 'back');
      }
    } catch (error) {
      if (error.code !== 'E_PICKER_CANCELLED') {
        Alert.alert('Hata', 'Fotoğraf çekilemedi: ' + error.message);
      }
    }
  };

  const selectFromGallery = async (side) => {
    try {
      const image = await ImageCropPicker.openPicker({
        width: 1920,
        height: 1080,
        cropping: true,
        includeBase64: false,
        compressImageQuality: 0.8,
        mediaType: 'photo',
      });

      if (side === 'front') {
        setFrontImage(image.path);
        await performOCR(image.path, 'front');
      } else {
        setBackImage(image.path);
        await performOCR(image.path, 'back');
      }
    } catch (error) {
      if (error.code !== 'E_PICKER_CANCELLED') {
        Alert.alert('Hata', 'Görsel seçilemedi: ' + error.message);
      }
    }
  };

  const performOCR = async (imagePath, side) => {
    try {
      setLoading(true);
      
      const fileUri = imagePath.startsWith('file://') ? imagePath : `file://${imagePath}`;
      
      console.log(`[OCR] Processing ${side} side:`, fileUri);
      const result = await TextRecognition.recognize(fileUri);
      
      const extractedData = {
        fullText: result.text,
        blocks: result.blocks.map(block => block.text),
        timestamp: new Date().toISOString(),
        side: side,
      };

      if (side === 'front') {
        setFrontOCR(extractedData);
        setCurrentStep('back');
        Alert.alert('Başarılı', 'Ön yüz tarandı! Şimdi arka yüzü tarayın.');
      } else {
        setBackOCR(extractedData);
        setCurrentStep('done');
        Alert.alert('Tamamlandı', 'Her iki yüz de başarıyla tarandı!');
      }
    } catch (error) {
      Alert.alert('Hata', `OCR işlemi başarısız (${side}): ` + error.message);
      console.error(`[OCR] ${side} Error:`, error);
    } finally {
      setLoading(false);
    }
  };

  const reset = () => {
    setFrontImage(null);
    setBackImage(null);
    setFrontOCR(null);
    setBackOCR(null);
    setCurrentStep('front');
  };

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.header}>
        <TouchableOpacity onPress={() => navigation.goBack()}>
          <Text style={styles.backButton}>←</Text>
        </TouchableOpacity>
        <Text style={styles.title}>Çift Taraflı Tarama</Text>
        <View style={{ width: 40 }} />
      </View>

      <ScrollView contentContainerStyle={styles.content}>
        {/* Progress Indicator */}
        <View style={styles.progressContainer}>
          <View style={[styles.stepIndicator, currentStep !== 'front' && styles.stepCompleted]}>
            <Text style={styles.stepText}>1. Ön Yüz</Text>
          </View>
          <View style={styles.stepConnector} />
          <View style={[styles.stepIndicator, currentStep === 'done' && styles.stepCompleted]}>
            <Text style={styles.stepText}>2. Arka Yüz</Text>
          </View>
        </View>

        {/* Front Side */}
        {currentStep === 'front' && (
          <View style={styles.sideContainer}>
            <Text style={styles.sideTitle}>📄 Ön Yüz (Fotoğraflı Taraf)</Text>
            <Text style={styles.sideDescription}>
              TC Kimlik kartınızın ön yüzünü (fotoğraflı taraf) tarayın
            </Text>
            
            {frontImage && (
              <Image source={{ uri: frontImage }} style={styles.imagePreview} />
            )}

            <View style={styles.buttonContainer}>
              <TouchableOpacity
                style={[styles.button, styles.cameraButton]}
                onPress={() => captureImage('front')}
                disabled={loading}
              >
                <Text style={styles.buttonText}>📷 Fotoğraf Çek</Text>
              </TouchableOpacity>

              <TouchableOpacity
                style={[styles.button, styles.galleryButton]}
                onPress={() => selectFromGallery('front')}
                disabled={loading}
              >
                <Text style={styles.buttonText}>🖼️ Galeri</Text>
              </TouchableOpacity>
            </View>
          </View>
        )}

        {/* Back Side */}
        {currentStep === 'back' && (
          <View style={styles.sideContainer}>
            <Text style={styles.sideTitle}>📄 Arka Yüz</Text>
            <Text style={styles.sideDescription}>
              TC Kimlik kartınızın arka yüzünü tarayın
            </Text>
            
            {backImage && (
              <Image source={{ uri: backImage }} style={styles.imagePreview} />
            )}

            <View style={styles.buttonContainer}>
              <TouchableOpacity
                style={[styles.button, styles.cameraButton]}
                onPress={() => captureImage('back')}
                disabled={loading}
              >
                <Text style={styles.buttonText}>📷 Fotoğraf Çek</Text>
              </TouchableOpacity>

              <TouchableOpacity
                style={[styles.button, styles.galleryButton]}
                onPress={() => selectFromGallery('back')}
                disabled={loading}
              >
                <Text style={styles.buttonText}>🖼️ Galeri</Text>
              </TouchableOpacity>
            </View>
          </View>
        )}

        {loading && (
          <View style={styles.loadingContainer}>
            <ActivityIndicator size="large" color="#2196F3" />
            <Text style={styles.loadingText}>İşleniyor...</Text>
          </View>
        )}

        {/* Results */}
        {currentStep === 'done' && frontOCR && backOCR && (
          <View style={styles.resultsContainer}>
            <Text style={styles.resultsTitle}>✅ Tarama Tamamlandı</Text>

            <View style={styles.resultCard}>
              <Text style={styles.cardTitle}>📄 Ön Yüz Sonuçları:</Text>
              <ScrollView style={styles.textScrollView} nestedScrollEnabled>
                <Text style={styles.resultText}>{frontOCR.fullText}</Text>
              </ScrollView>
            </View>

            <View style={styles.resultCard}>
              <Text style={styles.cardTitle}>📄 Arka Yüz Sonuçları:</Text>
              <ScrollView style={styles.textScrollView} nestedScrollEnabled>
                <Text style={styles.resultText}>{backOCR.fullText}</Text>
              </ScrollView>
            </View>

            <TouchableOpacity
              style={styles.resetButton}
              onPress={reset}
            >
              <Text style={styles.resetButtonText}>🔄 Yeniden Tara</Text>
            </TouchableOpacity>
          </View>
        )}
      </ScrollView>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5F5F5',
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 20,
    backgroundColor: '#FFF',
    elevation: 2,
  },
  backButton: {
    fontSize: 28,
    color: '#333',
  },
  title: {
    fontSize: 18,
    fontWeight: '600',
    color: '#333',
  },
  content: {
    padding: 20,
  },
  progressContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    marginBottom: 30,
  },
  stepIndicator: {
    backgroundColor: '#E0E0E0',
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 20,
  },
  stepCompleted: {
    backgroundColor: '#4CAF50',
  },
  stepText: {
    color: '#FFF',
    fontWeight: '600',
  },
  stepConnector: {
    width: 40,
    height: 2,
    backgroundColor: '#E0E0E0',
    marginHorizontal: 10,
  },
  sideContainer: {
    marginBottom: 20,
  },
  sideTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 10,
  },
  sideDescription: {
    fontSize: 14,
    color: '#666',
    marginBottom: 20,
    lineHeight: 20,
  },
  imagePreview: {
    width: '100%',
    height: 250,
    borderRadius: 10,
    marginBottom: 20,
    resizeMode: 'contain',
  },
  buttonContainer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
  },
  button: {
    flex: 1,
    paddingVertical: 15,
    borderRadius: 10,
    alignItems: 'center',
    marginHorizontal: 5,
  },
  cameraButton: {
    backgroundColor: '#2196F3',
  },
  galleryButton: {
    backgroundColor: '#4CAF50',
  },
  buttonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
  loadingContainer: {
    alignItems: 'center',
    padding: 30,
  },
  loadingText: {
    marginTop: 10,
    fontSize: 16,
    color: '#666',
  },
  resultsContainer: {
    marginTop: 20,
  },
  resultsTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#4CAF50',
    marginBottom: 20,
    textAlign: 'center',
  },
  resultCard: {
    backgroundColor: '#FFF',
    padding: 15,
    borderRadius: 10,
    marginBottom: 15,
    elevation: 2,
  },
  cardTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 10,
  },
  textScrollView: {
    maxHeight: 150,
  },
  resultText: {
    fontSize: 13,
    color: '#666',
    lineHeight: 20,
  },
  resetButton: {
    backgroundColor: '#FF9800',
    paddingVertical: 15,
    borderRadius: 10,
    alignItems: 'center',
    marginTop: 10,
  },
  resetButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
});
