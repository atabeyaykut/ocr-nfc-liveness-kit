/**
 * NFC Fallback Modal - Manuel MRZ Entry
 * Used when NFC reading fails due to PACE/BAC requirements
 */

import React, { useState } from 'react';
import {
  View,
  Text,
  StyleSheet,
  Modal,
  TextInput,
  TouchableOpacity,
  Alert,
  ScrollView,
  KeyboardAvoidingView,
  Platform,
} from 'react-native';

/**
 * Parse MRZ data (simplified version for manual entry)
 * @param {string} line1 - MRZ Line 1 (30 chars)
 * @param {string} line2 - MRZ Line 2 (30 chars)
 * @param {string} line3 - MRZ Line 3 (30 chars)
 * @returns {object} Parsed data
 */
const parseMRZ = (line1, line2, line3) => {
  try {
    // Clean input
    const clean = (str) => str.toUpperCase().trim().replace(/\s/g, '<');
    line1 = clean(line1);
    line2 = clean(line2);
    line3 = clean(line3);

    // Extract TC No from Line 1: I<TUR[DOC_NO(9)][CHK]<[TC_NO(11)]<<<
    const tcMatch = line1.match(/(\d{11})/);
    const tcNo = tcMatch ? tcMatch[1] : null;

    // Extract birth date and gender from Line 2
    const birthMatch = line2.match(/^(\d{6})/);
    const genderMatch = line2.match(/^.{7}([MF])/);
    const expiryMatch = line2.match(/^.{8}(\d{6})/);

    const birthDate = birthMatch ? formatDate(birthMatch[1]) : null;
    const gender = genderMatch ? (genderMatch[1] === 'M' ? 'Erkek' : 'Kadın') : null;
    const expiryDate = expiryMatch ? formatDate(expiryMatch[1]) : null;

    // Extract name from Line 3: [SURNAME]<<[GIVEN_NAMES]
    const nameMatch = line3.match(/^([A-Z]+)<<([A-Z<]+)/);
    let surname = '';
    let name = '';
    
    if (nameMatch) {
      surname = nameMatch[1].replace(/<+/g, ' ').trim();
      name = nameMatch[2].replace(/<+/g, ' ').trim();
    }

    return {
      tcNo,
      name,
      surname,
      birthDate,
      gender,
      expiryDate,
      nationality: 'TUR',
      source: 'MANUAL_MRZ',
    };
  } catch (error) {
    console.error('MRZ parsing error:', error);
    return null;
  }
};

/**
 * Format date from YYMMDD to DD.MM.YYYY
 */
const formatDate = (yymmdd) => {
  if (!yymmdd || yymmdd.length !== 6) return null;
  
  const yy = yymmdd.substring(0, 2);
  const mm = yymmdd.substring(2, 4);
  const dd = yymmdd.substring(4, 6);
  
  // Assume 20xx for years 00-50, 19xx for 51-99
  const year = parseInt(yy) <= 50 ? `20${yy}` : `19${yy}`;
  
  return `${dd}.${mm}.${year}`;
};

/**
 * NFCFallbackModal Component
 */
export const NFCFallbackModal = ({ 
  visible, 
  onMRZEntered, 
  onCancel,
  errorInfo = {} 
}) => {
  const [mrzLine1, setMrzLine1] = useState('');
  const [mrzLine2, setMrzLine2] = useState('');
  const [mrzLine3, setMrzLine3] = useState('');

  const handleSubmit = () => {
    // Validate input
    if (mrzLine1.length !== 30) {
      Alert.alert('Hata', 'MRZ Satır 1 tam olarak 30 karakter olmalıdır.');
      return;
    }
    if (mrzLine2.length !== 30) {
      Alert.alert('Hata', 'MRZ Satır 2 tam olarak 30 karakter olmalıdır.');
      return;
    }
    if (mrzLine3.length !== 30) {
      Alert.alert('Hata', 'MRZ Satır 3 tam olarak 30 karakter olmalıdır.');
      return;
    }

    // Parse MRZ
    const parsedData = parseMRZ(mrzLine1, mrzLine2, mrzLine3);

    if (!parsedData || !parsedData.tcNo) {
      Alert.alert(
        'Geçersiz MRZ',
        'MRZ kodu okunamadı. Lütfen girdiğiniz bilgileri kontrol edin.',
        [{ text: 'Tamam' }]
      );
      return;
    }

    // Return parsed data
    onMRZEntered(parsedData);
    
    // Reset form
    setMrzLine1('');
    setMrzLine2('');
    setMrzLine3('');
  };

  const handleCancel = () => {
    setMrzLine1('');
    setMrzLine2('');
    setMrzLine3('');
    onCancel();
  };

  const pasteFromClipboard = async () => {
    // This would require react-native-clipboard
    Alert.alert(
      'Bilgi',
      'MRZ kodunu manuel olarak girebilir veya fotoğraf çekerek OCR ile okuyabilirsiniz.'
    );
  };

  return (
    <Modal
      visible={visible}
      animationType="slide"
      presentationStyle="pageSheet"
      onRequestClose={handleCancel}
    >
      <KeyboardAvoidingView
        style={styles.container}
        behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
      >
        <ScrollView 
          contentContainerStyle={styles.scrollContent}
          keyboardShouldPersistTaps="handled"
        >
          {/* Header */}
          <View style={styles.header}>
            <Text style={styles.title}>Manuel MRZ Girişi</Text>
            <TouchableOpacity onPress={handleCancel} style={styles.closeButton}>
              <Text style={styles.closeButtonText}>✕</Text>
            </TouchableOpacity>
          </View>

          {/* Error Info */}
          {errorInfo.message && (
            <View style={styles.errorInfo}>
              <Text style={styles.errorIcon}>⚠️</Text>
              <View style={styles.errorTextContainer}>
                <Text style={styles.errorTitle}>{errorInfo.title || 'NFC Okuma Başarısız'}</Text>
                <Text style={styles.errorMessage}>{errorInfo.message}</Text>
              </View>
            </View>
          )}

          {/* Instructions */}
          <View style={styles.instructionsCard}>
            <Text style={styles.instructionsTitle}>📖 Nasıl Girilir?</Text>
            <Text style={styles.instructionsText}>
              1. Kimlik kartınızın <Text style={styles.bold}>arka yüzüne</Text> bakın{'\n'}
              2. En alttaki <Text style={styles.bold}>3 satır makinece okunabilir kod</Text>u bulun{'\n'}
              3. Her satırı dikkatli bir şekilde aşağıya girin{'\n'}
              4. Her satır tam olarak <Text style={styles.bold}>30 karakter</Text> olmalıdır
            </Text>
          </View>

          {/* MRZ Example */}
          <View style={styles.exampleCard}>
            <Text style={styles.exampleTitle}>Örnek MRZ Formatı:</Text>
            <View style={styles.exampleBox}>
              <Text style={styles.exampleText}>I&lt;TUR123456789&lt;12345678901&lt;&lt;&lt;</Text>
              <Text style={styles.exampleText}>8501015M2512315TUR&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;5</Text>
              <Text style={styles.exampleText}>YILMAZ&lt;&lt;AHMET&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;</Text>
            </View>
            <Text style={styles.exampleNote}>
              Not: &lt; işareti boşluk anlamına gelir
            </Text>
          </View>

          {/* Input Fields */}
          <View style={styles.inputSection}>
            <View style={styles.inputGroup}>
              <Text style={styles.label}>MRZ Satır 1 (30 karakter)</Text>
              <TextInput
                style={[styles.input, mrzLine1.length === 30 && styles.inputValid]}
                value={mrzLine1}
                onChangeText={setMrzLine1}
                placeholder="I<TUR123456789<12345678901<<<"
                placeholderTextColor="#999"
                maxLength={30}
                autoCapitalize="characters"
                autoCorrect={false}
                returnKeyType="next"
              />
              <Text style={styles.charCounter}>{mrzLine1.length}/30</Text>
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.label}>MRZ Satır 2 (30 karakter)</Text>
              <TextInput
                style={[styles.input, mrzLine2.length === 30 && styles.inputValid]}
                value={mrzLine2}
                onChangeText={setMrzLine2}
                placeholder="8501015M2512315TUR<<<<<<<<<<5"
                placeholderTextColor="#999"
                maxLength={30}
                autoCapitalize="characters"
                autoCorrect={false}
                returnKeyType="next"
              />
              <Text style={styles.charCounter}>{mrzLine2.length}/30</Text>
            </View>

            <View style={styles.inputGroup}>
              <Text style={styles.label}>MRZ Satır 3 (30 karakter)</Text>
              <TextInput
                style={[styles.input, mrzLine3.length === 30 && styles.inputValid]}
                value={mrzLine3}
                onChangeText={setMrzLine3}
                placeholder="YILMAZ<<AHMET<<<<<<<<<<<<<<"
                placeholderTextColor="#999"
                maxLength={30}
                autoCapitalize="characters"
                autoCorrect={false}
                returnKeyType="done"
                onSubmitEditing={handleSubmit}
              />
              <Text style={styles.charCounter}>{mrzLine3.length}/30</Text>
            </View>
          </View>

          {/* Buttons */}
          <View style={styles.buttonContainer}>
            <TouchableOpacity
              style={styles.cancelButton}
              onPress={handleCancel}
            >
              <Text style={styles.cancelButtonText}>İptal</Text>
            </TouchableOpacity>

            <TouchableOpacity
              style={[
                styles.submitButton,
                (mrzLine1.length !== 30 || mrzLine2.length !== 30 || mrzLine3.length !== 30) &&
                  styles.submitButtonDisabled,
              ]}
              onPress={handleSubmit}
              disabled={mrzLine1.length !== 30 || mrzLine2.length !== 30 || mrzLine3.length !== 30}
            >
              <Text style={styles.submitButtonText}>Onayla</Text>
            </TouchableOpacity>
          </View>

          {/* Help Text */}
          <Text style={styles.helpText}>
            ℹ️ MRZ kodu kimlik kartınızın arka yüzünde, en altta yer alan 
            makinece okunabilir kodlardır. Doğru giriş için tüm karakterleri 
            dikkatli bir şekilde girin.
          </Text>
        </ScrollView>
      </KeyboardAvoidingView>
    </Modal>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5F5F5',
  },
  scrollContent: {
    padding: 20,
    paddingBottom: 40,
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 20,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#333',
  },
  closeButton: {
    width: 32,
    height: 32,
    borderRadius: 16,
    backgroundColor: '#E0E0E0',
    justifyContent: 'center',
    alignItems: 'center',
  },
  closeButtonText: {
    fontSize: 20,
    color: '#666',
  },
  errorInfo: {
    flexDirection: 'row',
    backgroundColor: '#FFF3CD',
    padding: 15,
    borderRadius: 10,
    marginBottom: 20,
    borderLeftWidth: 4,
    borderLeftColor: '#FFC107',
  },
  errorIcon: {
    fontSize: 24,
    marginRight: 12,
  },
  errorTextContainer: {
    flex: 1,
  },
  errorTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#856404',
    marginBottom: 4,
  },
  errorMessage: {
    fontSize: 14,
    color: '#856404',
    lineHeight: 20,
  },
  instructionsCard: {
    backgroundColor: '#E3F2FD',
    padding: 16,
    borderRadius: 10,
    marginBottom: 16,
    borderLeftWidth: 4,
    borderLeftColor: '#2196F3',
  },
  instructionsTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#1976D2',
    marginBottom: 10,
  },
  instructionsText: {
    fontSize: 14,
    color: '#1565C0',
    lineHeight: 22,
  },
  bold: {
    fontWeight: 'bold',
  },
  exampleCard: {
    backgroundColor: '#FFF',
    padding: 16,
    borderRadius: 10,
    marginBottom: 20,
    elevation: 2,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 1 },
    shadowOpacity: 0.1,
    shadowRadius: 2,
  },
  exampleTitle: {
    fontSize: 14,
    fontWeight: '600',
    color: '#666',
    marginBottom: 10,
  },
  exampleBox: {
    backgroundColor: '#F5F5F5',
    padding: 12,
    borderRadius: 6,
    marginBottom: 8,
  },
  exampleText: {
    fontFamily: Platform.OS === 'ios' ? 'Courier' : 'monospace',
    fontSize: 12,
    color: '#333',
    marginBottom: 4,
  },
  exampleNote: {
    fontSize: 12,
    color: '#999',
    fontStyle: 'italic',
  },
  inputSection: {
    marginBottom: 20,
  },
  inputGroup: {
    marginBottom: 16,
  },
  label: {
    fontSize: 14,
    fontWeight: '600',
    color: '#333',
    marginBottom: 8,
  },
  input: {
    backgroundColor: '#FFF',
    borderWidth: 2,
    borderColor: '#DDD',
    borderRadius: 8,
    padding: 12,
    fontSize: 16,
    fontFamily: Platform.OS === 'ios' ? 'Courier' : 'monospace',
    color: '#333',
  },
  inputValid: {
    borderColor: '#4CAF50',
    backgroundColor: '#F1F8F4',
  },
  charCounter: {
    fontSize: 12,
    color: '#999',
    textAlign: 'right',
    marginTop: 4,
  },
  buttonContainer: {
    flexDirection: 'row',
    gap: 12,
    marginBottom: 20,
  },
  cancelButton: {
    flex: 1,
    backgroundColor: '#E0E0E0',
    paddingVertical: 14,
    borderRadius: 8,
    alignItems: 'center',
  },
  cancelButtonText: {
    fontSize: 16,
    fontWeight: '600',
    color: '#666',
  },
  submitButton: {
    flex: 1,
    backgroundColor: '#2196F3',
    paddingVertical: 14,
    borderRadius: 8,
    alignItems: 'center',
  },
  submitButtonDisabled: {
    backgroundColor: '#B0BEC5',
  },
  submitButtonText: {
    fontSize: 16,
    fontWeight: '600',
    color: '#FFF',
  },
  helpText: {
    fontSize: 13,
    color: '#666',
    lineHeight: 20,
    textAlign: 'center',
    paddingHorizontal: 10,
  },
});

export default NFCFallbackModal;
