/**
 * Test Environment App - Main React Native Screen
 * Combines OCR, NFC, and Liveness test modules in a single interface
 */

import React, { useState } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
  SafeAreaView,
  StatusBar,
} from 'react-native';

import OCRTestComponent from './components/OCRTestComponent';
import NFCTestComponent from './components/NFCTestComponent';
import LivenessTestComponent from './components/LivenessTestComponent';

const TestEnvironmentApp = () => {
  const [activeModule, setActiveModule] = useState('home');

  const modules = [
    {
      key: 'ocr',
      title: 'OCR Test',
      description: 'Metin tanıma testi',
      icon: '📷',
      color: '#007bff'
    },
    {
      key: 'nfc',
      title: 'NFC Test',
      description: 'NFC okuma testi',
      icon: '📡',
      color: '#28a745'
    },
    {
      key: 'liveness',
      title: 'Canlılık Test',
      description: 'Canlılık algılama testi',
      icon: '🎭',
      color: '#9c27b0'
    }
  ];

  const renderHomeScreen = () => (
    <View style={styles.homeContainer}>
      <View style={styles.headerContainer}>
        <Text style={styles.appTitle}>🧪 Test Environment</Text>
        <Text style={styles.appSubtitle}>OCR, NFC ve Canlılık Test Modülleri</Text>
        <Text style={styles.appDescription}>
          Bu uygulama React Native 0.74+ ile uyumlu mock test ortamıdır.
          Gerçek kamera, NFC veya mikrofon gerektirmeden tüm modülleri test edebilirsiniz.
        </Text>
      </View>

      <View style={styles.modulesGrid}>
        {modules.map((module, index) => (
          <TouchableOpacity
            key={index}
            style={[styles.moduleCard, { borderLeftColor: module.color }]}
            onPress={() => setActiveModule(module.key)}
          >
            <Text style={styles.moduleIcon}>{module.icon}</Text>
            <View style={styles.moduleInfo}>
              <Text style={styles.moduleTitle}>{module.title}</Text>
              <Text style={styles.moduleDescription}>{module.description}</Text>
            </View>
            <Text style={styles.moduleArrow}>▶</Text>
          </TouchableOpacity>
        ))}
      </View>

      <View style={styles.featuresContainer}>
        <Text style={styles.featuresTitle}>✨ Özellikler</Text>
        <View style={styles.featuresList}>
          <Text style={styles.featureItem}>📷 OCR: Test resimleri ile metin çıkarma</Text>
          <Text style={styles.featureItem}>📡 NFC: Mock veriler ile kimlik okuma</Text>
          <Text style={styles.featureItem}>🎭 Canlılık: Simüle edilmiş hareket testi</Text>
          <Text style={styles.featureItem}>📱 React Native 0.74+ uyumlu</Text>
          <Text style={styles.featureItem}>🔧 Kamera/NFC gerektirmez</Text>
        </View>
      </View>

      <View style={styles.instructionsContainer}>
        <Text style={styles.instructionsTitle}>📋 Kullanım</Text>
        <Text style={styles.instructionsText}>
          1. Yukarıdaki modüllerden birini seçin{'\n'}
          2. Test butonlarına tıklayarak işlemleri başlatın{'\n'}
          3. Sonuçları ekranda görün ve konsolu kontrol edin{'\n'}
          4. Geri dönmek için ← butonunu kullanın
        </Text>
      </View>
    </View>
  );

  const renderActiveModule = () => {
    switch (activeModule) {
      case 'ocr':
        return <OCRTestComponent />;
      case 'nfc':
        return <NFCTestComponent />;
      case 'liveness':
        return <LivenessTestComponent />;
      default:
        return renderHomeScreen();
    }
  };

  const getActiveModuleTitle = () => {
    const module = modules.find(m => m.key === activeModule);
    return module ? module.title : 'Test Environment';
  };

  return (
    <SafeAreaView style={styles.container}>
      <StatusBar barStyle="dark-content" backgroundColor="#fff" />
      
      {/* Header */}
      <View style={styles.header}>
        {activeModule !== 'home' && (
          <TouchableOpacity
            style={styles.backButton}
            onPress={() => setActiveModule('home')}
          >
            <Text style={styles.backButtonText}>← Geri</Text>
          </TouchableOpacity>
        )}
        
        <Text style={styles.headerTitle}>{getActiveModuleTitle()}</Text>
        
        {activeModule !== 'home' && <View style={styles.headerSpacer} />}
      </View>

      {/* Content */}
      <View style={styles.content}>
        {renderActiveModule()}
      </View>

      {/* Footer */}
      <View style={styles.footer}>
        <Text style={styles.footerText}>
          React Native Test Environment v1.0.0
        </Text>
        <Text style={styles.footerSubtext}>
          Mock OCR, NFC & Liveness Testing
        </Text>
      </View>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f8f9fa',
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 16,
    paddingVertical: 12,
    backgroundColor: '#fff',
    borderBottomWidth: 1,
    borderBottomColor: '#e9ecef',
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  backButton: {
    paddingVertical: 8,
    paddingHorizontal: 12,
    backgroundColor: '#f8f9fa',
    borderRadius: 8,
  },
  backButtonText: {
    fontSize: 14,
    color: '#007bff',
    fontWeight: 'bold',
  },
  headerTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#333',
    textAlign: 'center',
    flex: 1,
  },
  headerSpacer: {
    width: 60,
  },
  content: {
    flex: 1,
  },
  homeContainer: {
    flex: 1,
    padding: 16,
  },
  headerContainer: {
    alignItems: 'center',
    marginBottom: 24,
    paddingVertical: 20,
    backgroundColor: '#fff',
    borderRadius: 12,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  appTitle: {
    fontSize: 28,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 8,
  },
  appSubtitle: {
    fontSize: 16,
    color: '#666',
    marginBottom: 12,
    textAlign: 'center',
  },
  appDescription: {
    fontSize: 14,
    color: '#666',
    textAlign: 'center',
    lineHeight: 20,
    paddingHorizontal: 16,
  },
  modulesGrid: {
    marginBottom: 24,
  },
  moduleCard: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: '#fff',
    borderRadius: 12,
    padding: 16,
    marginBottom: 12,
    borderLeftWidth: 4,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  moduleIcon: {
    fontSize: 32,
    marginRight: 16,
  },
  moduleInfo: {
    flex: 1,
  },
  moduleTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 4,
  },
  moduleDescription: {
    fontSize: 14,
    color: '#666',
  },
  moduleArrow: {
    fontSize: 16,
    color: '#666',
  },
  featuresContainer: {
    backgroundColor: '#fff',
    borderRadius: 12,
    padding: 16,
    marginBottom: 16,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  featuresTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 12,
  },
  featuresList: {
    marginLeft: 8,
  },
  featureItem: {
    fontSize: 14,
    color: '#666',
    marginBottom: 8,
    lineHeight: 20,
  },
  instructionsContainer: {
    backgroundColor: '#fff',
    borderRadius: 12,
    padding: 16,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  instructionsTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 12,
  },
  instructionsText: {
    fontSize: 14,
    color: '#666',
    lineHeight: 20,
  },
  footer: {
    alignItems: 'center',
    paddingVertical: 12,
    paddingHorizontal: 16,
    backgroundColor: '#fff',
    borderTopWidth: 1,
    borderTopColor: '#e9ecef',
  },
  footerText: {
    fontSize: 12,
    color: '#666',
    fontWeight: 'bold',
  },
  footerSubtext: {
    fontSize: 10,
    color: '#999',
    marginTop: 2,
  },
});

export default TestEnvironmentApp;
