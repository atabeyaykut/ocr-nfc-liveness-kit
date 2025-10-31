/**
 * Simplified OCR Reader - ImagePicker Only
 * No Vision Camera - Uses ImagePicker for image capture
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

export const SimplifiedOCRScreen = ({ navigation }) => {
  const [imageUri, setImageUri] = useState(null);
  const [ocrResult, setOcrResult] = useState(null);
  const [loading, setLoading] = useState(false);

  const requestCameraPermission = async () => {
    const result = await request(PERMISSIONS.ANDROID.CAMERA);
    return result === RESULTS.GRANTED;
  };

  const captureImage = async () => {
    try {
      const hasPermission = await requestCameraPermission();
      if (!hasPermission) {
        Alert.alert('İzin Gerekli', 'Kamera izni vermeniz gerekiyor.');
        return;
      }

      setLoading(true);
      const image = await ImageCropPicker.openCamera({
        width: 1920,
        height: 1080,
        cropping: true,
        includeBase64: false,
        compressImageQuality: 0.8,
        mediaType: 'photo',
      });

      setImageUri(image.path);
      await performOCR(image.path);
    } catch (error) {
      if (error.code !== 'E_PICKER_CANCELLED') {
        Alert.alert('Hata', 'Fotoğraf çekilemedi: ' + error.message);
      }
    } finally {
      setLoading(false);
    }
  };

  const selectFromGallery = async () => {
    try {
      setLoading(true);
      const image = await ImageCropPicker.openPicker({
        width: 1920,
        height: 1080,
        cropping: true,
        includeBase64: false,
        compressImageQuality: 0.8,
        mediaType: 'photo',
      });

      setImageUri(image.path);
      await performOCR(image.path);
    } catch (error) {
      if (error.code !== 'E_PICKER_CANCELLED') {
        Alert.alert('Hata', 'Görsel seçilemedi: ' + error.message);
      }
    } finally {
      setLoading(false);
    }
  };

  const performOCR = async (imagePath) => {
    try {
      setLoading(true);
      
      // ML Kit requires file:// URI format on Android
      // ImagePicker returns file:// path by default, use it directly
      const fileUri = imagePath.startsWith('file://') ? imagePath : `file://${imagePath}`;
      
      console.log('[OCR] Processing image:', fileUri);
      const result = await TextRecognition.recognize(fileUri);
      
      const extractedData = {
        fullText: result.text,
        blocks: result.blocks.map(block => block.text),
        timestamp: new Date().toISOString(),
      };

      setOcrResult(extractedData);
      Alert.alert('Başarılı', 'Metin tanıma tamamlandı!');
    } catch (error) {
      Alert.alert('Hata', 'OCR işlemi başarısız: ' + error.message);
      console.error('[OCR] Error:', error);
    } finally {
      setLoading(false);
    }
  };

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.header}>
        <TouchableOpacity onPress={() => navigation.goBack()}>
          <Text style={styles.backButton}>←</Text>
        </TouchableOpacity>
        <Text style={styles.title}>OCR Okuma</Text>
        <View style={{ width: 40 }} />
      </View>

      <ScrollView contentContainerStyle={styles.content}>
        {imageUri && (
          <Image source={{ uri: imageUri }} style={styles.imagePreview} />
        )}

        <View style={styles.buttonContainer}>
          <TouchableOpacity
            style={[styles.button, styles.cameraButton]}
            onPress={captureImage}
            disabled={loading}
          >
            <Text style={styles.buttonText}>📷 Fotoğraf Çek</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[styles.button, styles.galleryButton]}
            onPress={selectFromGallery}
            disabled={loading}
          >
            <Text style={styles.buttonText}>🖼️ Galeriden Seç</Text>
          </TouchableOpacity>
        </View>

        {loading && (
          <View style={styles.loadingContainer}>
            <ActivityIndicator size="large" color="#2196F3" />
            <Text style={styles.loadingText}>İşleniyor...</Text>
          </View>
        )}

        {ocrResult && (
          <View style={styles.resultContainer}>
            <Text style={styles.resultTitle}>Tanınan Metin:</Text>
            <Text style={styles.resultText}>{ocrResult.fullText}</Text>
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
  imagePreview: {
    width: '100%',
    height: 300,
    borderRadius: 10,
    marginBottom: 20,
    resizeMode: 'contain',
  },
  buttonContainer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 20,
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
  resultContainer: {
    backgroundColor: '#FFF',
    padding: 20,
    borderRadius: 10,
    elevation: 2,
  },
  resultTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 10,
  },
  resultText: {
    fontSize: 14,
    color: '#666',
    lineHeight: 22,
  },
});
