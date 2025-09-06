// OCR Camera Component - React Native camera integration for OCR
import React, { useState, useRef, useEffect } from 'react';
import { View, StyleSheet, TouchableOpacity, Text, Alert } from 'react-native';
import Logger from '../../utils/logger';
import { OCR_STATUS } from './types';

const OCRCamera = ({ onImageCaptured, onError, style }) => {
  const [cameraStatus, setCameraStatus] = useState(OCR_STATUS.IDLE);
  const [hasPermission, setHasPermission] = useState(null);
  const cameraRef = useRef(null);

  useEffect(() => {
    requestCameraPermission();
  }, []);

  const requestCameraPermission = async () => {
    try {
      // Placeholder for actual camera permission request
      // Will be implemented with react-native-vision-camera
      Logger.info('Requesting camera permission...');
      setHasPermission(true);
      setCameraStatus(OCR_STATUS.READY);
    } catch (error) {
      Logger.error('Camera permission failed:', error.message);
      setHasPermission(false);
      if (onError) onError(error);
    }
  };

  const capturePhoto = async () => {
    try {
      if (!cameraRef.current) {
        throw new Error('Camera not available');
      }

      setCameraStatus(OCR_STATUS.CAPTURING);
      Logger.info('Capturing photo for OCR...');

      // Placeholder implementation - will be replaced with actual camera capture
      const mockPhoto = {
        uri: 'file:///mock/path/captured_photo.jpg',
        width: 1920,
        height: 1080,
        timestamp: Date.now()
      };

      setCameraStatus(OCR_STATUS.SUCCESS);
      Logger.info('Photo captured successfully');
      
      if (onImageCaptured) {
        onImageCaptured(mockPhoto);
      }

    } catch (error) {
      setCameraStatus(OCR_STATUS.ERROR);
      Logger.error('Photo capture failed:', error.message);
      if (onError) onError(error);
    }
  };

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
        <Text style={styles.message}>Camera permission denied</Text>
        <TouchableOpacity style={styles.button} onPress={requestCameraPermission}>
          <Text style={styles.buttonText}>Request Permission</Text>
        </TouchableOpacity>
      </View>
    );
  }

  return (
    <View style={[styles.container, style]}>
      {/* Placeholder for actual camera preview */}
      <View style={styles.cameraPreview}>
        <Text style={styles.previewText}>Camera Preview</Text>
        <Text style={styles.statusText}>Status: {cameraStatus}</Text>
      </View>
      
      <View style={styles.controls}>
        <TouchableOpacity 
          style={[styles.captureButton, cameraStatus === OCR_STATUS.CAPTURING && styles.capturing]} 
          onPress={capturePhoto}
          disabled={cameraStatus === OCR_STATUS.CAPTURING}
        >
          <Text style={styles.captureButtonText}>
            {cameraStatus === OCR_STATUS.CAPTURING ? 'Capturing...' : 'Capture'}
          </Text>
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
  cameraPreview: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#333',
  },
  previewText: {
    color: '#fff',
    fontSize: 18,
    marginBottom: 10,
  },
  statusText: {
    color: '#ccc',
    fontSize: 14,
  },
  controls: {
    position: 'absolute',
    bottom: 50,
    left: 0,
    right: 0,
    alignItems: 'center',
  },
  captureButton: {
    width: 80,
    height: 80,
    borderRadius: 40,
    backgroundColor: '#fff',
    justifyContent: 'center',
    alignItems: 'center',
    borderWidth: 4,
    borderColor: '#007AFF',
  },
  capturing: {
    backgroundColor: '#ccc',
  },
  captureButtonText: {
    color: '#007AFF',
    fontSize: 16,
    fontWeight: 'bold',
  },
  message: {
    color: '#fff',
    fontSize: 16,
    textAlign: 'center',
    margin: 20,
  },
  button: {
    backgroundColor: '#007AFF',
    padding: 15,
    borderRadius: 8,
    margin: 20,
  },
  buttonText: {
    color: '#fff',
    fontSize: 16,
    textAlign: 'center',
    fontWeight: 'bold',
  },
});

export default OCRCamera;
