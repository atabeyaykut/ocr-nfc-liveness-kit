/**
 * Mobil Kimlik Doğrulama Uygulaması
 * OCR, NFC ve Canlılık Testi Modülleri
 * Android 11 (API 30) Uyumlu
 */

import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  ScrollView,
  StatusBar,
  Alert,
  BackHandler,
  Image,
  SafeAreaView,
  ActivityIndicator,
} from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';

// Import modules and flows
import { OCRReaderScreen } from './modules/ocr/OCRReaderModule';
import { NFCReaderScreen } from './modules/nfc/NFCReaderModule';
import { LivenessDetectionScreen } from './modules/liveness/LivenessDetectionModule';
import DualSideOCRDemo from './examples/DualSideOCRDemo';
import VerificationSequenceScreen from './VerificationSequenceScreen';
import FullVerificationScreen from './FullVerificationScreen';

const Stack = createStackNavigator();

// Main Menu Screen
const actionButtons = [
  {
    key: 'verificationSequence',
    title: 'Doğrulamayı Başlat',
    description: 'Sırayla OCR → NFC → Canlılık adımlarını çalıştırır.',
    backgroundColor: '#DBEAFE',
    icon: 'https://img.icons8.com/color/96/approval.png',
    requiredPermissions: ['camera'],
    navigateTo: 'VerificationSequence',
  },
  {
    key: 'fullVerification',
    title: 'Doğrulama OCR + NFC',
    description:
      'OCR ve NFC verilerini arka arkaya toplayıp tutarlılık raporu oluşturur.',
    backgroundColor: '#E0F2F1',
    icon: 'https://img.icons8.com/color/96/biometric-scan.png',
    requiredPermissions: ['camera'],
    navigateTo: 'FullVerification',
  },
  {
    key: 'ocrOnly',
    title: 'OCR',
    description: 'OCR modülünü tek başına test edin.',
    backgroundColor: '#E3F2FD',
    icon: 'https://img.icons8.com/color/96/ocr.png',
    requiredPermissions: ['camera'],
    navigateTo: 'OCR',
  },
  {
    key: 'nfcOnly',
    title: 'NFC',
    description: 'NFC okumadan gelen ham verileri inceleyin.',
    backgroundColor: '#FFF3E0',
    icon: 'https://img.icons8.com/color/96/nfc-tag.png',
    requiredPermissions: [],
    navigateTo: 'NFC',
  },
  {
    key: 'livenessOnly',
    title: 'Liveness',
    description: 'Mevcut canlılık testini başlatın (beta).',
    backgroundColor: '#F3E5F5',
    icon: 'https://img.icons8.com/color/96/face-id.png',
    requiredPermissions: ['camera'],
    navigateTo: 'Liveness',
  },
];

const MainMenuScreen = ({ navigation }) => {
  const [permissions, setPermissions] = useState({
    camera: false,
    nfc: false,
    loading: true,
  });

  useEffect(() => {
    checkAllPermissions();
  }, []);

  const checkAllPermissions = async () => {
    const cameraStatus = await check(PERMISSIONS.ANDROID.CAMERA);
    const nfcStatus = true; // NFC permission is automatic on Android
    
    setPermissions({
      camera: cameraStatus === RESULTS.GRANTED,
      nfc: nfcStatus,
      loading: false,
    });
  };

  const requestCameraPermission = async () => {
    const result = await request(PERMISSIONS.ANDROID.CAMERA);
    if (result === RESULTS.GRANTED) {
      setPermissions(prev => ({ ...prev, camera: true }));
      return true;
    }
    return false;
  };

  const navigateWithPermissions = async (buttonConfig) => {
    const { navigateTo, requiredPermissions = [] } = buttonConfig;

    if (requiredPermissions.includes('camera') && !permissions.camera) {
      const granted = await requestCameraPermission();
      if (!granted) {
        Alert.alert(
          'Kamera İzni Gerekli',
          'Bu özelliği kullanmak için kamera iznine ihtiyacımız var.',
          [{ text: 'Tamam' }]
        );
        return;
      }
    }

    navigation.navigate(navigateTo);
  };

  if (permissions.loading) {
    return (
      <View style={styles.loadingContainer}>
        <ActivityIndicator size="large" color="#2196F3" />
        <Text style={styles.loadingText}>İzinler kontrol ediliyor...</Text>
      </View>
    );
  }

  return (
    <SafeAreaView style={styles.container}>
      <StatusBar barStyle="dark-content" backgroundColor="#F5F5F5" />
      
      <ScrollView contentContainerStyle={styles.scrollContent}>
        <View style={styles.header}>
          <Image 
            source={{ uri: 'https://img.icons8.com/color/100/000000/id-verified.png' }}
            style={styles.logo}
          />
          <Text style={styles.title}>Kimlik Doğrulama</Text>
          <Text style={styles.subtitle}>Güvenli ve Hızlı Doğrulama Sistemi</Text>
        </View>

        <View style={styles.modulesContainer}>
          {actionButtons.map((button) => {
            const isCameraRequired = button.requiredPermissions?.includes('camera');
            const permissionReady = isCameraRequired ? permissions.camera : true;
            const badgeColor = permissionReady ? '#4CAF50' : '#FF9800';
            const badgeText = permissionReady ? '✓ Hazır' : '⚠ İzin Gerekli';

            return (
              <TouchableOpacity
                key={button.key}
                style={[styles.moduleCard, { backgroundColor: button.backgroundColor }]}
                onPress={() => navigateWithPermissions(button)}
                activeOpacity={0.85}
              >
                <Image source={{ uri: button.icon }} style={styles.moduleIcon} />
                <Text style={styles.moduleTitle}>{button.title}</Text>
                <Text style={styles.moduleDescription}>{button.description}</Text>
                <View style={[styles.permissionBadge, { backgroundColor: badgeColor }]}>
                  <Text style={styles.permissionText}>{badgeText}</Text>
                </View>
              </TouchableOpacity>
            );
          })}
        </View>

        <View style={styles.infoSection}>
          <Text style={styles.infoTitle}>ℹ️ Bilgilendirme</Text>
          <Text style={styles.infoText}>
            • Tüm verileriniz cihazınızda işlenir{'\n'}
            • Hiçbir bilgi sunucuya gönderilmez{'\n'}
            • KVKK uyumlu güvenli işleme{'\n'}
            • Android 11 ve üzeri cihazlarda çalışır
          </Text>
        </View>

        <View style={styles.footer}>
          <Text style={styles.footerText}>Versiyon 1.0.0 - Production Ready</Text>
          <Text style={styles.footerText}>© 2024 Mobil Kimlik Doğrulama</Text>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
};

// Test Result Screen
const TestResultScreen = ({ route, navigation }) => {
  const { module, result } = route.params || {};

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.resultHeader}>
        <TouchableOpacity onPress={() => navigation.goBack()}>
          <Text style={styles.backButton}>←</Text>
        </TouchableOpacity>
        <Text style={styles.resultTitle}>Test Sonuçları</Text>
        <View style={{ width: 40 }} />
      </View>

      <ScrollView style={styles.resultContent}>
        <View style={styles.resultCard}>
          <Text style={styles.resultModuleName}>{module} Modülü</Text>
          <Text style={styles.resultStatus}>
            {result?.success ? '✓ Başarılı' : '✗ Başarısız'}
          </Text>
          
          <View style={styles.resultDetails}>
            <Text style={styles.resultDetailsTitle}>Detaylar:</Text>
            <Text style={styles.resultDetailsText}>
              {JSON.stringify(result, null, 2)}
            </Text>
          </View>
        </View>

        <TouchableOpacity
          style={styles.homeButton}
          onPress={() => navigation.navigate('MainMenu')}
        >
          <Text style={styles.homeButtonText}>Ana Menüye Dön</Text>
        </TouchableOpacity>
      </ScrollView>
    </SafeAreaView>
  );
};

// Main App Component
export default function MainApp() {
  useEffect(() => {
    // 🚀 OPTIMIZATION: Preload ML Kit model for faster first scan
    const preloadMLKit = async () => {
      try {
        console.log('[App] Preloading ML Kit model...');
        const TextRecognition = require('@react-native-ml-kit/text-recognition').default;
        // Trigger model load by recognizing an empty string
        await TextRecognition.recognize('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+M9QDwADhgGAWjR9awAAAABJRU5ErkJggg==')
          .catch(() => {
            // Silent fail - just for preloading
          });
        console.log('[App] ML Kit model preloaded ✓');
      } catch (error) {
        // Silent fail - preload is optional
        console.log('[App] ML Kit preload skipped');
      }
    };
    
    preloadMLKit();
    
    // Handle back button on Android
    const backAction = () => {
      Alert.alert('Çıkış', 'Uygulamadan çıkmak istiyor musunuz?', [
        {
          text: 'İptal',
          onPress: () => null,
          style: 'cancel',
        },
        { text: 'Evet', onPress: () => BackHandler.exitApp() },
      ]);
      return true;
    };

    const backHandler = BackHandler.addEventListener(
      'hardwareBackPress',
      backAction
    );

    return () => backHandler.remove();
  }, []);

  return (
    <NavigationContainer>
      <Stack.Navigator
        initialRouteName="MainMenu"
        screenOptions={{
          headerShown: false,
        }}
      >
        <Stack.Screen name="MainMenu" component={MainMenuScreen} />
        <Stack.Screen name="OCR" component={OCRReaderScreen} />
        <Stack.Screen name="DualSideOCR" component={DualSideOCRDemo} />
        <Stack.Screen name="VerificationSequence" component={VerificationSequenceScreen} />
        <Stack.Screen name="FullVerification" component={FullVerificationScreen} />
        <Stack.Screen name="NFC" component={NFCReaderScreen} />
        <Stack.Screen name="Liveness" component={LivenessDetectionScreen} />
        <Stack.Screen name="TestResult" component={TestResultScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5F5F5',
  },
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5F5F5',
  },
  loadingText: {
    marginTop: 20,
    fontSize: 16,
    color: '#666',
  },
  scrollContent: {
    flexGrow: 1,
  },
  header: {
    alignItems: 'center',
    paddingTop: 40,
    paddingBottom: 30,
    backgroundColor: '#FFF',
    elevation: 2,
  },
  logo: {
    width: 100,
    height: 100,
    marginBottom: 20,
  },
  title: {
    fontSize: 28,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 5,
  },
  subtitle: {
    fontSize: 14,
    color: '#666',
  },
  modulesContainer: {
    padding: 20,
  },
  moduleCard: {
    borderRadius: 20,
    padding: 20,
    marginBottom: 20,
    elevation: 3,
    alignItems: 'center',
  },
  moduleIcon: {
    width: 80,
    height: 80,
    marginBottom: 15,
  },
  moduleTitle: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 10,
  },
  moduleDescription: {
    fontSize: 14,
    color: '#666',
    textAlign: 'center',
    marginBottom: 15,
    lineHeight: 20,
  },
  permissionBadge: {
    paddingHorizontal: 15,
    paddingVertical: 5,
    borderRadius: 15,
  },
  permissionText: {
    color: '#FFF',
    fontSize: 12,
    fontWeight: '600',
  },
  infoSection: {
    margin: 20,
    padding: 20,
    backgroundColor: '#FFF',
    borderRadius: 15,
    elevation: 2,
  },
  infoTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 10,
  },
  infoText: {
    fontSize: 13,
    color: '#666',
    lineHeight: 22,
  },
  footer: {
    alignItems: 'center',
    padding: 20,
  },
  footerText: {
    fontSize: 12,
    color: '#999',
    marginBottom: 5,
  },
  resultHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 20,
    backgroundColor: '#FFF',
    elevation: 2,
  },
  backButton: {
    fontSize: 28,
    color: '#333',
  },
  resultTitle: {
    fontSize: 18,
    fontWeight: '600',
    color: '#333',
  },
  resultContent: {
    flex: 1,
    padding: 20,
  },
  resultCard: {
    backgroundColor: '#FFF',
    borderRadius: 15,
    padding: 20,
    elevation: 2,
  },
  resultModuleName: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 10,
  },
  resultStatus: {
    fontSize: 16,
    color: '#4CAF50',
    marginBottom: 20,
  },
  resultDetails: {
    backgroundColor: '#F5F5F5',
    padding: 15,
    borderRadius: 10,
  },
  resultDetailsTitle: {
    fontSize: 14,
    fontWeight: '600',
    color: '#666',
    marginBottom: 10,
  },
  resultDetailsText: {
    fontSize: 12,
    color: '#999',
    fontFamily: 'monospace',
  },
  homeButton: {
    backgroundColor: '#2196F3',
    paddingVertical: 15,
    borderRadius: 10,
    marginTop: 30,
    alignItems: 'center',
  },
  homeButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
});
