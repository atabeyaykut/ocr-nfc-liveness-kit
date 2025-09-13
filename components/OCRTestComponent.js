/**
 * OCR Test Component - Mock Environment
 * Tests OCR functionality without camera using test images
 */

import React, { useState } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
  Alert,
  Image,
} from 'react-native';

// Mock OCR function that simulates text recognition from images
const recognizeTextFromImage = async (imagePath) => {
  // Simulate processing delay
  await new Promise(resolve => setTimeout(resolve, 1500));
  
  // Mock OCR results based on image name
  const mockResults = {
    'id-card-sample.jpg': {
      text: 'T.C. TÜRKIYE CUMHURİYETİ\nKİMLİK KARTI\nAD: MEHMET\nSOYAD: YILMAZ\nT.C. NO: 12345678901\nDOĞUM TARİHİ: 01.01.1990',
      confidence: 0.92,
      fields: {
        name: 'MEHMET',
        surname: 'YILMAZ',
        tcNo: '12345678901',
        birthDate: '01.01.1990'
      }
    },
    'passport-sample.jpg': {
      text: 'REPUBLIC OF TURKEY\nPASSPORT\nSurname: KAYA\nGiven Names: AYŞE\nPassport No: U12345678',
      confidence: 0.88,
      fields: {
        surname: 'KAYA',
        givenNames: 'AYŞE',
        passportNo: 'U12345678'
      }
    },
    'document-sample.jpg': {
      text: 'BELGE\nTarih: 15.03.2024\nSayı: 2024/001\nKonu: Test Belgesi\nBu belge test amaçlıdır.',
      confidence: 0.85,
      fields: {
        date: '15.03.2024',
        number: '2024/001',
        subject: 'Test Belgesi'
      }
    }
  };

  const imageName = imagePath.split('/').pop();
  const result = mockResults[imageName] || {
    text: 'Sample text extracted from image\nLine 1: Test content\nLine 2: More test data',
    confidence: 0.75,
    fields: {
      general: 'Sample extracted content'
    }
  };

  return {
    success: true,
    ...result,
    processingTime: 1500,
    timestamp: new Date().toISOString()
  };
};

const OCRTestComponent = () => {
  const [isProcessing, setIsProcessing] = useState(false);
  const [results, setResults] = useState(null);
  const [selectedImage, setSelectedImage] = useState(null);

  const testImages = [
    {
      name: 'id-card-sample.jpg',
      title: 'Türk Kimlik Kartı',
      path: 'assets/test-images/id-card-sample.jpg'
    },
    {
      name: 'passport-sample.jpg', 
      title: 'Pasaport',
      path: 'assets/test-images/passport-sample.jpg'
    },
    {
      name: 'document-sample.jpg',
      title: 'Genel Belge',
      path: 'assets/test-images/document-sample.jpg'
    }
  ];

  const handleOCRTest = async (imagePath) => {
    try {
      setIsProcessing(true);
      setSelectedImage(imagePath);
      setResults(null);

      console.log('🔍 OCR Test Started:', imagePath);
      
      const result = await recognizeTextFromImage(imagePath);
      
      setResults(result);
      
      console.log('✅ OCR Test Completed:', result);
      console.log('📝 Extracted Text:', result.text);
      console.log('🎯 Confidence:', result.confidence);
      console.log('📊 Fields:', result.fields);
      
      Alert.alert(
        'OCR Test Tamamlandı',
        `Güven: ${(result.confidence * 100).toFixed(1)}%\n\nÇıkarılan metin konsola yazdırıldı.`,
        [{ text: 'Tamam' }]
      );

    } catch (error) {
      console.error('❌ OCR Test Error:', error);
      Alert.alert('Hata', `OCR test hatası: ${error.message}`);
    } finally {
      setIsProcessing(false);
    }
  };

  const clearResults = () => {
    setResults(null);
    setSelectedImage(null);
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>📷 OCR Test Modülü</Text>
      <Text style={styles.subtitle}>Test resimlerinden metin çıkarma</Text>

      <ScrollView style={styles.scrollView}>
        <View style={styles.imageGrid}>
          {testImages.map((image, index) => (
            <TouchableOpacity
              key={index}
              style={[
                styles.imageButton,
                selectedImage === image.path && styles.selectedImageButton
              ]}
              onPress={() => handleOCRTest(image.path)}
              disabled={isProcessing}
            >
              <Text style={styles.imageButtonText}>📄</Text>
              <Text style={styles.imageTitle}>{image.title}</Text>
              <Text style={styles.imageName}>{image.name}</Text>
            </TouchableOpacity>
          ))}
        </View>

        {isProcessing && (
          <View style={styles.processingContainer}>
            <Text style={styles.processingText}>🔄 OCR işlemi devam ediyor...</Text>
            <Text style={styles.processingSubtext}>Metin çıkarılıyor...</Text>
          </View>
        )}

        {results && (
          <View style={styles.resultsContainer}>
            <Text style={styles.resultsTitle}>📋 OCR Sonuçları</Text>
            
            <View style={styles.resultItem}>
              <Text style={styles.resultLabel}>Güven Oranı:</Text>
              <Text style={styles.resultValue}>{(results.confidence * 100).toFixed(1)}%</Text>
            </View>

            <View style={styles.resultItem}>
              <Text style={styles.resultLabel}>İşlem Süresi:</Text>
              <Text style={styles.resultValue}>{results.processingTime}ms</Text>
            </View>

            <View style={styles.textContainer}>
              <Text style={styles.resultLabel}>Çıkarılan Metin:</Text>
              <ScrollView style={styles.textScrollView}>
                <Text style={styles.extractedText}>{results.text}</Text>
              </ScrollView>
            </View>

            {results.fields && (
              <View style={styles.fieldsContainer}>
                <Text style={styles.resultLabel}>Çıkarılan Alanlar:</Text>
                {Object.entries(results.fields).map(([key, value]) => (
                  <View key={key} style={styles.fieldItem}>
                    <Text style={styles.fieldKey}>{key}:</Text>
                    <Text style={styles.fieldValue}>{value}</Text>
                  </View>
                ))}
              </View>
            )}

            <TouchableOpacity style={styles.clearButton} onPress={clearResults}>
              <Text style={styles.clearButtonText}>🗑️ Temizle</Text>
            </TouchableOpacity>
          </View>
        )}
      </ScrollView>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
    padding: 16,
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#333',
    textAlign: 'center',
    marginBottom: 8,
  },
  subtitle: {
    fontSize: 14,
    color: '#666',
    textAlign: 'center',
    marginBottom: 20,
  },
  scrollView: {
    flex: 1,
  },
  imageGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-around',
    marginBottom: 20,
  },
  imageButton: {
    backgroundColor: '#fff',
    borderRadius: 12,
    padding: 16,
    margin: 8,
    alignItems: 'center',
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
    minWidth: 100,
  },
  selectedImageButton: {
    backgroundColor: '#e3f2fd',
    borderColor: '#2196f3',
    borderWidth: 2,
  },
  imageButtonText: {
    fontSize: 32,
    marginBottom: 8,
  },
  imageTitle: {
    fontSize: 12,
    fontWeight: 'bold',
    color: '#333',
    textAlign: 'center',
    marginBottom: 4,
  },
  imageName: {
    fontSize: 10,
    color: '#666',
    textAlign: 'center',
  },
  processingContainer: {
    backgroundColor: '#fff3cd',
    borderRadius: 8,
    padding: 16,
    marginVertical: 16,
    alignItems: 'center',
  },
  processingText: {
    fontSize: 16,
    color: '#856404',
    fontWeight: 'bold',
  },
  processingSubtext: {
    fontSize: 14,
    color: '#856404',
    marginTop: 4,
  },
  resultsContainer: {
    backgroundColor: '#fff',
    borderRadius: 12,
    padding: 16,
    marginTop: 16,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  resultsTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 16,
    textAlign: 'center',
  },
  resultItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 8,
    paddingVertical: 4,
  },
  resultLabel: {
    fontSize: 14,
    fontWeight: 'bold',
    color: '#333',
  },
  resultValue: {
    fontSize: 14,
    color: '#666',
  },
  textContainer: {
    marginTop: 16,
  },
  textScrollView: {
    maxHeight: 120,
    backgroundColor: '#f8f9fa',
    borderRadius: 8,
    padding: 12,
    marginTop: 8,
  },
  extractedText: {
    fontSize: 12,
    color: '#333',
    lineHeight: 18,
  },
  fieldsContainer: {
    marginTop: 16,
  },
  fieldItem: {
    flexDirection: 'row',
    marginBottom: 6,
    paddingVertical: 2,
  },
  fieldKey: {
    fontSize: 12,
    fontWeight: 'bold',
    color: '#333',
    minWidth: 80,
  },
  fieldValue: {
    fontSize: 12,
    color: '#666',
    flex: 1,
  },
  clearButton: {
    backgroundColor: '#dc3545',
    borderRadius: 8,
    padding: 12,
    marginTop: 16,
    alignItems: 'center',
  },
  clearButtonText: {
    color: '#fff',
    fontSize: 14,
    fontWeight: 'bold',
  },
});

export default OCRTestComponent;
