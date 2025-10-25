/**
 * Secure OCR Integration Example
 * 
 * Demonstrates how to use the token-based secure OCR implementation
 * that fixes SEC-001: PII leakage through React Native bridge
 * 
 * GÜVENLIK ÖZELLİKLERİ:
 * - PII verisi asla React Native bridge'den geçmez
 * - Token-based veri alışverişi (güvenli)
 * - 5 dakika TTL (otomatik token silme)
 * - One-time token kullanımı
 */

import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  Image,
  StyleSheet,
  Alert,
  ActivityIndicator,
  SafeAreaView,
  StatusBar,
  ScrollView,
} from 'react-native';
import ImageCropPicker from 'react-native-image-crop-picker';
import SecureOCRReader from '../modules/ocr/SecureOCRReader';

const SecureOCRExample = ({ navigation }) => {
  const [loading, setLoading] = useState(false);
  const [imageUri, setImageUri] = useState(null);
  const [tokenResponse, setTokenResponse] = useState(null);
  const [ocrResult, setOcrResult] = useState(null);
  const [ocrReader, setOcrReader] = useState(null);
  
  // Initialize OCR reader on mount
  useEffect(() => {
    const reader = new SecureOCRReader({
      onSuccess: (event) => {
        console.log('[SecureOCR] Success Event:', event);
      },
      onError: (error) => {
        console.error('[SecureOCR] Error Event:', error);
        Alert.alert('OCR Hatası', error.message);
      },
    });
    setOcrReader(reader);
    
    // Cleanup on unmount
    return () => {
      reader.destroy();
    };
  }, []);
  
  /**
   * Step 1: Capture image
   */
  const handleCaptureImage = async () => {
    try {
      const image = await ImageCropPicker.openCamera({
        width: 1920,
        height: 1080,
        cropping: false,
        includeBase64: false,
        mediaType: 'photo',
      });
      
      setImageUri(image.path);
      setTokenResponse(null);
      setOcrResult(null);
    } catch (error) {
      if (error.code !== 'E_PICKER_CANCELLED') {
        Alert.alert('Error', error.message || 'Failed to capture image');
      }
    }
  };
  
  /**
   * Step 2: Scan document (returns token only, NO PII)
   */
  const handleScan = async () => {
    if (!imageUri) {
      Alert.alert('Hata', 'Önce fotoğraf çekin');
      return;
    }
    
    if (!ocrReader) {
      Alert.alert('Hata', 'OCR modülü yükleniyor, lütfen bekleyin');
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
        'Tarama Başarılı',
        `Güven: ${(response.confidence * 100).toFixed(1)}%\n\n` +
        `Session Token: ${response.sessionToken.substring(0, 8)}...\n\n` +
        `🔒 PII verisi bridge'den geçmedi (güvenli)`,
        [
          {
            text: 'Veriyi Al',
            onPress: () => handleGetResult(response.sessionToken),
          },
          { text: 'İptal', style: 'cancel' },
        ]
      );
    } catch (error) {
      console.error('Scan Error:', error);
      
      Alert.alert(
        'Tarama Başarısız',
        `Hata: ${error.message}\n` +
        `Kod: ${error.code}\n` +
        `Tekrar Denenebilir: ${error.retryable ? 'Evet' : 'Hayır'}`
      );
    } finally {
      setLoading(false);
    }
  };
  
  /**
   * Step 3: Retrieve full result using token (contains PII)
   */
  const handleGetResult = async (sessionToken) => {
    if (!ocrReader) {
      Alert.alert('Hata', 'OCR modülü hazır değil');
      return;
    }
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
        'Veri Alındı',
        `TC No: ${result.fields.tcNo.value}\n` +
        `Ad: ${result.fields.name.value}\n` +
        `Soyad: ${result.fields.surname.value}\n` +
        `Doğum Tarihi: ${result.fields.birthDate.value}\n\n` +
        `🔒 Token silindi (tek kullanımlık)`
      );
    } catch (error) {
      console.error('Get Result Error:', error);
      
      Alert.alert(
        'Veri Alınamadı',
        error.code === 'OCR_TOKEN_EXPIRED'
          ? 'Token süresi doldu (5 dakika TTL)'
          : `Hata: ${error.message}`
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
      Alert.alert('Hata', 'Önce fotoğraf çekin');
      return;
    }
    
    if (!ocrReader) {
      Alert.alert('Hata', 'OCR modülü hazır değil');
      return;
    }
    
    setLoading(true);
    
    try {
      // Convenience method: scan + getResult in one call
      const result = await ocrReader.scanAndGetResult(imageUri);
      
      setOcrResult(result);
      
      Alert.alert(
        'OCR Tamamlandı',
        `TC No: ${result.fields.tcNo.value}\n` +
        `Ad: ${result.fields.name.value}\n` +
        `Soyad: ${result.fields.surname.value}`
      );
    } catch (error) {
      console.error('Scan and Get Result Error:', error);
      Alert.alert('Hata', error.message);
    } finally {
      setLoading(false);
    }
  };
  
  /**
   * Check if token is still valid
   */
  const handleCheckToken = async () => {
    if (!tokenResponse) {
      Alert.alert('Hata', 'Token bulunamadı');
      return;
    }
    
    if (!ocrReader) {
      Alert.alert('Hata', 'OCR modülü hazır değil');
      return;
    }
    
    const isValid = await ocrReader.isTokenValid(tokenResponse.sessionToken);
    
    Alert.alert(
      'Token Durumu',
      isValid ? 'Token hala geçerli' : 'Token süresi doldu veya kullanıldı'
    );
  };
  
  return (
    <SafeAreaView style={styles.container}>
      <StatusBar barStyle="dark-content" backgroundColor="#FFF" />
      
      {/* Header */}
      <View style={styles.header}>
        <TouchableOpacity onPress={() => navigation.goBack()} style={styles.backButton}>
          <Text style={styles.backButtonText}>←</Text>
        </TouchableOpacity>
        <View style={styles.headerTitleContainer}>
          <Text style={styles.headerTitle}>🔒 Güvenli OCR</Text>
          <Text style={styles.headerSubtitle}>Token-based Secure Reading</Text>
        </View>
        <View style={styles.headerSpacer} />
      </View>
      
      <ScrollView contentContainerStyle={styles.scrollContent}>
        <View style={styles.infoCard}>
          <Text style={styles.infoCardTitle}>ℹ️ Güvenlik Özellikleri</Text>
          <Text style={styles.infoCardText}>
            • PII verisi bridge'den geçmez{'\n'}
            • Token-based veri alışverişi{'\n'}
            • 5 dakika TTL (otomatik silme){'\n'}
            • Tek kullanımlık token sistemi
          </Text>
        </View>
        
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
          📷 Belge Fotoğrafı Çek
        </Text>
      </TouchableOpacity>
      
      <TouchableOpacity
        style={[styles.button, styles.buttonPrimary]}
        onPress={handleScan}
        disabled={loading || !imageUri}
      >
        <Text style={styles.buttonText}>
          🔍 Tara (Token Al)
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
              🔓 Veriyi Al (Token Kullan)
            </Text>
          </TouchableOpacity>
          
          <TouchableOpacity
            style={[styles.button, styles.buttonSecondary]}
            onPress={handleCheckToken}
            disabled={loading}
          >
            <Text style={styles.buttonText}>
              ✓ Token Durumunu Kontrol Et
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
          ⚡ Tara ve Al (Tek Çağrı)
        </Text>
      </TouchableOpacity>
      
      {/* Loading Indicator */}
      {loading && (
        <ActivityIndicator size="large" color="#007AFF" style={styles.loader} />
      )}
      
      {/* Token Info */}
      {tokenResponse && (
        <View style={styles.infoBox}>
          <Text style={styles.infoTitle}>Token Yanıtı:</Text>
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
            ⚠️ Bu yanıtta PII verisi YOK
          </Text>
        </View>
      )}
      
      {/* OCR Result */}
      {ocrResult && (
        <View style={[styles.infoBox, styles.resultBox]}>
          <Text style={styles.infoTitle}>OCR Sonucu (PII Verisi):</Text>
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
            🔒 Token silindi (tek kullanımlık)
          </Text>
        </View>
      )}
      </ScrollView>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 15,
    paddingVertical: 15,
    backgroundColor: '#FFF',
    borderBottomWidth: 1,
    borderBottomColor: '#E5E5E5',
  },
  backButton: {
    width: 40,
    height: 40,
    justifyContent: 'center',
    alignItems: 'center',
  },
  backButtonText: {
    fontSize: 28,
    color: '#007AFF',
  },
  headerTitleContainer: {
    flex: 1,
    alignItems: 'center',
  },
  headerTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#000',
  },
  headerSubtitle: {
    fontSize: 11,
    color: '#666',
    marginTop: 2,
  },
  headerSpacer: {
    width: 40,
  },
  scrollContent: {
    padding: 20,
  },
  infoCard: {
    backgroundColor: '#E8F5E9',
    padding: 15,
    borderRadius: 12,
    marginBottom: 20,
    borderWidth: 1,
    borderColor: '#4CAF50',
  },
  infoCardTitle: {
    fontSize: 14,
    fontWeight: 'bold',
    color: '#2E7D32',
    marginBottom: 8,
  },
  infoCardText: {
    fontSize: 13,
    color: '#1B5E20',
    lineHeight: 20,
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
