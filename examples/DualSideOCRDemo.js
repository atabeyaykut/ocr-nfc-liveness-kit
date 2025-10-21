/**
 * Dual-Side OCR Demo - Ön ve Arka Yüz Birlikte Tarama
 * Her iki tarafı da okur, karşılaştırır ve birleştirir
 */

import React, { useState, useRef, useCallback } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  ScrollView,
  SafeAreaView,
  Alert,
  ActivityIndicator,
  Image,
} from 'react-native';
import ImageCropPicker from 'react-native-image-crop-picker';
import OCRReaderModule from '../modules/ocr/OCRReaderModule';

const DualSideOCRDemo = ({ navigation }) => {
  const [frontImage, setFrontImage] = useState(null);
  const [backImage, setBackImage] = useState(null);
  const [isProcessing, setIsProcessing] = useState(false);
  const [result, setResult] = useState(null);
  const [logs, setLogs] = useState([]);
  const [currentStep, setCurrentStep] = useState(1); // 1: Front, 2: Back, 3: Results

  const ocrReader = useRef(new OCRReaderModule({
    cardType: 'tc_kimlik',
    maxAttempts: 3
  })).current;

  const addLog = useCallback((message) => {
    const timestamp = new Date().toLocaleTimeString('tr-TR');
    setLogs(prev => [...prev.slice(-19), `[${timestamp}] ${message}`]);
  }, []);

  // Step 1: Capture/Select Front Side
  const selectFrontImage = async (useCamera = false) => {
    try {
      addLog('📸 Ön yüz fotoğrafı seçiliyor...');
      
      const image = useCamera
        ? await ImageCropPicker.openCamera({
            width: 1920,
            height: 1080,
            cropping: true,
            cropperCircleOverlay: false,
            compressImageQuality: 1.0,
            mediaType: 'photo',
          })
        : await ImageCropPicker.openPicker({
            width: 1920,
            height: 1080,
            cropping: true,
            compressImageQuality: 1.0,
            mediaType: 'photo',
          });

      setFrontImage(image.path);
      addLog('✅ Ön yüz fotoğrafı seçildi');
      setCurrentStep(2);
    } catch (error) {
      if (error.message !== 'User cancelled image selection') {
        addLog(`❌ Hata: ${error.message}`);
        Alert.alert('Hata', `Fotoğraf seçilemedi: ${error.message}`);
      }
    }
  };

  // Step 2: Capture/Select Back Side
  const selectBackImage = async (useCamera = false) => {
    try {
      addLog('📸 Arka yüz fotoğrafı seçiliyor...');
      
      const image = useCamera
        ? await ImageCropPicker.openCamera({
            width: 1920,
            height: 1080,
            cropping: true,
            cropperCircleOverlay: false,
            compressImageQuality: 1.0,
            mediaType: 'photo',
          })
        : await ImageCropPicker.openPicker({
            width: 1920,
            height: 1080,
            cropping: true,
            compressImageQuality: 1.0,
            mediaType: 'photo',
          });

      setBackImage(image.path);
      addLog('✅ Arka yüz fotoğrafı seçildi');
      setCurrentStep(3);
    } catch (error) {
      if (error.message !== 'User cancelled image selection') {
        addLog(`❌ Hata: ${error.message}`);
        Alert.alert('Hata', `Fotoğraf seçilemedi: ${error.message}`);
      }
    }
  };

  // Step 3: Process Both Sides
  const processBothSides = async () => {
    if (!frontImage || !backImage) {
      Alert.alert('Uyarı', 'Lütfen önce her iki tarafın da fotoğrafını seçin.');
      return;
    }

    try {
      setIsProcessing(true);
      addLog('🚀 Çift taraflı tarama başlatılıyor...');

      const result = await ocrReader.processBothSides(frontImage, backImage);

      addLog('✅ Tarama tamamlandı!');
      addLog(`📊 Güven: ${result.data.confidence}%`);
      addLog(`📊 Tamamlanma: ${result.data.completeness}%`);
      
      if (result.data.conflicts && result.data.conflicts.length > 0) {
        addLog(`⚠️ ${result.data.conflicts.length} çelişki tespit edildi`);
      }

      setResult(result);
      setCurrentStep(4);
    } catch (error) {
      addLog(`❌ Tarama hatası: ${error.message}`);
      Alert.alert('Hata', `Tarama başarısız: ${error.message}`);
    } finally {
      setIsProcessing(false);
    }
  };

  // Reset all
  const reset = () => {
    setFrontImage(null);
    setBackImage(null);
    setResult(null);
    setCurrentStep(1);
    setLogs([]);
    addLog('🔄 Sistem sıfırlandı');
  };

  const getStepColor = (step) => {
    if (step < currentStep) return '#4CAF50'; // Completed
    if (step === currentStep) return '#2196F3'; // Current
    return '#ccc'; // Not started
  };

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView style={styles.scrollView}>
        <Text style={styles.title}>Çift Taraflı Kimlik Okuma</Text>
        <Text style={styles.subtitle}>Ön ve arka yüzü birlikte tarayın</Text>

        {/* Progress Steps */}
        <View style={styles.stepsContainer}>
          <View style={styles.stepRow}>
            <View style={[styles.stepCircle, { backgroundColor: getStepColor(1) }]}>
              <Text style={styles.stepNumber}>1</Text>
            </View>
            <Text style={styles.stepLabel}>Ön Yüz</Text>
          </View>
          <View style={styles.stepConnector} />
          <View style={styles.stepRow}>
            <View style={[styles.stepCircle, { backgroundColor: getStepColor(2) }]}>
              <Text style={styles.stepNumber}>2</Text>
            </View>
            <Text style={styles.stepLabel}>Arka Yüz</Text>
          </View>
          <View style={styles.stepConnector} />
          <View style={styles.stepRow}>
            <View style={[styles.stepCircle, { backgroundColor: getStepColor(3) }]}>
              <Text style={styles.stepNumber}>3</Text>
            </View>
            <Text style={styles.stepLabel}>Tarama</Text>
          </View>
        </View>

        {/* Step 1: Front Image */}
        {currentStep === 1 && (
          <View style={styles.stepContent}>
            <Text style={styles.stepTitle}>📄 Adım 1: Ön Yüz</Text>
            <Text style={styles.stepDescription}>
              Kimlik kartının ön yüzünün fotoğrafını çekin veya galeriden seçin
            </Text>
            <View style={styles.buttonRow}>
              <TouchableOpacity
                style={[styles.button, styles.cameraButton]}
                onPress={() => selectFrontImage(true)}
              >
                <Text style={styles.buttonText}>📸 Kamera</Text>
              </TouchableOpacity>
              <TouchableOpacity
                style={[styles.button, styles.galleryButton]}
                onPress={() => selectFrontImage(false)}
              >
                <Text style={styles.buttonText}>🖼️ Galeri</Text>
              </TouchableOpacity>
            </View>
          </View>
        )}

        {/* Step 2: Back Image */}
        {currentStep === 2 && (
          <View style={styles.stepContent}>
            <View style={styles.imagePreview}>
              <Text style={styles.previewLabel}>✅ Ön yüz seçildi</Text>
              {frontImage && (
                <Image source={{ uri: frontImage }} style={styles.previewImage} />
              )}
            </View>
            
            <Text style={styles.stepTitle}>📋 Adım 2: Arka Yüz (MRZ)</Text>
            <Text style={styles.stepDescription}>
              Kimlik kartının arka yüzünün fotoğrafını çekin veya galeriden seçin
            </Text>
            <View style={styles.buttonRow}>
              <TouchableOpacity
                style={[styles.button, styles.cameraButton]}
                onPress={() => selectBackImage(true)}
              >
                <Text style={styles.buttonText}>📸 Kamera</Text>
              </TouchableOpacity>
              <TouchableOpacity
                style={[styles.button, styles.galleryButton]}
                onPress={() => selectBackImage(false)}
              >
                <Text style={styles.buttonText}>🖼️ Galeri</Text>
              </TouchableOpacity>
            </View>
            <TouchableOpacity
              style={[styles.button, styles.backButton]}
              onPress={() => setCurrentStep(1)}
            >
              <Text style={styles.buttonText}>← Geri</Text>
            </TouchableOpacity>
          </View>
        )}

        {/* Step 3: Process */}
        {currentStep === 3 && (
          <View style={styles.stepContent}>
            <View style={styles.imagePreview}>
              <Text style={styles.previewLabel}>✅ Ön yüz seçildi</Text>
              {frontImage && (
                <Image source={{ uri: frontImage }} style={styles.previewImageSmall} />
              )}
            </View>
            <View style={styles.imagePreview}>
              <Text style={styles.previewLabel}>✅ Arka yüz seçildi</Text>
              {backImage && (
                <Image source={{ uri: backImage }} style={styles.previewImageSmall} />
              )}
            </View>
            
            <Text style={styles.stepTitle}>🚀 Adım 3: Tarama</Text>
            <Text style={styles.stepDescription}>
              Her iki tarafı da okuyup karşılaştırmaya hazır
            </Text>
            
            <TouchableOpacity
              style={[styles.button, styles.processButton, isProcessing && styles.buttonDisabled]}
              onPress={processBothSides}
              disabled={isProcessing}
            >
              {isProcessing ? (
                <ActivityIndicator color="#fff" />
              ) : (
                <Text style={styles.buttonText}>🔍 Taramayı Başlat</Text>
              )}
            </TouchableOpacity>
            
            <TouchableOpacity
              style={[styles.button, styles.backButton]}
              onPress={() => setCurrentStep(2)}
              disabled={isProcessing}
            >
              <Text style={styles.buttonText}>← Geri</Text>
            </TouchableOpacity>
          </View>
        )}

        {/* Step 4: Results */}
        {currentStep === 4 && result && (
          <View style={styles.resultsContainer}>
            <Text style={styles.stepTitle}>✅ Tarama Tamamlandı</Text>
            
            {/* Confidence & Completeness */}
            <View style={styles.statsContainer}>
              <View style={styles.statBox}>
                <Text style={styles.statValue}>{result.data.confidence}%</Text>
                <Text style={styles.statLabel}>Güven</Text>
              </View>
              <View style={styles.statBox}>
                <Text style={styles.statValue}>{result.data.completeness}%</Text>
                <Text style={styles.statLabel}>Tamamlanma</Text>
              </View>
              <View style={styles.statBox}>
                <Text style={styles.statValue}>{result.data.conflicts?.length || 0}</Text>
                <Text style={styles.statLabel}>Çelişki</Text>
              </View>
            </View>

            {/* Conflicts Warning */}
            {result.data.conflicts && result.data.conflicts.length > 0 && (
              <View style={styles.conflictsContainer}>
                <Text style={styles.conflictsTitle}>⚠️ Tespit Edilen Çelişkiler:</Text>
                {result.data.conflicts.map((conflict, index) => (
                  <View key={index} style={styles.conflictItem}>
                    <Text style={styles.conflictField}>📌 {conflict.field}</Text>
                    <Text style={styles.conflictDetail}>Ön: {conflict.frontValue}</Text>
                    <Text style={styles.conflictDetail}>Arka: {conflict.backValue}</Text>
                    <Text style={styles.conflictUsed}>✓ Kullanılan: {conflict.used}</Text>
                  </View>
                ))}
              </View>
            )}

            {/* Merged Data */}
            <View style={styles.dataContainer}>
              <Text style={styles.dataTitle}>📋 Birleştirilmiş Bilgiler:</Text>
              
              <DataField label="TC Kimlik No" value={result.data.tcNo} validation={result.data.validation?.tcNo} />
              <DataField label="Ad" value={result.data.name} validation={result.data.validation?.name} />
              <DataField label="Soyad" value={result.data.surname} validation={result.data.validation?.surname} />
              <DataField label="Doğum Tarihi" value={result.data.birthDate} validation={result.data.validation?.birthDate} />
              <DataField label="Cinsiyet" value={result.data.gender} validation={result.data.validation?.gender} />
              <DataField label="Belge No" value={result.data.documentNo} validation={result.data.validation?.documentNo} />
              <DataField label="Son Geçerlilik" value={result.data.validUntil} validation={result.data.validation?.validUntil} />
              <DataField label="Anne Adı" value={result.data.motherName} validation={result.data.validation?.motherName} />
              <DataField label="Baba Adı" value={result.data.fatherName} validation={result.data.validation?.fatherName} />
              <DataField label="Veren Makam" value={result.data.issuedBy} validation={result.data.validation?.issuedBy} />
            </View>

            <TouchableOpacity style={[styles.button, styles.resetButton]} onPress={reset}>
              <Text style={styles.buttonText}>🔄 Yeni Tarama</Text>
            </TouchableOpacity>
          </View>
        )}

        {/* Logs */}
        <View style={styles.logsContainer}>
          <View style={styles.logsHeader}>
            <Text style={styles.logsTitle}>📝 İşlem Logları</Text>
            <TouchableOpacity onPress={() => setLogs([])}>
              <Text style={styles.clearButton}>Temizle</Text>
            </TouchableOpacity>
          </View>
          <View style={styles.logsContent}>
            {logs.map((log, index) => (
              <Text key={index} style={styles.logItem}>{log}</Text>
            ))}
          </View>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
};

// Helper component for displaying data fields with validation status
const DataField = ({ label, value, validation }) => {
  if (!value) return null;
  
  const getValidationIcon = (validation) => {
    switch (validation) {
      case 'verified': return '✅';
      case 'conflict': return '⚠️';
      case 'front-only': return '📄';
      case 'back-only': return '📋';
      default: return '•';
    }
  };

  const getValidationColor = (validation) => {
    switch (validation) {
      case 'verified': return '#4CAF50';
      case 'conflict': return '#FF9800';
      default: return '#666';
    }
  };

  return (
    <View style={styles.dataField}>
      <Text style={styles.dataLabel}>{label}:</Text>
      <View style={styles.dataValueContainer}>
        <Text style={styles.dataValue}>{value}</Text>
        <Text style={[styles.validationBadge, { color: getValidationColor(validation) }]}>
          {getValidationIcon(validation)}
        </Text>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
  },
  scrollView: {
    flex: 1,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    textAlign: 'center',
    marginTop: 20,
    color: '#333',
  },
  subtitle: {
    fontSize: 14,
    textAlign: 'center',
    color: '#666',
    marginBottom: 20,
  },
  stepsContainer: {
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 20,
    marginBottom: 30,
  },
  stepRow: {
    alignItems: 'center',
  },
  stepCircle: {
    width: 40,
    height: 40,
    borderRadius: 20,
    justifyContent: 'center',
    alignItems: 'center',
  },
  stepNumber: {
    color: '#fff',
    fontSize: 18,
    fontWeight: 'bold',
  },
  stepLabel: {
    marginTop: 5,
    fontSize: 12,
    color: '#666',
  },
  stepConnector: {
    width: 40,
    height: 2,
    backgroundColor: '#ddd',
    marginBottom: 20,
  },
  stepContent: {
    backgroundColor: '#fff',
    margin: 10,
    padding: 20,
    borderRadius: 10,
  },
  stepTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 10,
    color: '#333',
  },
  stepDescription: {
    fontSize: 14,
    color: '#666',
    marginBottom: 20,
  },
  buttonRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 10,
  },
  button: {
    flex: 1,
    paddingVertical: 15,
    borderRadius: 8,
    marginHorizontal: 5,
    alignItems: 'center',
  },
  cameraButton: {
    backgroundColor: '#2196F3',
  },
  galleryButton: {
    backgroundColor: '#4CAF50',
  },
  processButton: {
    backgroundColor: '#FF5722',
    marginHorizontal: 0,
    marginBottom: 10,
  },
  backButton: {
    backgroundColor: '#757575',
    marginHorizontal: 0,
  },
  resetButton: {
    backgroundColor: '#2196F3',
    marginHorizontal: 0,
    marginTop: 20,
  },
  buttonDisabled: {
    backgroundColor: '#ccc',
  },
  buttonText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
  },
  imagePreview: {
    marginBottom: 15,
    alignItems: 'center',
  },
  previewLabel: {
    fontSize: 14,
    color: '#4CAF50',
    marginBottom: 5,
  },
  previewImage: {
    width: 300,
    height: 180,
    borderRadius: 8,
  },
  previewImageSmall: {
    width: 200,
    height: 120,
    borderRadius: 8,
  },
  resultsContainer: {
    backgroundColor: '#fff',
    margin: 10,
    padding: 20,
    borderRadius: 10,
  },
  statsContainer: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    marginVertical: 20,
  },
  statBox: {
    alignItems: 'center',
  },
  statValue: {
    fontSize: 32,
    fontWeight: 'bold',
    color: '#2196F3',
  },
  statLabel: {
    fontSize: 12,
    color: '#666',
    marginTop: 5,
  },
  conflictsContainer: {
    backgroundColor: '#FFF3E0',
    padding: 15,
    borderRadius: 8,
    marginBottom: 20,
  },
  conflictsTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#F57C00',
    marginBottom: 10,
  },
  conflictItem: {
    backgroundColor: '#fff',
    padding: 10,
    borderRadius: 5,
    marginBottom: 10,
  },
  conflictField: {
    fontSize: 14,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 5,
  },
  conflictDetail: {
    fontSize: 12,
    color: '#666',
  },
  conflictUsed: {
    fontSize: 12,
    color: '#4CAF50',
    fontWeight: 'bold',
    marginTop: 5,
  },
  dataContainer: {
    marginTop: 10,
  },
  dataTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 15,
    color: '#333',
  },
  dataField: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingVertical: 8,
    borderBottomWidth: 1,
    borderBottomColor: '#eee',
  },
  dataLabel: {
    fontSize: 14,
    color: '#666',
    flex: 1,
  },
  dataValueContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    flex: 2,
  },
  dataValue: {
    fontSize: 14,
    color: '#333',
    fontWeight: '500',
    flex: 1,
  },
  validationBadge: {
    fontSize: 16,
    marginLeft: 5,
  },
  logsContainer: {
    backgroundColor: '#fff',
    margin: 10,
    padding: 15,
    borderRadius: 10,
    marginBottom: 30,
  },
  logsHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 10,
  },
  logsTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#333',
  },
  clearButton: {
    color: '#2196F3',
    fontSize: 14,
  },
  logsContent: {
    maxHeight: 200,
  },
  logItem: {
    fontSize: 12,
    color: '#666',
    marginBottom: 3,
  },
});

export default DualSideOCRDemo;
