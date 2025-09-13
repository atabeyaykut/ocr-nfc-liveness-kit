/**
 * NFC Test Component - Mock Environment
 * Tests NFC functionality without real device using mock data
 */

import React, { useState } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
  Alert,
} from 'react-native';

// Mock NFC function that simulates reading NFC data
const handleNFCRead = async (mockDataType = 'default') => {
  // Simulate NFC reading delay
  await new Promise(resolve => setTimeout(resolve, 2000));
  
  // Import mock data
  const mockNFCData = require('../mock/nfcData.js');
  
  const selectedData = mockNFCData[mockDataType] || mockNFCData.default;
  
  return {
    success: true,
    ...selectedData,
    readTime: new Date().toISOString(),
    processingTime: 2000,
    mockRead: true
  };
};

const NFCTestComponent = () => {
  const [isReading, setIsReading] = useState(false);
  const [nfcData, setNfcData] = useState(null);
  const [selectedMockType, setSelectedMockType] = useState(null);

  const mockDataTypes = [
    {
      key: 'default',
      title: 'Varsayılan Kimlik',
      description: 'Standart Türk kimlik kartı verisi',
      icon: '🆔'
    },
    {
      key: 'sample1',
      title: 'Örnek Kimlik 1',
      description: 'Farklı kişi bilgileri',
      icon: '👤'
    },
    {
      key: 'sample2',
      title: 'Örnek Kimlik 2',
      description: 'Alternatif test verisi',
      icon: '👥'
    },
    {
      key: 'error',
      title: 'Hata Simülasyonu',
      description: 'NFC okuma hatası testi',
      icon: '⚠️'
    }
  ];

  const handleNFCTest = async (mockType) => {
    try {
      setIsReading(true);
      setSelectedMockType(mockType);
      setNfcData(null);

      console.log('📡 NFC Test Started:', mockType);
      
      // Simulate error for error mock type
      if (mockType === 'error') {
        throw new Error('NFC kartı okunamadı. Lütfen kartı doğru konumda tutun.');
      }
      
      const result = await handleNFCRead(mockType);
      
      setNfcData(result);
      
      console.log('✅ NFC Test Completed:', result);
      console.log('📋 Card Data:', result.cardData);
      console.log('🔐 Verification:', result.verification);
      
      Alert.alert(
        'NFC Test Tamamlandı',
        `Kart türü: ${result.cardData?.cardType || 'Bilinmeyen'}\n\nVeriler konsola yazdırıldı.`,
        [{ text: 'Tamam' }]
      );

    } catch (error) {
      console.error('❌ NFC Test Error:', error);
      Alert.alert('NFC Hatası', error.message);
    } finally {
      setIsReading(false);
    }
  };

  const clearResults = () => {
    setNfcData(null);
    setSelectedMockType(null);
  };

  const formatCardData = (data) => {
    if (!data) return [];
    
    const fields = [];
    
    if (data.firstName) fields.push({ label: 'Ad', value: data.firstName });
    if (data.lastName) fields.push({ label: 'Soyad', value: data.lastName });
    if (data.idNumber) fields.push({ label: 'T.C. No', value: data.idNumber });
    if (data.birthDate) fields.push({ label: 'Doğum Tarihi', value: data.birthDate });
    if (data.birthPlace) fields.push({ label: 'Doğum Yeri', value: data.birthPlace });
    if (data.nationality) fields.push({ label: 'Uyruk', value: data.nationality });
    if (data.gender) fields.push({ label: 'Cinsiyet', value: data.gender });
    if (data.serialNumber) fields.push({ label: 'Seri No', value: data.serialNumber });
    if (data.documentNumber) fields.push({ label: 'Belge No', value: data.documentNumber });
    if (data.issueDate) fields.push({ label: 'Veriliş Tarihi', value: data.issueDate });
    if (data.expiryDate) fields.push({ label: 'Son Geçerlilik', value: data.expiryDate });
    
    return fields;
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>📡 NFC Test Modülü</Text>
      <Text style={styles.subtitle}>Mock verilerle NFC okuma testi</Text>

      <ScrollView style={styles.scrollView}>
        <View style={styles.mockGrid}>
          {mockDataTypes.map((mockType, index) => (
            <TouchableOpacity
              key={index}
              style={[
                styles.mockButton,
                selectedMockType === mockType.key && styles.selectedMockButton
              ]}
              onPress={() => handleNFCTest(mockType.key)}
              disabled={isReading}
            >
              <Text style={styles.mockIcon}>{mockType.icon}</Text>
              <Text style={styles.mockTitle}>{mockType.title}</Text>
              <Text style={styles.mockDescription}>{mockType.description}</Text>
            </TouchableOpacity>
          ))}
        </View>

        {isReading && (
          <View style={styles.readingContainer}>
            <Text style={styles.readingText}>📡 NFC okuma devam ediyor...</Text>
            <Text style={styles.readingSubtext}>Lütfen kartı telefonun arkasına yaklaştırın</Text>
            <View style={styles.pulseContainer}>
              <View style={styles.pulseCircle} />
            </View>
          </View>
        )}

        {nfcData && (
          <View style={styles.resultsContainer}>
            <Text style={styles.resultsTitle}>📋 NFC Okuma Sonuçları</Text>
            
            <View style={styles.statusContainer}>
              <View style={styles.statusItem}>
                <Text style={styles.statusLabel}>Durum:</Text>
                <Text style={[styles.statusValue, styles.successText]}>✅ Başarılı</Text>
              </View>
              
              <View style={styles.statusItem}>
                <Text style={styles.statusLabel}>Okuma Süresi:</Text>
                <Text style={styles.statusValue}>{nfcData.processingTime}ms</Text>
              </View>
              
              <View style={styles.statusItem}>
                <Text style={styles.statusLabel}>Kart Türü:</Text>
                <Text style={styles.statusValue}>{nfcData.cardData?.cardType || 'Bilinmeyen'}</Text>
              </View>
            </View>

            {nfcData.cardData && (
              <View style={styles.cardDataContainer}>
                <Text style={styles.sectionTitle}>👤 Kişisel Bilgiler</Text>
                {formatCardData(nfcData.cardData).map((field, index) => (
                  <View key={index} style={styles.dataItem}>
                    <Text style={styles.dataLabel}>{field.label}:</Text>
                    <Text style={styles.dataValue}>{field.value}</Text>
                  </View>
                ))}
              </View>
            )}

            {nfcData.verification && (
              <View style={styles.verificationContainer}>
                <Text style={styles.sectionTitle}>🔐 Doğrulama Bilgileri</Text>
                
                <View style={styles.dataItem}>
                  <Text style={styles.dataLabel}>Geçerlilik:</Text>
                  <Text style={[
                    styles.dataValue,
                    nfcData.verification.isValid ? styles.successText : styles.errorText
                  ]}>
                    {nfcData.verification.isValid ? '✅ Geçerli' : '❌ Geçersiz'}
                  </Text>
                </View>
                
                <View style={styles.dataItem}>
                  <Text style={styles.dataLabel}>Checksum:</Text>
                  <Text style={styles.dataValue}>{nfcData.verification.checksum}</Text>
                </View>
                
                <View style={styles.dataItem}>
                  <Text style={styles.dataLabel}>Dijital İmza:</Text>
                  <Text style={styles.dataValue}>{nfcData.verification.digitalSignature}</Text>
                </View>
                
                <View style={styles.dataItem}>
                  <Text style={styles.dataLabel}>Okuma Yöntemi:</Text>
                  <Text style={styles.dataValue}>{nfcData.verification.readMethod}</Text>
                </View>
              </View>
            )}

            {nfcData.nfcData && (
              <View style={styles.technicalContainer}>
                <Text style={styles.sectionTitle}>🔧 Teknik Bilgiler</Text>
                
                <View style={styles.dataItem}>
                  <Text style={styles.dataLabel}>UID:</Text>
                  <Text style={styles.dataValue}>{nfcData.nfcData.uid}</Text>
                </View>
                
                <View style={styles.dataItem}>
                  <Text style={styles.dataLabel}>Teknoloji:</Text>
                  <Text style={styles.dataValue}>{nfcData.nfcData.technology}</Text>
                </View>
                
                <View style={styles.dataItem}>
                  <Text style={styles.dataLabel}>Okuma Zamanı:</Text>
                  <Text style={styles.dataValue}>{new Date(nfcData.readTime).toLocaleString('tr-TR')}</Text>
                </View>
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
  mockGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-around',
    marginBottom: 20,
  },
  mockButton: {
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
    minWidth: 140,
  },
  selectedMockButton: {
    backgroundColor: '#e8f5e8',
    borderColor: '#4caf50',
    borderWidth: 2,
  },
  mockIcon: {
    fontSize: 32,
    marginBottom: 8,
  },
  mockTitle: {
    fontSize: 12,
    fontWeight: 'bold',
    color: '#333',
    textAlign: 'center',
    marginBottom: 4,
  },
  mockDescription: {
    fontSize: 10,
    color: '#666',
    textAlign: 'center',
  },
  readingContainer: {
    backgroundColor: '#fff3cd',
    borderRadius: 12,
    padding: 20,
    marginVertical: 16,
    alignItems: 'center',
  },
  readingText: {
    fontSize: 16,
    color: '#856404',
    fontWeight: 'bold',
    marginBottom: 8,
  },
  readingSubtext: {
    fontSize: 14,
    color: '#856404',
    textAlign: 'center',
    marginBottom: 16,
  },
  pulseContainer: {
    alignItems: 'center',
    justifyContent: 'center',
  },
  pulseCircle: {
    width: 60,
    height: 60,
    borderRadius: 30,
    backgroundColor: '#ffc107',
    opacity: 0.6,
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
  statusContainer: {
    marginBottom: 20,
  },
  statusItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 8,
    paddingVertical: 4,
  },
  statusLabel: {
    fontSize: 14,
    fontWeight: 'bold',
    color: '#333',
  },
  statusValue: {
    fontSize: 14,
    color: '#666',
  },
  successText: {
    color: '#28a745',
  },
  errorText: {
    color: '#dc3545',
  },
  cardDataContainer: {
    marginBottom: 20,
  },
  verificationContainer: {
    marginBottom: 20,
  },
  technicalContainer: {
    marginBottom: 20,
  },
  sectionTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 12,
    paddingBottom: 8,
    borderBottomWidth: 1,
    borderBottomColor: '#e9ecef',
  },
  dataItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 8,
    paddingVertical: 4,
  },
  dataLabel: {
    fontSize: 13,
    fontWeight: 'bold',
    color: '#333',
    flex: 1,
  },
  dataValue: {
    fontSize: 13,
    color: '#666',
    flex: 2,
    textAlign: 'right',
  },
  clearButton: {
    backgroundColor: '#dc3545',
    borderRadius: 8,
    padding: 12,
    alignItems: 'center',
  },
  clearButtonText: {
    color: '#fff',
    fontSize: 14,
    fontWeight: 'bold',
  },
});

export default NFCTestComponent;
