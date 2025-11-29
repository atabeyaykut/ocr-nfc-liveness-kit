/**
 * Secure OCR Integration Example
 * 
 * Demonstrates how to use the token-based secure OCR implementation
 * that fixes SEC-001: PII leakage through React Native bridge
 */

import React, { useState } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  Image,
  StyleSheet,
  Alert,
  ActivityIndicator,
} from 'react-native';
import { launchCamera } from 'react-native-image-picker';
import SecureOCRReader from '../modules/ocr/SecureOCRReader';

const SecureOCRExample = () => {
  const [loading, setLoading] = useState(false);
  const [imageUri, setImageUri] = useState(null);
  const [tokenResponse, setTokenResponse] = useState(null);
  const [ocrResult, setOcrResult] = useState(null);
  
  // Initialize OCR reader
  const ocrReader = new SecureOCRReader({
    onSuccess: (event) => {
      console.log('OCR Success Event:', event);
    },
    onError: (error) => {
      console.error('OCR Error Event:', error);
    },
  });
  
  /**
   * Step 1: Capture image
   */
  const handleCaptureImage = () => {
    launchCamera(
      {
        mediaType: 'photo',
        quality: 1,
        saveToPhotos: false,
      },
      (response) => {
        if (response.didCancel) {
          return;
        }
        
        if (response.errorCode) {
          Alert.alert('Error', response.errorMessage);
          return;
        }
        
        const uri = response.assets[0].uri;
        setImageUri(uri);
        setTokenResponse(null);
        setOcrResult(null);
      }
    );
  };
  
  /**
   * Step 2: Scan document (returns token only, NO PII)
   */
  const handleScan = async () => {
    if (!imageUri) {
      Alert.alert('Error', 'Please capture an image first');
      return;
    }
    
    setLoading(true);
    
    try {
      // Scan returns ONLY token + metadata (NO PII data)
      const response = await ocrReader.scan(imageUri);
      
      console.log('Token Response:', {
        sessionToken: response.sessionToken,
        confidence: response.confidence,
        status: response.status,
      });
      
      setTokenResponse(response);
      
      Alert.alert(
        'Scan Successful',
        `Confidence: ${(response.confidence * 100).toFixed(1)}%\n\n` +
        `Session Token: ${response.sessionToken.substring(0, 8)}...\n\n` +
        `⚠️ Note: No PII data was transmitted through the bridge!`,
        [
          {
            text: 'Retrieve Data',
            onPress: () => handleGetResult(response.sessionToken),
          },
          { text: 'Cancel', style: 'cancel' },
        ]
      );
    } catch (error) {
      console.error('Scan Error:', error);
      
      Alert.alert(
        'Scan Failed',
        `Error: ${error.message}\n` +
        `Code: ${error.code}\n` +
        `Retryable: ${error.retryable ? 'Yes' : 'No'}`
      );
    } finally {
      setLoading(false);
    }
  };
  
  /**
   * Step 3: Retrieve full result using token (contains PII)
   */
  const handleGetResult = async (sessionToken) => {
    setLoading(true);
    
    try {
      // This is the ONLY call that returns PII data
      const result = await ocrReader.getResult(sessionToken);
      
      console.log('Full OCR Result:', {
        tcNo: result.fields.tcNo.value,
        name: result.fields.name.value,
        surname: result.fields.surname.value,
      });
      
      setOcrResult(result);
      
      Alert.alert(
        'Data Retrieved',
        `TC No: ${result.fields.tcNo.value}\n` +
        `Name: ${result.fields.name.value}\n` +
        `Surname: ${result.fields.surname.value}\n` +
        `Birth Date: ${result.fields.birthDate.value}\n\n` +
        `⚠️ Token has been deleted (one-time use)`
      );
    } catch (error) {
      console.error('Get Result Error:', error);
      
      Alert.alert(
        'Retrieval Failed',
        error.code === 'OCR_TOKEN_EXPIRED'
          ? 'Session token has expired (5 minute TTL)'
          : `Error: ${error.message}`
      );
    } finally {
      setLoading(false);
    }
  };
  
  /**
   * Alternative: Scan and get result in one call
   */
  const handleScanAndGetResult = async () => {
    if (!imageUri) {
      Alert.alert('Error', 'Please capture an image first');
      return;
    }
    
    setLoading(true);
    
    try {
      // Convenience method: scan + getResult in one call
      const result = await ocrReader.scanAndGetResult(imageUri);
      
      setOcrResult(result);
      
      Alert.alert(
        'OCR Complete',
        `TC No: ${result.fields.tcNo.value}\n` +
        `Name: ${result.fields.name.value}\n` +
        `Surname: ${result.fields.surname.value}`
      );
    } catch (error) {
      console.error('Scan and Get Result Error:', error);
      Alert.alert('Error', error.message);
    } finally {
      setLoading(false);
    }
  };
  
  /**
   * Check if token is still valid
   */
  const handleCheckToken = async () => {
    if (!tokenResponse) {
      Alert.alert('Error', 'No token available');
      return;
    }
    
    const isValid = await ocrReader.isTokenValid(tokenResponse.sessionToken);
    
    Alert.alert(
      'Token Status',
      isValid ? 'Token is still valid' : 'Token has expired or been used'
    );
  };
  
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Secure OCR Example</Text>
      <Text style={styles.subtitle}>
        Token-based data exchange (SEC-001 fix)
      </Text>
      
      {/* Image Preview */}
      {imageUri && (
        <Image source={{ uri: imageUri }} style={styles.image} />
      )}
      
      {/* Action Buttons */}
      <TouchableOpacity
        style={styles.button}
        onPress={handleCaptureImage}
        disabled={loading}
      >
        <Text style={styles.buttonText}>
          📷 Capture Document
        </Text>
      </TouchableOpacity>
      
      <TouchableOpacity
        style={[styles.button, styles.buttonPrimary]}
        onPress={handleScan}
        disabled={loading || !imageUri}
      >
        <Text style={styles.buttonText}>
          🔍 Scan (Get Token)
        </Text>
      </TouchableOpacity>
      
      {tokenResponse && (
        <>
          <TouchableOpacity
            style={[styles.button, styles.buttonSuccess]}
            onPress={() => handleGetResult(tokenResponse.sessionToken)}
            disabled={loading}
          >
            <Text style={styles.buttonText}>
              🔓 Retrieve Data (Use Token)
            </Text>
          </TouchableOpacity>
          
          <TouchableOpacity
            style={[styles.button, styles.buttonSecondary]}
            onPress={handleCheckToken}
            disabled={loading}
          >
            <Text style={styles.buttonText}>
              ✓ Check Token Status
            </Text>
          </TouchableOpacity>
        </>
      )}
      
      <View style={styles.divider} />
      
      <TouchableOpacity
        style={[styles.button, styles.buttonWarning]}
        onPress={handleScanAndGetResult}
        disabled={loading || !imageUri}
      >
        <Text style={styles.buttonText}>
          ⚡ Scan & Get Result (One Call)
        </Text>
      </TouchableOpacity>
      
      {/* Loading Indicator */}
      {loading && (
        <ActivityIndicator size="large" color="#007AFF" style={styles.loader} />
      )}
      
      {/* Token Info */}
      {tokenResponse && (
        <View style={styles.infoBox}>
          <Text style={styles.infoTitle}>Token Response:</Text>
          <Text style={styles.infoText}>
            Token: {tokenResponse.sessionToken.substring(0, 16)}...
          </Text>
          <Text style={styles.infoText}>
            Confidence: {(tokenResponse.confidence * 100).toFixed(1)}%
          </Text>
          <Text style={styles.infoText}>
            Status: {tokenResponse.status}
          </Text>
          <Text style={styles.infoWarning}>
            ⚠️ No PII data in this response
          </Text>
        </View>
      )}
      
      {/* OCR Result */}
      {ocrResult && (
        <View style={[styles.infoBox, styles.resultBox]}>
          <Text style={styles.infoTitle}>OCR Result (PII Data):</Text>
          <Text style={styles.infoText}>
            TC No: {ocrResult.fields.tcNo.value} ({(ocrResult.fields.tcNo.confidence * 100).toFixed(1)}%)
          </Text>
          <Text style={styles.infoText}>
            Name: {ocrResult.fields.name.value}
          </Text>
          <Text style={styles.infoText}>
            Surname: {ocrResult.fields.surname.value}
          </Text>
          <Text style={styles.infoText}>
            Birth Date: {ocrResult.fields.birthDate.value}
          </Text>
          <Text style={styles.infoWarning}>
            🔒 Token has been deleted (one-time use)
          </Text>
        </View>
      )}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: '#f5f5f5',
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 5,
    textAlign: 'center',
  },
  subtitle: {
    fontSize: 14,
    color: '#666',
    marginBottom: 20,
    textAlign: 'center',
  },
  image: {
    width: '100%',
    height: 200,
    borderRadius: 10,
    marginBottom: 20,
    backgroundColor: '#ddd',
  },
  button: {
    backgroundColor: '#007AFF',
    padding: 15,
    borderRadius: 10,
    marginBottom: 10,
    alignItems: 'center',
  },
  buttonPrimary: {
    backgroundColor: '#007AFF',
  },
  buttonSuccess: {
    backgroundColor: '#34C759',
  },
  buttonSecondary: {
    backgroundColor: '#8E8E93',
  },
  buttonWarning: {
    backgroundColor: '#FF9500',
  },
  buttonText: {
    color: 'white',
    fontSize: 16,
    fontWeight: '600',
  },
  divider: {
    height: 1,
    backgroundColor: '#ddd',
    marginVertical: 20,
  },
  loader: {
    marginVertical: 20,
  },
  infoBox: {
    backgroundColor: 'white',
    padding: 15,
    borderRadius: 10,
    marginTop: 20,
    borderWidth: 1,
    borderColor: '#ddd',
  },
  resultBox: {
    borderColor: '#34C759',
    borderWidth: 2,
  },
  infoTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    marginBottom: 10,
  },
  infoText: {
    fontSize: 14,
    marginBottom: 5,
    color: '#333',
  },
  infoWarning: {
    fontSize: 12,
    marginTop: 10,
    color: '#FF9500',
    fontWeight: '600',
  },
});

export default SecureOCRExample;
