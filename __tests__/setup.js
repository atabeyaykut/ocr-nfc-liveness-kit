// Jest Setup - Test environment configuration
import 'react-native-gesture-handler/jestSetup';

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

// Global test utilities
global.console = {
  ...console,
  // Suppress console logs during tests unless needed
  log: jest.fn(),
  info: jest.fn(),
  warn: jest.fn(),
  error: jest.fn(),
};
