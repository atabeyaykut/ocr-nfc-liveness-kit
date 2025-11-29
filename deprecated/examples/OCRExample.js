// OCR Example - Basic usage demonstration
import React, { useState } from 'react';
import { View, StyleSheet, Text, TouchableOpacity, Alert } from 'react-native';
import OCRReader from '../modules/ocr/OCRReader';
import OCRCamera from '../modules/ocr/OCRCamera';
import Logger from '../utils/logger';

const OCRExample = () => {
  const [ocrReader] = useState(new OCRReader());
  const [isOCRActive, setIsOCRActive] = useState(false);
  const [extractedText, setExtractedText] = useState(null);
  const [isProcessing, setIsProcessing] = useState(false);

  const startOCRSession = async () => {
    try {
      setIsProcessing(true);
      Logger.info('Starting OCR session...');

      await ocrReader.startOCR();
      setIsOCRActive(true);

      Alert.alert('Success', 'OCR system initialized successfully');
    } catch (error) {
      Logger.error('Failed to start OCR:', error.message);
      Alert.alert('Error', `Failed to start OCR: ${error.message}`);
    } finally {
      setIsProcessing(false);
    }
  };

  const handleImageCaptured = async (photo) => {
    try {
      setIsProcessing(true);
      Logger.info('Processing captured image...');

      // Extract text from captured image
      const result = await ocrReader.extractText(photo.uri);
      setExtractedText(result);

      Alert.alert('Text Extracted', result.text);
    } catch (error) {
      Logger.error('Text extraction failed:', error.message);
      Alert.alert('Error', `Text extraction failed: ${error.message}`);
    } finally {
      setIsProcessing(false);
    }
  };

  const handleCameraError = (error) => {
    Logger.error('Camera error:', error.message);
    Alert.alert('Camera Error', error.message);
  };

  const testWithMockData = async () => {
    try {
      setIsProcessing(true);
      Logger.info('Testing OCR with mock data...');

      // Initialize OCR if not already done
      if (ocrReader.getStatus() === 'idle') {
        await ocrReader.startOCR();
      }

      // Simulate image capture and text extraction
      const mockImageUri = await ocrReader.captureImage();
      const result = await ocrReader.extractText(mockImageUri);

      setExtractedText(result);
      Alert.alert('Mock Test Success', `Extracted: ${result.text}`);
    } catch (error) {
      Logger.error('Mock test failed:', error.message);
      Alert.alert('Test Error', error.message);
    } finally {
      setIsProcessing(false);
    }
  };

  const resetOCR = () => {
    ocrReader.reset();
    setIsOCRActive(false);
    setExtractedText(null);
    Logger.info('OCR session reset');
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>OCR SDK Example</Text>

      <View style={styles.buttonContainer}>
        <TouchableOpacity
          style={[styles.button, isProcessing && styles.buttonDisabled]}
          onPress={startOCRSession}
          disabled={isProcessing || isOCRActive}
        >
          <Text style={styles.buttonText}>
            {isOCRActive ? 'OCR Active' : 'Start OCR'}
          </Text>
        </TouchableOpacity>

        <TouchableOpacity
          style={[
            styles.button,
            styles.testButton,
            isProcessing && styles.buttonDisabled,
          ]}
          onPress={testWithMockData}
          disabled={isProcessing}
        >
          <Text style={styles.buttonText}>Test with Mock Data</Text>
        </TouchableOpacity>

        <TouchableOpacity
          style={[styles.button, styles.resetButton]}
          onPress={resetOCR}
        >
          <Text style={styles.buttonText}>Reset</Text>
        </TouchableOpacity>
      </View>

      {isOCRActive && (
        <OCRCamera
          style={styles.camera}
          onImageCaptured={handleImageCaptured}
          onError={handleCameraError}
        />
      )}

      {extractedText && (
        <View style={styles.resultContainer}>
          <Text style={styles.resultTitle}>Extracted Text:</Text>
          <Text style={styles.resultText}>{extractedText.text}</Text>
          <Text style={styles.resultMeta}>
            Confidence: {(extractedText.confidence * 100).toFixed(1)}%
          </Text>
          <Text style={styles.resultMeta}>
            Language: {extractedText.language}
          </Text>
        </View>
      )}

      {isProcessing && (
        <View style={styles.processingOverlay}>
          <Text style={styles.processingText}>Processing...</Text>
        </View>
      )}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    textAlign: 'center',
    marginVertical: 20,
    color: '#333',
  },
  buttonContainer: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    paddingHorizontal: 20,
    marginBottom: 20,
  },
  button: {
    backgroundColor: '#007AFF',
    paddingHorizontal: 20,
    paddingVertical: 12,
    borderRadius: 8,
    minWidth: 80,
  },
  testButton: {
    backgroundColor: '#34C759',
  },
  resetButton: {
    backgroundColor: '#FF3B30',
  },
  buttonDisabled: {
    backgroundColor: '#ccc',
  },
  buttonText: {
    color: '#fff',
    fontSize: 14,
    fontWeight: 'bold',
    textAlign: 'center',
  },
  camera: {
    flex: 1,
    marginHorizontal: 20,
    marginBottom: 20,
    borderRadius: 12,
    overflow: 'hidden',
  },
  resultContainer: {
    backgroundColor: '#fff',
    margin: 20,
    padding: 15,
    borderRadius: 8,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  resultTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 10,
    color: '#333',
  },
  resultText: {
    fontSize: 16,
    color: '#666',
    marginBottom: 10,
    lineHeight: 22,
  },
  resultMeta: {
    fontSize: 14,
    color: '#999',
    marginBottom: 5,
  },
  processingOverlay: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    backgroundColor: 'rgba(0,0,0,0.5)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  processingText: {
    color: '#fff',
    fontSize: 18,
    fontWeight: 'bold',
  },
});

export default OCRExample;
