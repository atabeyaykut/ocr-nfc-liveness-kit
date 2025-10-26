/**
 * NFC Reader Module
 * Kimlik kartı NFC okuma modülü - Gerçek veri ile çalışır
 * Android 11 uyumlu
 */

import React, { useState, useEffect, useRef } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Alert,
  ActivityIndicator,
  Animated,
  Vibration,
  BackHandler,
  Image,
  StatusBar,
} from 'react-native';
import NfcManager, { 
  NfcTech, 
  NfcEvents,
  Ndef,
  NfcAdapter 
} from 'react-native-nfc-manager';
import { NFCFallbackModal } from '../../components/NFCFallbackModal';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';

// NFC Command constants for Turkish ID cards
const NFC_COMMANDS = {
  SELECT_APP: [0x00, 0xA4, 0x04, 0x00, 0x07, 0xA0, 0x00, 0x00, 0x02, 0x47, 0x10, 0x01],
  READ_PERSONAL: [0x00, 0xB0, 0x01, 0x00, 0x00],
  READ_ID: [0x00, 0xB0, 0x02, 0x00, 0x00],
  READ_BIRTH: [0x00, 0xB0, 0x03, 0x00, 0x00],
};

// NFC Error Codes
const NFC_ERROR_CODES = {
  PACE_REQUIRED: 'PACE_REQUIRED',
  BAC_REQUIRED: 'BAC_REQUIRED',
  SECURITY_NOT_SATISFIED: 'SECURITY_NOT_SATISFIED',
  AUTHENTICATION_FAILED: 'AUTHENTICATION_FAILED',
  CARD_NOT_SUPPORTED: 'CARD_NOT_SUPPORTED',
  TIMEOUT: 'TIMEOUT',
  PERMISSION_DENIED: 'PERMISSION_DENIED',
  NFC_DISABLED: 'NFC_DISABLED',
  TAG_LOST: 'TAG_LOST',
};

class NFCReaderModule {
  constructor() {
    this.callbacks = {};
    this.isReading = false;
  }

  // API Methods
  startNFC = async (options = {}) => {
    const defaultOptions = {
      readTimeout: 30000,
      enableVibration: true,
      cardType: 'tc_kimlik',
      retryCount: 3,
    };
    
    this.options = { ...defaultOptions, ...options };
    
    try {
      // Check NFC support
      const isSupported = await NfcManager.isSupported();
      if (!isSupported) {
        throw new Error('Bu cihaz NFC desteklemiyor');
      }

      // Check if NFC is enabled
      const isEnabled = await NfcManager.isEnabled();
      if (!isEnabled) {
        throw new Error('NFC kapalı. Lütfen ayarlardan NFC\'yi açın.');
      }

      // Start NFC
      await NfcManager.start();
      this.isReading = true;

      if (this.callbacks.onStarted) {
        this.callbacks.onStarted();
      }

      // Register NFC discovery
      await this.registerNfcDiscovery();
      
    } catch (error) {
      this.handleError(error);
    }
  };

  stopNFC = async () => {
    try {
      this.isReading = false;
      await NfcManager.unregisterTagEvent();
      // cancelTechnologyRequest stops NFC technology
      try {
        await NfcManager.cancelTechnologyRequest();
      } catch (cancelError) {
        // Ignore if no technology is active
        console.log('[NFC] No active technology to cancel');
      }
      
      if (this.callbacks.onStopped) {
        this.callbacks.onStopped();
      }
    } catch (error) {
      console.warn('[NFC] Stop error:', error.message);
    }
  };

  onNFCResult = (callback) => {
    this.callbacks.onResult = callback;
  };

  onNFCError = (callback) => {
    this.callbacks.onError = callback;
  };

  onNFCStarted = (callback) => {
    this.callbacks.onStarted = callback;
  };

  onNFCStopped = (callback) => {
    this.callbacks.onStopped = callback;
  };

  // Private Methods
  registerNfcDiscovery = async () => {
    await NfcManager.registerTagEvent(
      async (tag) => {
        if (this.options.enableVibration) {
          Vibration.vibrate(100);
        }
        
        await this.handleTag(tag);
      },
      'Hold your ID card to the back of your phone',
      {
        readerModeFlags:
          NfcManager.FLAG_READER_NFC_A |
          NfcManager.FLAG_READER_NFC_B |
          NfcManager.FLAG_READER_NFC_F |
          NfcManager.FLAG_READER_NFC_V |
          NfcManager.FLAG_READER_SKIP_NDEF_CHECK,
      }
    );
  };

  handleTag = async (tag) => {
    try {
      let result = null;

      // Try IsoDep first (most common for ID cards)
      if (tag.tech.includes(NfcTech.IsoDep)) {
        result = await this.readIsoDep(tag);
      }
      // Try NDEF
      else if (tag.tech.includes(NfcTech.Ndef)) {
        result = await this.readNdef(tag);
      }
      // Try MifareClassic
      else if (tag.tech.includes(NfcTech.MifareClassic)) {
        result = await this.readMifareClassic(tag);
      }
      // Try NfcA
      else if (tag.tech.includes(NfcTech.NfcA)) {
        result = await this.readNfcA(tag);
      }

      if (result) {
        const response = {
          success: true,
          raw: tag,
          parsedFields: result,
          cardType: this.options.cardType,
          timestamp: new Date().toISOString(),
        };

        if (this.callbacks.onResult) {
          this.callbacks.onResult(response);
        }
      } else {
        throw new Error('Kart okunamadı. Desteklenmeyen kart tipi olabilir.');
      }
      
    } catch (error) {
      this.handleError(error);
    } finally {
      await NfcManager.cancelTechnologyRequest();
    }
  };

  readIsoDep = async (tag) => {
    try {
      await NfcManager.requestTechnology(NfcTech.IsoDep);
      
      // Select application
      const selectResponse = await NfcManager.transceive(NFC_COMMANDS.SELECT_APP);
      
      if (!this.isSuccessResponse(selectResponse)) {
        throw new Error('Kart uygulaması seçilemedi');
      }

      // Read personal data
      const personalData = await NfcManager.transceive(NFC_COMMANDS.READ_PERSONAL);
      const idData = await NfcManager.transceive(NFC_COMMANDS.READ_ID);
      const birthData = await NfcManager.transceive(NFC_COMMANDS.READ_BIRTH);

      // Parse data
      const parsed = this.parseCardData({
        personal: personalData,
        id: idData,
        birth: birthData,
      });

      return parsed;
      
    } catch (error) {
      console.error('IsoDep read error:', error);
      return null;
    }
  };

  readNdef = async (tag) => {
    try {
      await NfcManager.requestTechnology(NfcTech.Ndef);
      
      const message = await NfcManager.getNdefMessage();
      
      if (message && message.length > 0) {
        const parsed = {};
        
        message.forEach((record, index) => {
          const text = Ndef.text.decodePayload(record.payload);
          parsed[`field_${index}`] = text;
        });
        
        return parsed;
      }
      
      return null;
      
    } catch (error) {
      console.error('NDEF read error:', error);
      return null;
    }
  };

  readMifareClassic = async (tag) => {
    try {
      await NfcManager.requestTechnology(NfcTech.MifareClassic);
      
      // Authenticate and read sectors
      const data = {};
      
      // Try to read common sectors
      for (let sector = 0; sector < 4; sector++) {
        try {
          const sectorData = await NfcManager.mifareClassicReadSector(sector);
          data[`sector_${sector}`] = this.bytesToHex(sectorData);
        } catch (e) {
          console.warn(`Cannot read sector ${sector}:`, e);
        }
      }
      
      return data;
      
    } catch (error) {
      console.error('MifareClassic read error:', error);
      return null;
    }
  };

  readNfcA = async (tag) => {
    try {
      await NfcManager.requestTechnology(NfcTech.NfcA);
      
      const atqa = await NfcManager.getNfcAAtqa();
      const sak = await NfcManager.getNfcASak();
      
      return {
        atqa: this.bytesToHex(atqa),
        sak: sak,
        uid: tag.id,
      };
      
    } catch (error) {
      console.error('NfcA read error:', error);
      return null;
    }
  };

  parseCardData = (rawData) => {
    // Parse Turkish ID card data
    const fields = {};
    
    try {
      // Parse personal data
      if (rawData.personal) {
        const personalStr = this.bytesToString(rawData.personal);
        const nameMatch = personalStr.match(/([A-ZÇĞİÖŞÜ\s]+)/);
        if (nameMatch) {
          fields.fullName = nameMatch[1].trim();
        }
      }

      // Parse ID data
      if (rawData.id) {
        const idStr = this.bytesToString(rawData.id);
        const tcMatch = idStr.match(/(\d{11})/);
        if (tcMatch) {
          fields.tcNo = tcMatch[1];
        }
      }

      // Parse birth data
      if (rawData.birth) {
        const birthStr = this.bytesToString(rawData.birth);
        const dateMatch = birthStr.match(/(\d{2}[\.\/]\d{2}[\.\/]\d{4})/);
        if (dateMatch) {
          fields.birthDate = dateMatch[1];
        }
      }

      // Add raw hex data for debugging
      fields.rawHex = {
        personal: this.bytesToHex(rawData.personal),
        id: this.bytesToHex(rawData.id),
        birth: this.bytesToHex(rawData.birth),
      };
      
    } catch (error) {
      console.error('Parse error:', error);
    }
    
    return fields;
  };

  bytesToString = (bytes) => {
    if (!bytes) return '';
    return String.fromCharCode.apply(null, bytes);
  };

  bytesToHex = (bytes) => {
    if (!bytes) return '';
    return Array.from(bytes, byte => ('0' + (byte & 0xFF).toString(16)).slice(-2)).join('');
  };

  isSuccessResponse = (response) => {
    if (!response || response.length < 2) return false;
    const sw1 = response[response.length - 2];
    const sw2 = response[response.length - 1];
    
    // Check for PACE/BAC requirement (CRITICAL for modern Turkish ID cards)
    if (sw1 === 0x69 && sw2 === 0x82) {
      throw new Error(NFC_ERROR_CODES.SECURITY_NOT_SATISFIED);
    }
    
    // Check for BAC requirement
    if (sw1 === 0x63 && sw2 === 0x00) {
      throw new Error(NFC_ERROR_CODES.BAC_REQUIRED);
    }
    
    // Check for authentication failure
    if (sw1 === 0x69 && sw2 === 0x88) {
      throw new Error(NFC_ERROR_CODES.AUTHENTICATION_FAILED);
    }
    
    // Check for file not found (unsupported card)
    if (sw1 === 0x6A && sw2 === 0x82) {
      throw new Error(NFC_ERROR_CODES.CARD_NOT_SUPPORTED);
    }
    
    return sw1 === 0x90 && sw2 === 0x00;
  };

  handleError = (error) => {
    let errorMessage = error.message || 'NFC okuma hatası';
    let errorCode = 'NFC_READ_ERROR';
    let fallbackOption = null;
    
    // Detect PACE requirement and provide user-friendly messages
    if (error.message === NFC_ERROR_CODES.SECURITY_NOT_SATISFIED ||
        error.message === NFC_ERROR_CODES.PACE_REQUIRED) {
      errorCode = NFC_ERROR_CODES.PACE_REQUIRED;
      errorMessage = 'Bu kimlik kartı gelişmiş güvenlik protokolü (PACE) gerektiriyor.';
      fallbackOption = {
        type: 'MANUAL_MRZ_ENTRY',
        title: 'Manuel Veri Girişi',
        message: 'Kimlik kartınızın arka yüzündeki MRZ kodunu manuel olarak girebilirsiniz.',
        action: 'MRZ Girişi Yap',
      };
    } else if (error.message === NFC_ERROR_CODES.BAC_REQUIRED) {
      errorCode = NFC_ERROR_CODES.BAC_REQUIRED;
      errorMessage = 'Bu kart temel erişim kontrolü (BAC) gerektiriyor.';
      fallbackOption = {
        type: 'MANUAL_MRZ_ENTRY',
        title: 'Manuel Veri Girişi',
        message: 'MRZ kodunu manuel olarak girebilirsiniz.',
        action: 'MRZ Girişi Yap',
      };
    } else if (error.message === NFC_ERROR_CODES.AUTHENTICATION_FAILED) {
      errorCode = NFC_ERROR_CODES.AUTHENTICATION_FAILED;
      errorMessage = 'Kart kimlik doğrulaması başarısız. Lütfen kartı tekrar okutun.';
    } else if (error.message === NFC_ERROR_CODES.CARD_NOT_SUPPORTED) {
      errorCode = NFC_ERROR_CODES.CARD_NOT_SUPPORTED;
      errorMessage = 'Bu kart tipi desteklenmiyor veya kart bozuk olabilir.';
    } else if (error.message && error.message.includes('timeout')) {
      errorCode = NFC_ERROR_CODES.TIMEOUT;
      errorMessage = 'Okuma zaman aşımına uğradı. Kartı cihazın arkasında sabit tutun.';
    } else if (error.message && error.message.includes('Tag was lost')) {
      errorCode = NFC_ERROR_CODES.TAG_LOST;
      errorMessage = 'Kart okuma sırasında hareket etti. Lütfen tekrar deneyin.';
    }
    
    const errorResponse = {
      success: false,
      error: errorMessage,
      code: errorCode,
      technicalError: error.message, // For debugging
      fallback: fallbackOption,
      timestamp: new Date().toISOString(),
    };

    console.error('[NFC Error]', errorResponse);

    if (this.callbacks.onError) {
      this.callbacks.onError(errorResponse);
    }
  };
}

// React Component for NFC UI
export const NFCReaderScreen = ({ navigation, route }) => {
  const [isScanning, setIsScanning] = useState(false);
  const [nfcResult, setNfcResult] = useState(null);
  const [error, setError] = useState(null);
  const [showFallbackModal, setShowFallbackModal] = useState(false);
  const [fallbackErrorInfo, setFallbackErrorInfo] = useState({});
  const pulseAnim = useRef(new Animated.Value(1)).current;
  const nfcModule = useRef(new NFCReaderModule()).current;

  useEffect(() => {
    // Setup callbacks
    nfcModule.onNFCResult((result) => {
      setNfcResult(result);
      setIsScanning(false);
      Vibration.vibrate([100, 200, 100]);
    });

    nfcModule.onNFCError((errorResponse) => {
      setError(errorResponse.error);
      setIsScanning(false);
      
      // Check if PACE/BAC fallback is available
      if (errorResponse.fallback && errorResponse.fallback.type === 'MANUAL_MRZ_ENTRY') {
        setFallbackErrorInfo({
          title: errorResponse.fallback.title,
          message: errorResponse.error,
          action: errorResponse.fallback.action,
        });
        
        // Show fallback option in alert
        Alert.alert(
          'NFC Okuma Başarısız',
          errorResponse.error,
          [
            { text: 'İptal', style: 'cancel' },
            {
              text: errorResponse.fallback.action || 'Manuel Giriş',
              onPress: () => setShowFallbackModal(true),
            },
          ]
        );
      } else {
        // Regular error alert
        Alert.alert('NFC Hatası', errorResponse.error);
      }
    });

    nfcModule.onNFCStarted(() => {
      setIsScanning(true);
      startPulseAnimation();
    });

    nfcModule.onNFCStopped(() => {
      setIsScanning(false);
    });

    // Check NFC on mount
    checkNFC();

    // Cleanup on unmount
    return () => {
      nfcModule.stopNFC();
    };
  }, []);

  // Handle back button
  useEffect(() => {
    const backHandler = BackHandler.addEventListener('hardwareBackPress', () => {
      if (isScanning) {
        stopScanning();
        return true;
      }
      return false;
    });

    return () => backHandler.remove();
  }, [isScanning]);

  const checkNFC = async () => {
    try {
      const isSupported = await NfcManager.isSupported();
      if (!isSupported) {
        Alert.alert(
          'NFC Desteklenmiyor',
          'Bu cihaz NFC özelliğini desteklemiyor.',
          [{ text: 'Tamam', onPress: () => navigation.goBack() }]
        );
        return;
      }

      const isEnabled = await NfcManager.isEnabled();
      if (!isEnabled) {
        Alert.alert(
          'NFC Kapalı',
          'NFC özelliği kapalı. Ayarlardan açmak ister misiniz?',
          [
            { text: 'İptal', style: 'cancel' },
            { text: 'Ayarlara Git', onPress: () => NfcManager.goToNfcSetting() }
          ]
        );
      }
    } catch (error) {
      console.error('NFC check error:', error);
    }
  };

  const startScanning = async () => {
    setError(null);
    setNfcResult(null);
    await nfcModule.startNFC();
  };

  const stopScanning = async () => {
    await nfcModule.stopNFC();
    setIsScanning(false);
  };

  const handleMRZEntered = (parsedData) => {
    console.log('[NFC Fallback] MRZ data entered:', parsedData);
    
    // Close modal
    setShowFallbackModal(false);
    
    // Set result as if it came from NFC
    const fallbackResult = {
      success: true,
      parsedFields: parsedData,
      source: 'MANUAL_MRZ',
      timestamp: new Date().toISOString(),
    };
    
    setNfcResult(fallbackResult);
    setError(null);
    
    // Vibrate to indicate success
    Vibration.vibrate([100, 200, 100]);
    
    // Show success message
    Alert.alert(
      'İşlem Başarılı',
      'MRZ verileri başarıyla işlendi.',
      [{ text: 'Tamam' }]
    );
  };

  const handleFallbackCancel = () => {
    setShowFallbackModal(false);
  };

  const startPulseAnimation = () => {
    Animated.loop(
      Animated.sequence([
        Animated.timing(pulseAnim, {
          toValue: 1.2,
          duration: 1000,
          useNativeDriver: true,
        }),
        Animated.timing(pulseAnim, {
          toValue: 1,
          duration: 1000,
          useNativeDriver: true,
        }),
      ])
    ).start();
  };

  const renderResult = () => {
    if (!nfcResult) return null;

    return (
      <View style={styles.resultContainer}>
        <Text style={styles.resultTitle}>NFC Okuma Başarılı ✓</Text>
        
        {nfcResult.parsedFields.tcNo && (
          <View style={styles.resultRow}>
            <Text style={styles.resultLabel}>TC Kimlik No:</Text>
            <Text style={styles.resultValue}>{nfcResult.parsedFields.tcNo}</Text>
          </View>
        )}
        
        {nfcResult.parsedFields.fullName && (
          <View style={styles.resultRow}>
            <Text style={styles.resultLabel}>Ad Soyad:</Text>
            <Text style={styles.resultValue}>{nfcResult.parsedFields.fullName}</Text>
          </View>
        )}
        
        {nfcResult.parsedFields.birthDate && (
          <View style={styles.resultRow}>
            <Text style={styles.resultLabel}>Doğum Tarihi:</Text>
            <Text style={styles.resultValue}>{nfcResult.parsedFields.birthDate}</Text>
          </View>
        )}
        
        <View style={styles.resultRow}>
          <Text style={styles.resultLabel}>Kart ID:</Text>
          <Text style={styles.resultValue}>{nfcResult.raw.id}</Text>
        </View>
        
        <TouchableOpacity style={styles.retryButton} onPress={startScanning}>
          <Text style={styles.retryButtonText}>Yeniden Oku</Text>
        </TouchableOpacity>
      </View>
    );
  };

  const renderScanning = () => (
    <View style={styles.scanningContainer}>
      <Animated.View style={[styles.nfcIcon, { transform: [{ scale: pulseAnim }] }]}>
        <Image 
          source={{ uri: 'https://img.icons8.com/color/200/000000/nfc-tag.png' }}
          style={styles.nfcImage}
        />
      </Animated.View>
      
      <Text style={styles.scanningTitle}>Kimlik Kartını Yaklaştırın</Text>
      
      <View style={styles.instructionsContainer}>
        <Text style={styles.instructionText}>
          📱 Kimlik kartınızı telefonun arkasına yaklaştırın
        </Text>
        <Text style={styles.instructionText}>
          ↕️ Kartı telefonun üst-orta kısmına denk getirin
        </Text>
        <Text style={styles.instructionText}>
          ⏱️ 2-3 saniye sabit tutun
        </Text>
        <Text style={styles.instructionText}>
          📳 Titreme hissedince kartı çekebilirsiniz
        </Text>
      </View>
      
      <ActivityIndicator size="large" color="#2196F3" style={styles.loader} />
      
      <TouchableOpacity style={styles.cancelButton} onPress={stopScanning}>
        <Text style={styles.cancelButtonText}>İptal</Text>
      </TouchableOpacity>
    </View>
  );

  return (
    <View style={styles.container}>
      <StatusBar barStyle="dark-content" backgroundColor="#F5F5F5" />
      
      <View style={styles.header}>
        <TouchableOpacity onPress={() => navigation.goBack()}>
          <Text style={styles.backButton}>←</Text>
        </TouchableOpacity>
        <Text style={styles.headerTitle}>NFC Kimlik Okuyucu</Text>
        <View style={{ width: 40 }} />
      </View>
      
      {!isScanning && !nfcResult && (
        <View style={styles.startContainer}>
          <Image 
            source={{ uri: 'https://img.icons8.com/color/150/000000/nfc-tag.png' }}
            style={styles.nfcLogo}
          />
          
          <Text style={styles.welcomeTitle}>NFC ile Kimlik Okuma</Text>
          <Text style={styles.welcomeText}>
            Kimlik kartınızdaki çip üzerinden bilgileri güvenli bir şekilde okuyabiliriz.
          </Text>
          
          <TouchableOpacity style={styles.startButton} onPress={startScanning}>
            <Text style={styles.startButtonText}>Okumaya Başla</Text>
          </TouchableOpacity>
          
          {error && (
            <View style={styles.errorContainer}>
              <Text style={styles.errorText}>⚠️ {error}</Text>
            </View>
          )}
        </View>
      )}
      
      {isScanning && renderScanning()}
      {nfcResult && renderResult()}
      
      {/* PACE Fallback Modal */}
      <NFCFallbackModal
        visible={showFallbackModal}
        onMRZEntered={handleMRZEntered}
        onCancel={handleFallbackCancel}
        errorInfo={fallbackErrorInfo}
      />
    </View>
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
    paddingHorizontal: 20,
    paddingTop: 40,
    paddingBottom: 20,
    backgroundColor: '#FFF',
    elevation: 2,
  },
  backButton: {
    fontSize: 28,
    color: '#333',
  },
  headerTitle: {
    fontSize: 18,
    fontWeight: '600',
    color: '#333',
  },
  startContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 30,
  },
  nfcLogo: {
    width: 150,
    height: 150,
    marginBottom: 30,
  },
  welcomeTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 10,
  },
  welcomeText: {
    fontSize: 14,
    color: '#666',
    textAlign: 'center',
    marginBottom: 30,
  },
  startButton: {
    backgroundColor: '#2196F3',
    paddingHorizontal: 40,
    paddingVertical: 15,
    borderRadius: 25,
    elevation: 3,
  },
  startButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
  scanningContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 30,
  },
  nfcIcon: {
    marginBottom: 30,
  },
  nfcImage: {
    width: 200,
    height: 200,
  },
  scanningTitle: {
    fontSize: 22,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 30,
  },
  instructionsContainer: {
    backgroundColor: '#FFF',
    padding: 20,
    borderRadius: 15,
    marginBottom: 30,
    elevation: 2,
    width: '100%',
  },
  instructionText: {
    fontSize: 14,
    color: '#555',
    marginBottom: 10,
    lineHeight: 20,
  },
  loader: {
    marginBottom: 30,
  },
  cancelButton: {
    backgroundColor: '#F44336',
    paddingHorizontal: 30,
    paddingVertical: 12,
    borderRadius: 20,
  },
  cancelButtonText: {
    color: '#FFF',
    fontSize: 14,
    fontWeight: '600',
  },
  resultContainer: {
    flex: 1,
    padding: 30,
  },
  resultTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#4CAF50',
    textAlign: 'center',
    marginBottom: 30,
  },
  resultRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingVertical: 15,
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
    backgroundColor: '#2196F3',
    paddingVertical: 15,
    borderRadius: 10,
    alignItems: 'center',
  },
  retryButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
  errorContainer: {
    marginTop: 20,
    padding: 15,
    backgroundColor: '#FFF3E0',
    borderRadius: 10,
    borderWidth: 1,
    borderColor: '#FFB74D',
  },
  errorText: {
    color: '#E65100',
    fontSize: 14,
    textAlign: 'center',
  },
});

export { NFC_ERROR_CODES, NFCReaderModule };
export default NFCReaderScreen;
