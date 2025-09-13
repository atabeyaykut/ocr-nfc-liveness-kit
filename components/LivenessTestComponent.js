/**
 * Liveness Test Component - Mock Environment
 * Tests Liveness functionality without camera/microphone using mock data
 */

import React, { useState } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
  Alert,
  Animated,
} from 'react-native';

// Mock Liveness function that simulates liveness detection
const handleLivenessResult = async (testType = 'default') => {
  // Simulate liveness detection delay
  await new Promise(resolve => setTimeout(resolve, 3000));
  
  // Import mock data
  const mockLivenessData = require('../mock/livenessData.js');
  
  const selectedData = mockLivenessData[testType] || mockLivenessData.default;
  
  return {
    success: true,
    ...selectedData,
    testTime: new Date().toISOString(),
    processingTime: 3000,
    mockTest: true
  };
};

const LivenessTestComponent = () => {
  const [isTesting, setIsTesting] = useState(false);
  const [livenessResult, setLivenessResult] = useState(null);
  const [selectedTestType, setSelectedTestType] = useState(null);
  const [currentStep, setCurrentStep] = useState('');
  const [progress, setProgress] = useState(0);

  const testTypes = [
    {
      key: 'default',
      title: 'Standart Test',
      description: 'Temel canlılık testi',
      icon: '😊',
      difficulty: 'Kolay'
    },
    {
      key: 'advanced',
      title: 'Gelişmiş Test',
      description: 'Çoklu hareket testi',
      icon: '🤔',
      difficulty: 'Orta'
    },
    {
      key: 'strict',
      title: 'Katı Test',
      description: 'Yüksek güvenlik testi',
      icon: '😐',
      difficulty: 'Zor'
    },
    {
      key: 'fail',
      title: 'Başarısız Test',
      description: 'Hata simülasyonu',
      icon: '❌',
      difficulty: 'Test'
    }
  ];

  const simulateTestSteps = async (testType) => {
    const steps = [
      { step: 'Kamera başlatılıyor...', duration: 500 },
      { step: 'Yüz algılanıyor...', duration: 800 },
      { step: 'Düz bakın...', duration: 1000 },
      { step: 'Göz kırpın...', duration: 800 },
      { step: 'Sola bakın...', duration: 700 },
      { step: 'Sağa bakın...', duration: 700 },
      { step: 'Gülümseyin...', duration: 600 },
      { step: 'Sonuçlar değerlendiriliyor...', duration: 800 }
    ];

    let totalProgress = 0;
    const progressStep = 100 / steps.length;

    for (const { step, duration } of steps) {
      setCurrentStep(step);
      await new Promise(resolve => setTimeout(resolve, duration));
      totalProgress += progressStep;
      setProgress(Math.min(totalProgress, 100));
    }
  };

  const handleLivenessTest = async (testType) => {
    try {
      setIsTesting(true);
      setSelectedTestType(testType);
      setLivenessResult(null);
      setProgress(0);
      setCurrentStep('');

      console.log('🎭 Liveness Test Started:', testType);
      
      // Simulate test steps
      await simulateTestSteps(testType);
      
      const result = await handleLivenessResult(testType);
      
      setLivenessResult(result);
      
      console.log('✅ Liveness Test Completed:', result);
      console.log('🎯 Result:', result.isLive ? 'LIVE' : 'NOT LIVE');
      console.log('📊 Confidence:', result.confidence);
      console.log('📋 Details:', result.details);
      
      const alertTitle = result.isLive ? 'Canlılık Testi Başarılı' : 'Canlılık Testi Başarısız';
      const alertMessage = `Sonuç: ${result.isLive ? 'CANLI' : 'CANLI DEĞİL'}\nGüven: ${(result.confidence * 100).toFixed(1)}%\n\nDetaylar konsola yazdırıldı.`;
      
      Alert.alert(alertTitle, alertMessage, [{ text: 'Tamam' }]);

    } catch (error) {
      console.error('❌ Liveness Test Error:', error);
      Alert.alert('Canlılık Testi Hatası', error.message);
    } finally {
      setIsTesting(false);
      setCurrentStep('');
      setProgress(0);
    }
  };

  const clearResults = () => {
    setLivenessResult(null);
    setSelectedTestType(null);
  };

  const getResultColor = (isLive) => {
    return isLive ? '#28a745' : '#dc3545';
  };

  const getResultIcon = (isLive) => {
    return isLive ? '✅' : '❌';
  };

  return (
    <View style={styles.container}>
      <Text style={styles.title}>🎭 Canlılık Test Modülü</Text>
      <Text style={styles.subtitle}>Mock verilerle canlılık testi</Text>

      <ScrollView style={styles.scrollView}>
        <View style={styles.testGrid}>
          {testTypes.map((testType, index) => (
            <TouchableOpacity
              key={index}
              style={[
                styles.testButton,
                selectedTestType === testType.key && styles.selectedTestButton
              ]}
              onPress={() => handleLivenessTest(testType.key)}
              disabled={isTesting}
            >
              <Text style={styles.testIcon}>{testType.icon}</Text>
              <Text style={styles.testTitle}>{testType.title}</Text>
              <Text style={styles.testDescription}>{testType.description}</Text>
              <View style={styles.difficultyBadge}>
                <Text style={styles.difficultyText}>{testType.difficulty}</Text>
              </View>
            </TouchableOpacity>
          ))}
        </View>

        {isTesting && (
          <View style={styles.testingContainer}>
            <Text style={styles.testingText}>🎭 Canlılık testi devam ediyor...</Text>
            <Text style={styles.currentStep}>{currentStep}</Text>
            
            <View style={styles.progressContainer}>
              <View style={styles.progressBar}>
                <View style={[styles.progressFill, { width: `${progress}%` }]} />
              </View>
              <Text style={styles.progressText}>{Math.round(progress)}%</Text>
            </View>

            <View style={styles.instructionsContainer}>
              <Text style={styles.instructionsTitle}>📋 Test Adımları:</Text>
              <Text style={styles.instructionsText}>
                1. Kameraya düz bakın{'\n'}
                2. Göz kırpın{'\n'}
                3. Başınızı sola çevirin{'\n'}
                4. Başınızı sağa çevirin{'\n'}
                5. Gülümseyin
              </Text>
            </View>
          </View>
        )}

        {livenessResult && (
          <View style={styles.resultsContainer}>
            <Text style={styles.resultsTitle}>📋 Canlılık Test Sonuçları</Text>
            
            <View style={styles.mainResultContainer}>
              <Text style={styles.resultIcon}>
                {getResultIcon(livenessResult.isLive)}
              </Text>
              <Text style={[
                styles.mainResult,
                { color: getResultColor(livenessResult.isLive) }
              ]}>
                {livenessResult.isLive ? 'CANLI' : 'CANLI DEĞİL'}
              </Text>
            </View>

            <View style={styles.statusContainer}>
              <View style={styles.statusItem}>
                <Text style={styles.statusLabel}>Güven Oranı:</Text>
                <Text style={[
                  styles.statusValue,
                  { color: getResultColor(livenessResult.isLive) }
                ]}>
                  {(livenessResult.confidence * 100).toFixed(1)}%
                </Text>
              </View>
              
              <View style={styles.statusItem}>
                <Text style={styles.statusLabel}>Test Süresi:</Text>
                <Text style={styles.statusValue}>{livenessResult.processingTime}ms</Text>
              </View>
              
              <View style={styles.statusItem}>
                <Text style={styles.statusLabel}>Test Türü:</Text>
                <Text style={styles.statusValue}>{selectedTestType}</Text>
              </View>
            </View>

            {livenessResult.details && (
              <View style={styles.detailsContainer}>
                <Text style={styles.sectionTitle}>📊 Test Detayları</Text>
                
                {livenessResult.details.movements && (
                  <View style={styles.movementsContainer}>
                    <Text style={styles.subSectionTitle}>🎯 Hareket Analizi</Text>
                    {Object.entries(livenessResult.details.movements).map(([movement, detected]) => (
                      <View key={movement} style={styles.movementItem}>
                        <Text style={styles.movementLabel}>{movement}:</Text>
                        <Text style={[
                          styles.movementValue,
                          { color: detected ? '#28a745' : '#dc3545' }
                        ]}>
                          {detected ? '✅ Algılandı' : '❌ Algılanmadı'}
                        </Text>
                      </View>
                    ))}
                  </View>
                )}

                {livenessResult.details.faceMetrics && (
                  <View style={styles.metricsContainer}>
                    <Text style={styles.subSectionTitle}>📏 Yüz Metrikleri</Text>
                    {Object.entries(livenessResult.details.faceMetrics).map(([metric, value]) => (
                      <View key={metric} style={styles.metricItem}>
                        <Text style={styles.metricLabel}>{metric}:</Text>
                        <Text style={styles.metricValue}>
                          {typeof value === 'number' ? value.toFixed(2) : value}
                        </Text>
                      </View>
                    ))}
                  </View>
                )}

                {livenessResult.details.qualityChecks && (
                  <View style={styles.qualityContainer}>
                    <Text style={styles.subSectionTitle}>🔍 Kalite Kontrolleri</Text>
                    {Object.entries(livenessResult.details.qualityChecks).map(([check, passed]) => (
                      <View key={check} style={styles.qualityItem}>
                        <Text style={styles.qualityLabel}>{check}:</Text>
                        <Text style={[
                          styles.qualityValue,
                          { color: passed ? '#28a745' : '#dc3545' }
                        ]}>
                          {passed ? '✅ Geçti' : '❌ Geçmedi'}
                        </Text>
                      </View>
                    ))}
                  </View>
                )}
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
  testGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-around',
    marginBottom: 20,
  },
  testButton: {
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
  selectedTestButton: {
    backgroundColor: '#f3e5f5',
    borderColor: '#9c27b0',
    borderWidth: 2,
  },
  testIcon: {
    fontSize: 32,
    marginBottom: 8,
  },
  testTitle: {
    fontSize: 12,
    fontWeight: 'bold',
    color: '#333',
    textAlign: 'center',
    marginBottom: 4,
  },
  testDescription: {
    fontSize: 10,
    color: '#666',
    textAlign: 'center',
    marginBottom: 8,
  },
  difficultyBadge: {
    backgroundColor: '#e9ecef',
    borderRadius: 12,
    paddingHorizontal: 8,
    paddingVertical: 2,
  },
  difficultyText: {
    fontSize: 9,
    color: '#6c757d',
    fontWeight: 'bold',
  },
  testingContainer: {
    backgroundColor: '#e8f4fd',
    borderRadius: 12,
    padding: 20,
    marginVertical: 16,
    alignItems: 'center',
  },
  testingText: {
    fontSize: 16,
    color: '#0c5460',
    fontWeight: 'bold',
    marginBottom: 8,
  },
  currentStep: {
    fontSize: 14,
    color: '#0c5460',
    textAlign: 'center',
    marginBottom: 16,
  },
  progressContainer: {
    width: '100%',
    alignItems: 'center',
    marginBottom: 16,
  },
  progressBar: {
    width: '100%',
    height: 8,
    backgroundColor: '#dee2e6',
    borderRadius: 4,
    overflow: 'hidden',
    marginBottom: 8,
  },
  progressFill: {
    height: '100%',
    backgroundColor: '#007bff',
    borderRadius: 4,
  },
  progressText: {
    fontSize: 12,
    color: '#0c5460',
    fontWeight: 'bold',
  },
  instructionsContainer: {
    backgroundColor: '#fff',
    borderRadius: 8,
    padding: 12,
    width: '100%',
  },
  instructionsTitle: {
    fontSize: 14,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 8,
  },
  instructionsText: {
    fontSize: 12,
    color: '#666',
    lineHeight: 18,
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
  mainResultContainer: {
    alignItems: 'center',
    marginBottom: 20,
    paddingVertical: 16,
    borderRadius: 8,
    backgroundColor: '#f8f9fa',
  },
  resultIcon: {
    fontSize: 48,
    marginBottom: 8,
  },
  mainResult: {
    fontSize: 24,
    fontWeight: 'bold',
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
  detailsContainer: {
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
  movementsContainer: {
    marginBottom: 16,
  },
  metricsContainer: {
    marginBottom: 16,
  },
  qualityContainer: {
    marginBottom: 16,
  },
  subSectionTitle: {
    fontSize: 14,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 8,
  },
  movementItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 6,
    paddingVertical: 2,
  },
  movementLabel: {
    fontSize: 12,
    color: '#333',
    flex: 1,
  },
  movementValue: {
    fontSize: 12,
    fontWeight: 'bold',
  },
  metricItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 6,
    paddingVertical: 2,
  },
  metricLabel: {
    fontSize: 12,
    color: '#333',
    flex: 1,
  },
  metricValue: {
    fontSize: 12,
    color: '#666',
  },
  qualityItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 6,
    paddingVertical: 2,
  },
  qualityLabel: {
    fontSize: 12,
    color: '#333',
    flex: 1,
  },
  qualityValue: {
    fontSize: 12,
    fontWeight: 'bold',
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

export default LivenessTestComponent;
