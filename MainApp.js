import React, { useEffect } from 'react';
import { Alert, BackHandler } from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';

import { OCRReaderScreen } from './modules/ocr/OCRReaderModule';
import { NFCReaderScreen } from './modules/nfc/NFCReaderModule';
import FullVerificationScreen from './FullVerificationScreen';

const Stack = createStackNavigator();

export default function MainApp() {
  useEffect(() => {
    const preloadMLKit = async () => {
      try {
        console.log('[App] Preloading ML Kit model...');
        const TextRecognition = require('@react-native-ml-kit/text-recognition').default;
        await TextRecognition.recognize('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+M9QDwADhgGAWjR9awAAAABJRU5ErkJggg==').catch(() => { });
        console.log('[App] ML Kit model preloaded ✓');
      } catch (error) {
        console.log('[App] ML Kit preload skipped');
      }
    };

    preloadMLKit();

    const backAction = () => {
      Alert.alert('Çıkış', 'Uygulamadan çıkmak istiyor musunuz?', [
        { text: 'İptal', onPress: () => null, style: 'cancel' },
        { text: 'Evet', onPress: () => BackHandler.exitApp() },
      ]);
      return true;
    };

    const backHandler = BackHandler.addEventListener('hardwareBackPress', backAction);
    return () => backHandler.remove();
  }, []);

  return (
    <NavigationContainer>
      <Stack.Navigator
        initialRouteName="FullVerification"
        screenOptions={{ headerShown: false }}
      >
        <Stack.Screen name="FullVerification" component={FullVerificationScreen} />
        <Stack.Screen name="OCR" component={OCRReaderScreen} />
        <Stack.Screen name="NFC" component={NFCReaderScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
