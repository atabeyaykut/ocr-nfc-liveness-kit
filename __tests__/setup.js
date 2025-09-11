// Jest Setup - Test environment configuration
import 'react-native-gesture-handler/jestSetup';

// Mock Logger utility
jest.mock('../utils/logger', () => ({
  Logger: {
    info: jest.fn(),
    warn: jest.fn(),
    error: jest.fn(),
    debug: jest.fn(),
  },
}));

// Mock PermissionManager utility
jest.mock('../utils/permissions', () => ({
  PermissionManager: {
    requestCameraPermission: jest.fn(() => Promise.resolve(true)),
    requestStoragePermission: jest.fn(() => Promise.resolve(true)),
    checkCameraPermission: jest.fn(() => Promise.resolve(true)),
    checkStoragePermission: jest.fn(() => Promise.resolve(true)),
  },
}));

// Mock ImageProcessor utility
jest.mock('../utils/imageProcessor', () => ({
  ImageProcessor: {
    cropImage: jest.fn(() => Promise.resolve('mock-cropped-image-uri')),
    resizeImage: jest.fn(() => Promise.resolve('mock-resized-image-uri')),
    enhanceImage: jest.fn(() => Promise.resolve('mock-enhanced-image-uri')),
  },
}));

// Mock React Native modules
jest.mock('react-native', () => ({
  Platform: {
    OS: 'ios',
  },
  PermissionsAndroid: {
    PERMISSIONS: {
      CAMERA: 'android.permission.CAMERA',
      WRITE_EXTERNAL_STORAGE: 'android.permission.WRITE_EXTERNAL_STORAGE',
    },
    RESULTS: {
      GRANTED: 'granted',
      DENIED: 'denied',
    },
    request: jest.fn(() => Promise.resolve('granted')),
  },
  Alert: {
    alert: jest.fn(),
  },
}));

// Mock react-native-vision-camera
jest.mock('react-native-vision-camera', () => ({
  Camera: {
    getAvailableCameraDevices: jest.fn(() => Promise.resolve([])),
    getCameraPermissionStatus: jest.fn(() => Promise.resolve('authorized')),
    requestCameraPermission: jest.fn(() => Promise.resolve('authorized')),
  },
}));

// Mock react-native-text-recognition
jest.mock('react-native-text-recognition', () => ({
  TextRecognition: {
    recognize: jest.fn(() => Promise.resolve({
      text: 'Mock extracted text',
      blocks: [],
    })),
  },
}));

// Mock react-native-permissions
jest.mock('react-native-permissions', () => ({
  PERMISSIONS: {
    IOS: {
      CAMERA: 'ios.permission.CAMERA',
    },
    ANDROID: {
      CAMERA: 'android.permission.CAMERA',
    },
  },
  RESULTS: {
    GRANTED: 'granted',
    DENIED: 'denied',
  },
  request: jest.fn(() => Promise.resolve('granted')),
  check: jest.fn(() => Promise.resolve('granted')),
}));

// Mock react-native-nfc-manager
jest.mock('react-native-nfc-manager', () => ({
  NfcTech: {
    IsoDep: 'IsoDep',
    NfcA: 'NfcA',
    NfcB: 'NfcB',
    NfcF: 'NfcF',
    NfcV: 'NfcV',
    Ndef: 'Ndef',
    MifareClassic: 'MifareClassic',
    MifareUltralight: 'MifareUltralight',
  },
  NfcEvents: {
    DiscoverTag: 'NfcManagerDiscoverTag',
    SessionClosed: 'NfcManagerSessionClosed',
    StateChanged: 'NfcManagerStateChanged',
  },
  start: jest.fn(() => Promise.resolve()),
  stop: jest.fn(() => Promise.resolve()),
  isEnabled: jest.fn(() => Promise.resolve(true)),
  isSupported: jest.fn(() => Promise.resolve(true)),
  requestTechnology: jest.fn(() => Promise.resolve()),
  getTag: jest.fn(() => Promise.resolve({
    id: 'mock-tag-id',
    techTypes: ['IsoDep'],
    ndefMessage: [{
      tnf: 1,
      type: [84, 101, 120, 116], // "Text"
      payload: [2, 101, 110, 77, 111, 99, 107, 32, 78, 70, 67, 32, 68, 97, 116, 97], // Mock NFC Data
    }],
  })),
  closeTechnology: jest.fn(() => Promise.resolve()),
  cancelTechnologyRequest: jest.fn(() => Promise.resolve()),
}));

// Mock @bam.tech/react-native-image-resizer
jest.mock('@bam.tech/react-native-image-resizer', () => ({
  createResizedImage: jest.fn(() => Promise.resolve({
    uri: 'mock-resized-image-uri',
    width: 800,
    height: 600,
    size: 50000,
  })),
}));

// Global test utilities
global.console = {
  ...console,
  // Suppress console logs during tests unless needed
  log: jest.fn(),
  info: jest.fn(),
  warn: jest.fn(),
  error: jest.fn(),
};
