/**
 * NFC Reader Module
 * Kimlik kartı NFC okuma modülü - Gerçek veri ile çalışır
 * Android 11 uyumlu
 */

import React, { useState, useEffect, useRef, useCallback } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Alert,
  ActivityIndicator,
  Vibration,
  BackHandler,
  Image,
  StatusBar,
  ScrollView,
  Platform,
  NativeModules,
  NativeEventEmitter,
  DeviceEventEmitter,
} from 'react-native';
import Animated, { useSharedValue, useAnimatedStyle, withRepeat, withTiming } from 'react-native-reanimated';
import NfcManager, {
  NfcTech,
  NfcEvents,
  Ndef,
  NfcAdapter
} from 'react-native-nfc-manager';
import { NFCFallbackModal } from '../../components/NFCFallbackModal';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';

// iOS Native Module Bridge
const { NFCReaderModule: IOSNFCReaderModule } = NativeModules;
const isIOS = Platform.OS === 'ios';
const iosEventEmitter = isIOS && IOSNFCReaderModule ? new NativeEventEmitter(IOSNFCReaderModule) : null;

// Android Native Module Bridge
const { NFCPassportReaderModule: AndroidNFCModule } = NativeModules;
const isAndroid = Platform.OS === 'android';
const androidEventEmitter = isAndroid && AndroidNFCModule ? new NativeEventEmitter(AndroidNFCModule) : null;

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

// Android NFC Reader Mode Flags
// These are the actual values from Android NFC API
// Used when NfcManager.FLAG_READER_* constants are not available
const READER_FLAGS = {
  FLAG_READER_NFC_A: 0x1,
  FLAG_READER_NFC_B: 0x2,
  FLAG_READER_NFC_F: 0x4,
  FLAG_READER_NFC_V: 0x8,
  FLAG_READER_SKIP_NDEF_CHECK: 0x80,
  FLAG_READER_NO_PLATFORM_SOUNDS: 0x100,
};

// Logger utility for detailed NFC flow tracking
const nfcLogger = {
  step: (stepName, details = {}) => {
    const timestamp = new Date().toISOString();
    console.log(`\n[NFC Step] ========================================`);
    console.log(`[NFC Step] ${stepName}`);
    console.log(`[NFC Step] Time: ${timestamp}`);
    if (Object.keys(details).length > 0) {
      console.log(`[NFC Step] Details:`, JSON.stringify(details, null, 2));
    }
    console.log(`[NFC Step] ========================================\n`);
  },
  info: (message, data) => {
    console.log(`[NFC Info] ${message}`, data || '');
  },
  success: (message, data) => {
    console.log(`[NFC ✅] ${message}`, data || '');
  },
  warn: (message, data) => {
    console.warn(`[NFC ⚠️] ${message}`, data || '');
  },
  error: (message, error) => {
    console.error(`[NFC ❌] ${message}`, error || '');
  },
  apdu: (direction, command, response) => {
    console.log(`[NFC APDU ${direction}]`, {
      command: Array.isArray(command) ? command.map(b => b.toString(16).padStart(2, '0')).join(' ') : command,
      response: response ? (Array.isArray(response) ? response.map(b => b.toString(16).padStart(2, '0')).join(' ') : response) : 'N/A'
    });
  }
};

class IdScanOperation {
  constructor({ isSuccess, content = null, exception = null }) {
    this.isSuccess = Boolean(isSuccess);
    this.content = content;
    this.exception = exception;
    this.timestamp = new Date().toISOString();
  }

  static success(content) {
    return new IdScanOperation({ isSuccess: true, content, exception: null });
  }

  static failure(exception) {
    return new IdScanOperation({ isSuccess: false, content: null, exception });
  }
}

class NFCReaderModule {
  constructor(options = {}) {
    this.callbacks = {};
    this.isReading = false;
    this.bacSession = null;
    this.currentTag = null; // Store current tag for transceive
    this.operationListeners = new Set();
    this.verificationHandler = null;
    this.iosEventSubscriptions = []; // iOS event subscriptions
    this.androidEventSubscriptions = []; // Android event subscriptions
    nfcLogger.info('NFCReaderModule instance created', { platform: Platform.OS });
    this.options = {
      cardType: options.cardType || 'tc_kimlik',
      readTimeout: options.readTimeout || 60000,
      retryCount: options.retryCount || 3,
      enableVibration: options.enableVibration !== false,
      isoDepTimeout: options.isoDepTimeout ?? 5000,
      sessionMetadata: options.sessionMetadata || null,
      verificationHandler: options.verificationHandler || null,
      ...options,
    };

    if (this.options.verificationHandler) {
      this.setVerificationHandler(this.options.verificationHandler);
    }

    // Setup event listeners based on platform
    if (isIOS && iosEventEmitter) {
      this.setupIOSEventListeners();
    } else if (isAndroid && androidEventEmitter) {
      this.setupAndroidEventListeners();
    }
  }

  // Setup iOS Native Module Event Listeners
  setupIOSEventListeners = () => {
    nfcLogger.info('Setting up iOS event listeners');

    // NFC_SCAN_STARTED
    this.iosEventSubscriptions.push(
      iosEventEmitter.addListener('NFC_SCAN_STARTED', (event) => {
        nfcLogger.info('iOS: NFC_SCAN_STARTED', event);
        if (this.callbacks.onStarted) {
          this.callbacks.onStarted();
        }
      })
    );

    // NFC_TAG_DETECTED
    this.iosEventSubscriptions.push(
      iosEventEmitter.addListener('NFC_TAG_DETECTED', (event) => {
        nfcLogger.info('iOS: NFC_TAG_DETECTED', event);
        if (this.callbacks.onTagDiscovered) {
          this.callbacks.onTagDiscovered(event);
        }
      })
    );

    // NFC_DATA_READ
    this.iosEventSubscriptions.push(
      iosEventEmitter.addListener('NFC_DATA_READ', (event) => {
        nfcLogger.info('iOS: NFC_DATA_READ', { bytesRead: event.bytesRead });
      })
    );

    // NFC_SCAN_COMPLETED
    this.iosEventSubscriptions.push(
      iosEventEmitter.addListener('NFC_SCAN_COMPLETED', (event) => {
        nfcLogger.success('iOS: NFC_SCAN_COMPLETED', event);

        if (event.status === 'SUCCESS' && event.data) {
          const parsedFields = event.data;

          // Create success operation
          const operation = this.createSuccessOperation(parsedFields, null);
          this.dispatchIdScanOperation(operation);

          // Call onResult callback
          if (this.callbacks.onResult) {
            const response = {
              success: true,
              parsedFields,
              cardType: this.options.cardType,
              timestamp: new Date().toISOString(),
            };
            this.callbacks.onResult(response);
          }
        }

        this.isReading = false;
      })
    );

    // NFC_ERROR
    this.iosEventSubscriptions.push(
      iosEventEmitter.addListener('NFC_ERROR', (event) => {
        nfcLogger.error('iOS: NFC_ERROR', event.error);

        const error = new Error(event.error);
        this.handleError(error);
        this.isReading = false;
      })
    );

    // NFC_CANCELLED
    this.iosEventSubscriptions.push(
      iosEventEmitter.addListener('NFC_CANCELLED', (event) => {
        nfcLogger.warn('iOS: NFC_CANCELLED');

        const error = new Error('NFC okuma kullanıcı tarafından iptal edildi');
        error.code = NFC_ERROR_CODES.NFC_CANCELLED;
        this.handleError(error);
        this.isReading = false;
      })
    );

    nfcLogger.success('iOS event listeners setup complete');
  }

  // Cleanup iOS event listeners
  cleanupIOSEventListeners = () => {
    if (this.iosEventSubscriptions.length > 0) {
      nfcLogger.info('Cleaning up iOS event listeners');
      this.iosEventSubscriptions.forEach(subscription => subscription.remove());
      this.iosEventSubscriptions = [];
    }
  }

  // Setup Android Native Module Event Listeners
  setupAndroidEventListeners = () => {
    nfcLogger.info('Setting up Android event listeners');

    // NFC_SCAN_STARTED
    this.androidEventSubscriptions.push(
      androidEventEmitter.addListener('NFC_SCAN_STARTED', (event) => {
        nfcLogger.info('Android: NFC_SCAN_STARTED', event);
        if (this.callbacks.onStarted) {
          this.callbacks.onStarted();
        }
      })
    );

    // NFC_TAG_DETECTED
    this.androidEventSubscriptions.push(
      androidEventEmitter.addListener('NFC_TAG_DETECTED', (event) => {
        nfcLogger.info('Android: NFC_TAG_DETECTED', event);
        if (this.callbacks.onTagDiscovered) {
          this.callbacks.onTagDiscovered(event);
        }
      })
    );

    // NFC_DATA_READ
    this.androidEventSubscriptions.push(
      androidEventEmitter.addListener('NFC_DATA_READ', (event) => {
        nfcLogger.info('Android: NFC_DATA_READ', { bytesRead: event.bytesRead });
      })
    );

    // NFC_SCAN_COMPLETED
    this.androidEventSubscriptions.push(
      androidEventEmitter.addListener('NFC_SCAN_COMPLETED', (event) => {
        nfcLogger.success('Android: NFC_SCAN_COMPLETED', event);

        if (event.status === 'SUCCESS' && event.data) {
          const parsedFields = event.data;

          // Create success operation
          const operation = this.createSuccessOperation(parsedFields, null);
          this.dispatchIdScanOperation(operation);

          // Call onResult callback
          if (this.callbacks.onResult) {
            const response = {
              success: true,
              parsedFields,
              cardType: this.options.cardType,
              timestamp: new Date().toISOString(),
            };
            this.callbacks.onResult(response);
          }
        }

        this.isReading = false;
      })
    );

    // NFC_ERROR
    this.androidEventSubscriptions.push(
      androidEventEmitter.addListener('NFC_ERROR', (event) => {
        nfcLogger.error('Android: NFC_ERROR', event.error);

        const error = new Error(event.error);
        this.handleError(error);
        this.isReading = false;
      })
    );

    // NFC_CANCELLED
    this.androidEventSubscriptions.push(
      androidEventEmitter.addListener('NFC_CANCELLED', (event) => {
        nfcLogger.warn('Android: NFC_CANCELLED');

        const error = new Error('NFC okuma kullanıcı tarafından iptal edildi');
        error.code = NFC_ERROR_CODES.NFC_CANCELLED;
        this.handleError(error);
        this.isReading = false;
      })
    );

    nfcLogger.success('Android event listeners setup complete');
  }

  // Cleanup Android event listeners
  cleanupAndroidEventListeners = () => {
    if (this.androidEventSubscriptions.length > 0) {
      nfcLogger.info('Cleaning up Android event listeners');
      this.androidEventSubscriptions.forEach(subscription => subscription.remove());
      this.androidEventSubscriptions = [];
    }
  }

  // API Methods
  startNFC = async (options = {}) => {
    nfcLogger.step('START_NFC', { options, platform: Platform.OS });

    const defaultOptions = {
      readTimeout: 30000,
      enableVibration: true,
      cardType: 'tc_kimlik',
      retryCount: 3,
      isoDepTimeout: 5000,
      sessionMetadata: null,
      verificationHandler: null,
      canNumber: null,
    };

    this.options = { ...defaultOptions, ...options };

    if (this.options.canNumber != null) {
      const digitsOnly = String(this.options.canNumber).replace(/[^0-9]/g, '');
      this.options.canNumber = digitsOnly ? digitsOnly.padStart(6, '0').slice(-6) : null;
      nfcLogger.info('CAN number provided:', this.options.canNumber ? `${this.options.canNumber.slice(0, 2)}****` : null);
    }
    nfcLogger.info('Options merged', this.options);

    if (this.options.verificationHandler) {
      this.setVerificationHandler(this.options.verificationHandler);
    }

    try {
      // iOS: Use native NFCPassportReader module
      if (isIOS && IOSNFCReaderModule) {
        nfcLogger.info('Using iOS native NFCPassportReader module');
        return await this.startNFCIOS(this.options);
      }

      // Android: Use native NFCPassportReaderModule with BAC/PACE
      if (isAndroid && AndroidNFCModule) {
        nfcLogger.info('Using Android native NFCPassportReaderModule');
        return await this.startNFCAndroidNative(this.options);
      }

      // Fallback: Use existing react-native-nfc-manager implementation
      nfcLogger.warn('Using fallback NFC implementation (limited functionality)');
      return await this.startNFCFallback();

    } catch (error) {
      this.handleError(error);
    }
  };

  // iOS Native Implementation
  startNFCIOS = async (options) => {
    nfcLogger.info('Starting iOS NFC with native module');

    try {
      // Check if iOS module is available
      const supportResult = await IOSNFCReaderModule.isSupported();
      nfcLogger.info('iOS NFC Support:', supportResult);

      if (!supportResult.supported) {
        throw new Error(supportResult.message || 'Bu cihaz NFC desteklemiyor');
      }

      // Prepare options for native module
      const nativeOptions = {
        alertMessage: options.alertMessage || 'Kimlik kartınızı cihazınızın arkasına yaklaştırın',
        timeoutSeconds: (options.readTimeout || 60000) / 1000,
        timeout: options.readTimeout || 60000,
      };

      // Add MRZ seed for BAC authentication
      if (options.mrzSeed) {
        nativeOptions.mrzSeed = options.mrzSeed;
        nfcLogger.info('iOS: MRZ seed provided for BAC authentication');
      }

      // Add CAN for PACE authentication
      if (options.canNumber) {
        nativeOptions.canNumber = options.canNumber;
        nfcLogger.info('iOS: CAN provided for PACE authentication');
      }

      // Start native NFC reading
      const result = await IOSNFCReaderModule.startReading(nativeOptions);
      nfcLogger.success('iOS NFC started:', result);

      this.isReading = true;
      return result;

    } catch (error) {
      nfcLogger.error('iOS NFC start failed:', error);
      throw error;
    }
  };

  // Android Native Implementation
  startNFCAndroidNative = async (options) => {
    nfcLogger.info('Starting Android NFC with native module');

    try {
      // Check if Android module is available
      const supportResult = await AndroidNFCModule.isSupported();
      nfcLogger.info('Android NFC Support:', supportResult);

      if (!supportResult.supported) {
        throw new Error(supportResult.message || 'Bu cihaz NFC desteklemiyor');
      }

      // Prepare options for native module
      const nativeOptions = {
        alertMessage: options.alertMessage || 'Kimlik kartınızı cihazınızın arkasına yaklaştırın',
        timeoutSeconds: (options.readTimeout || 60000) / 1000,
        timeout: options.readTimeout || 60000,
      };

      // Add MRZ seed for BAC authentication
      if (options.mrzSeed) {
        nativeOptions.mrzSeed = options.mrzSeed;
        nfcLogger.info('Android: MRZ seed provided for BAC authentication');
      }

      // Add CAN for PACE authentication (if supported)
      if (options.canNumber) {
        nativeOptions.canNumber = options.canNumber;
        nfcLogger.info('Android: CAN provided for PACE authentication');
      }

      // Start native NFC reading
      const result = await AndroidNFCModule.startReading(nativeOptions);
      nfcLogger.success('Android NFC started:', result);

      this.isReading = true;
      return result;

    } catch (error) {
      nfcLogger.error('Android NFC start failed:', error);
      throw error;
    }
  };

  // Fallback Implementation (existing react-native-nfc-manager code)
  startNFCFallback = async () => {
    try {
      // Check NFC support
      nfcLogger.info('Checking NFC support...');
      const isSupported = await NfcManager.isSupported();
      nfcLogger.info('NFC Supported:', isSupported);

      if (!isSupported) {
        throw new Error('Bu cihaz NFC desteklemiyor');
      }

      // Check if NFC is enabled
      nfcLogger.info('Checking NFC enabled status...');
      const isEnabled = await NfcManager.isEnabled();
      nfcLogger.info('NFC Enabled:', isEnabled);

      if (!isEnabled) {
        throw new Error('NFC kapalı. Lütfen ayarlardan NFC\'yi açın.');
      }

      // Start NFC
      nfcLogger.info('Starting NFC Manager...');
      await NfcManager.start();
      this.isReading = true;
      nfcLogger.success('NFC Manager started successfully');

      if (this.callbacks.onStarted) {
        nfcLogger.info('Calling onStarted callback');
        this.callbacks.onStarted();
      }

      // Register NFC discovery - this will handle tag detection
      nfcLogger.info('Registering NFC discovery...');
      await this.registerNfcDiscovery();
      nfcLogger.success('NFC discovery registered successfully');

    } catch (error) {
      nfcLogger.error('Android NFC start failed:', error);
      throw error;
    }
  }

  stopNFC = async () => {
    nfcLogger.step('STOP_NFC', { platform: Platform.OS });

    this.isReading = false;
    nfcLogger.info('isReading set to false');

    try {
      // iOS: Use native module
      if (isIOS && IOSNFCReaderModule) {
        nfcLogger.info('Stopping iOS NFC with native module');
        await IOSNFCReaderModule.stopReading();
        nfcLogger.success('iOS NFC stopped');
      } else if (isAndroid && AndroidNFCModule) {
        // Android: Use native module
        nfcLogger.info('Stopping Android NFC with native module');
        await AndroidNFCModule.stopReading();
        nfcLogger.success('Android NFC stopped');
      } else {
        // Android: Use existing implementation
        // Remove DiscoverTag event listener
        nfcLogger.info('Removing DiscoverTag event listener...');
        NfcManager.setEventListener(NfcEvents.DiscoverTag, null);
        nfcLogger.success('DiscoverTag listener removed');

        // Unregister tag event (if it was used)
        if (typeof NfcManager.unregisterTagEvent === 'function') {
          nfcLogger.info('Unregistering tag event...');
          await NfcManager.unregisterTagEvent();
          nfcLogger.success('Tag event unregistered');
        }

        // Cancel technology request
        if (typeof NfcManager.cancelTechnologyRequest === 'function') {
          nfcLogger.info('Cancelling technology request...');
          await NfcManager.cancelTechnologyRequest();
          nfcLogger.success('Technology request cancelled');
        }
      }
    } catch (error) {
      nfcLogger.warn('Error during NFC stop', error.message);
    } finally {
      this.bacSession = null;
      nfcLogger.info('BAC session cleared');

      if (this.callbacks.onStopped) {
        nfcLogger.info('Calling onStopped callback');
        this.callbacks.onStopped();
      }

      nfcLogger.success('NFC stopped successfully');
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

  onNFCTagDiscovered = (callback) => {
    this.callbacks.onTagDiscovered = callback;
  };

  setVerificationHandler = (handler) => {
    if (handler && typeof handler !== 'function') {
      throw new Error('verificationHandler bir fonksiyon olmalıdır');
    }
    this.verificationHandler = handler || null;
    this.options.verificationHandler = this.verificationHandler;
  };

  onIdScanOperation = (listener) => {
    if (typeof listener !== 'function') {
      throw new Error('onIdScanOperation dinleyicisi bir fonksiyon olmalıdır');
    }
    this.operationListeners.add(listener);
    return () => this.operationListeners.delete(listener);
  };

  emitIdScanOperation = (operation) => {
    this.operationListeners.forEach((listener) => {
      try {
        listener(operation);
      } catch (listenerError) {
        nfcLogger.warn('IdScanOperation dinleyicisinde hata', listenerError.message);
      }
    });
  };

  dispatchIdScanOperation = async (operation) => {
    if (!this.verificationHandler) {
      this.emitIdScanOperation(operation);
      return;
    }

    try {
      const handlerResult = await this.verificationHandler(operation);

      if (handlerResult instanceof IdScanOperation) {
        this.emitIdScanOperation(handlerResult);
        return;
      }

      if (handlerResult && typeof handlerResult === 'object') {
        if (typeof handlerResult.isSuccess === 'boolean') {
          this.emitIdScanOperation(new IdScanOperation(handlerResult));
          return;
        }

        this.emitIdScanOperation(IdScanOperation.success(handlerResult));
        return;
      }

      this.emitIdScanOperation(operation);
    } catch (workerError) {
      nfcLogger.error('Doğrulama işleyicisinde hata', workerError);
      const workerException = {
        message: workerError.message || 'Kart doğrulama işleyicisi başarısız oldu',
        code: 'VERIFICATION_WORKER_ERROR',
        details: {
          stack: workerError.stack,
        },
      };
      this.emitIdScanOperation(IdScanOperation.failure(workerException));
    }
  };

  createSuccessOperation = (parsedFields, tag) => {
    const content = {
      parsedFields,
      cardType: this.options.cardType,
      rawTagId: tag?.id || null,
      techList: tag?.techTypes || tag?.tech || [],
      mrzSeed: this.options.mrzSeed || null,
      sessionMetadata: this.options.sessionMetadata || null,
    };

    return IdScanOperation.success(content);
  };

  createFailureOperation = (errorResponse) => {
    return IdScanOperation.failure(this.buildErrorResult(errorResponse));
  };

  buildErrorResult = (errorResponse) => ({
    message: errorResponse.error,
    code: errorResponse.code,
    details: {
      technicalError: errorResponse.technicalError,
      technicalStack: errorResponse.technicalStack,
      fallback: errorResponse.fallback,
    },
  });

  withTimeout = (promise, timeoutMs, timeoutMessage) => {
    if (!timeoutMs || timeoutMs <= 0) {
      return promise;
    }

    return new Promise((resolve, reject) => {
      const timeoutId = setTimeout(() => {
        reject(new Error(timeoutMessage || NFC_ERROR_CODES.TIMEOUT));
      }, timeoutMs);

      promise
        .then((value) => {
          clearTimeout(timeoutId);
          resolve(value);
        })
        .catch((error) => {
          clearTimeout(timeoutId);
          reject(error);
        });
    });
  };

  // Private Methods
  registerNfcDiscovery = async () => {
    nfcLogger.step('REGISTER_NFC_DISCOVERY');

    try {
      nfcLogger.info('Activating NFC reader mode with registerTagEvent...');

      // Try to use NfcManager flags first, fallback to manual values
      const FLAG_A = NfcManager.FLAG_READER_NFC_A ?? READER_FLAGS.FLAG_READER_NFC_A;
      const FLAG_B = NfcManager.FLAG_READER_NFC_B ?? READER_FLAGS.FLAG_READER_NFC_B;
      const FLAG_F = NfcManager.FLAG_READER_NFC_F ?? READER_FLAGS.FLAG_READER_NFC_F;
      const FLAG_V = NfcManager.FLAG_READER_NFC_V ?? READER_FLAGS.FLAG_READER_NFC_V;
      const FLAG_SKIP = NfcManager.FLAG_READER_SKIP_NDEF_CHECK ?? READER_FLAGS.FLAG_READER_SKIP_NDEF_CHECK;

      nfcLogger.info('Using flag values:', {
        FLAG_READER_NFC_A: FLAG_A,
        FLAG_READER_NFC_B: FLAG_B,
        FLAG_READER_NFC_F: FLAG_F,
        FLAG_READER_NFC_V: FLAG_V,
        FLAG_READER_SKIP_NDEF_CHECK: FLAG_SKIP
      });

      const readerModeFlags = FLAG_A | FLAG_B | FLAG_F | FLAG_V | FLAG_SKIP;

      nfcLogger.info('Reader mode flags calculated (decimal):', readerModeFlags);
      nfcLogger.info('Reader mode flags calculated (hex):', '0x' + readerModeFlags.toString(16));

      if (!readerModeFlags) {
        nfcLogger.error(' Reader mode flags are still zero!');
        throw new Error('Unable to set reader mode flags');
      }

      nfcLogger.success(' Reader mode flags configured successfully');

      // CRITICAL: Use registerTagEvent callback for tag handling
      // This is the cleanest approach - no mixing with DiscoverTag listener
      nfcLogger.info('Calling NfcManager.registerTagEvent...');

      const tagCallback = async (tag) => {
        nfcLogger.step('🎉 TAG_DETECTED_IN_CALLBACK', {
          tagId: tag?.id,
          techTypes: tag?.techTypes,
          nfcA: tag?.nfcA,
          maxTransceiveLength: tag?.maxTransceiveLength
        });

        if (this.options.enableVibration) {
          nfcLogger.info('Vibrating device for user feedback');
          Vibration.vibrate(100);
        }

        if (this.callbacks.onTagDiscovered) {
          nfcLogger.info('Calling onTagDiscovered callback');
          this.callbacks.onTagDiscovered(tag);
        }

        // Handle the tag
        nfcLogger.info('Calling handleTag...');
        try {
          await this.handleTag(tag);
        } catch (error) {
          nfcLogger.error('handleTag failed', error);
          this.handleError(error);
        }
      };

      nfcLogger.info('Callback function created, typeof:', typeof tagCallback);

      // EVENT-BASED APPROACH: Use only DiscoverTag event listener
      // DO NOT use requestTechnology as it blocks the event
      nfcLogger.info('Setting up DiscoverTag event listener...');

      NfcManager.setEventListener(NfcEvents.DiscoverTag, tagCallback);
      nfcLogger.success('✅ DiscoverTag listener registered');

      // Enable foreground dispatch with reader mode flags
      nfcLogger.info('Enabling foreground dispatch with reader mode...');
      try {
        await NfcManager.registerTagEvent({
          isReaderModeEnabled: true,
          readerModeFlags: readerModeFlags
        });
        nfcLogger.success('✅ Foreground dispatch enabled with reader mode');
      } catch (dispatchError) {
        nfcLogger.warn('Foreground dispatch registration issue (might be OK):', dispatchError.message);
      }

      nfcLogger.success('✅ Reader mode activated - Event-based detection active');
      nfcLogger.info('📡 Ready to scan - bring card close to device');
      nfcLogger.info('🔔 Waiting for tag - DiscoverTag event will fire automatically');
    } catch (error) {
      nfcLogger.error('Reader mode activation failed', error);
      throw error;
    }
  };

  handleTag = async (tag) => {
    nfcLogger.step('HANDLE_TAG', { tagId: tag?.id });

    // SIMPLIFIED VERSION: Only detect card and vibrate
    // All reading functionality is commented out due to CAN issue

    nfcLogger.info('✅ Kart algılandı - sadece titreşim yapılacak (CAN problemi nedeniyle okuma devre dışı)');

    // Vibrate to indicate card detected
    if (this.options.enableVibration) {
      nfcLogger.info('Titreşim başlatılıyor...');
      Vibration.vibrate(100);
    }

    // Log tag info
    const techList = Array.isArray(tag?.tech)
      ? tag.tech
      : Array.isArray(tag?.techTypes)
        ? tag.techTypes
        : [];

    nfcLogger.info('Kart teknolojileri:', techList);
    nfcLogger.info('Kart ID:', tag?.id);

    // Call onTagDiscovered callback if exists
    if (this.callbacks.onTagDiscovered) {
      nfcLogger.info('onTagDiscovered callback çağrılıyor');
      this.callbacks.onTagDiscovered(tag);
    }

    /* ===== TÜM OKUMA İŞLEMLERİ YORUM SATIRINA ALINDI (CAN PROBLEMİ) =====
    
    // Store tag for transceive operations
    this.currentTag = tag;
    nfcLogger.info('Current tag stored for transceive operations');

    // Declare variables outside try block so they're accessible in finally block
    let result = null;
    let selectedTech = null;
    let connectionTech = null;

    try {
      const techList = Array.isArray(tag?.tech)
        ? tag.tech
        : Array.isArray(tag?.techTypes)
          ? tag.techTypes
          : [];

      nfcLogger.info('Tech list extracted:', techList);

      if (techList.length === 0) {
        nfcLogger.error('No technologies detected in tag');
        throw new Error('Kart teknolojisi algılanamadı. Lütfen kartı yeniden konumlandırın.');
      }

      const hasTech = (needle) =>
        techList.some((tech) => (tech || '').toLowerCase().includes(needle.toLowerCase()));

      nfcLogger.info('Analyzing tag technologies...', techList);

      if (hasTech('isodep')) {
        selectedTech = 'IsoDep';
        connectionTech = NfcTech.IsoDep;
        nfcLogger.info('Detected IsoDep technology - reading Turkish ID card');
        nfcLogger.info('Tag is connected via reader mode - ready for APDU communication');
      } else if (hasTech('ndef')) {
        selectedTech = 'Ndef';
        connectionTech = NfcTech.Ndef;
        nfcLogger.info('Detected Ndef technology');
      } else if (hasTech('mifare')) {
        selectedTech = 'MifareClassic';
        connectionTech = NfcTech.MifareClassic;
        nfcLogger.info('Detected Mifare Classic technology');
      } else if (hasTech('nfc')) {
        selectedTech = 'NfcA';
        connectionTech = NfcTech.NfcA;
        nfcLogger.info('Detected NFC-A technology');
      }

      if (connectionTech) {
        nfcLogger.info(`Connecting to ${selectedTech} technology session...`);
        try {
          await NfcManager.connect([connectionTech]);
          nfcLogger.success(`${selectedTech} technology connected successfully`);
        } catch (techError) {
          nfcLogger.error(`Failed to connect ${selectedTech} technology`, techError.message);
          throw new Error('Kart teknolojisi ile bağlantı kurulamadı');
        }
      }

      if (selectedTech === 'IsoDep') {
        result = await this.readIsoDep(tag);
      } else if (selectedTech === 'Ndef') {
        result = await this.readNdef(tag);
      } else if (selectedTech === 'MifareClassic') {
        result = await this.readMifareClassic(tag);
      } else if (selectedTech === 'NfcA') {
        result = await this.readNfcA(tag);
      }

      nfcLogger.info('Selected technology:', selectedTech);

      nfcLogger.info('Validating parsed data...');
      const hasMeaningfulData = result && Object.values(result).some((value) => {
        if (!value) return false;
        if (typeof value === 'string') {
          return value.trim().length > 0;
        }
        if (typeof value === 'object') {
          return Object.keys(value).length > 0;
        }
        return true;
      });

      if (result && hasMeaningfulData) {
        nfcLogger.success('Data parsed successfully', Object.keys(result));
        const response = {
          success: true,
          raw: tag,
          parsedFields: result,
          cardType: this.options.cardType,
          timestamp: new Date().toISOString(),
        };

        nfcLogger.step('NFC_READ_SUCCESS', { fields: Object.keys(result) });

        if (this.callbacks.onResult) {
          nfcLogger.info('Calling onResult callback with parsed data');
          this.callbacks.onResult(response);
        }

        const operation = this.createSuccessOperation(result, tag);
        await this.dispatchIdScanOperation(operation);
      } else {
        nfcLogger.warn('No meaningful data parsed from tag');
        throw new Error('Kart verisi okunamadı. Desteklenmeyen kart tipi olabilir.');
      }

    } catch (error) {
      this.handleError(error);
    } finally {
      if (connectionTech) {
        try {
          nfcLogger.info(`Closing ${selectedTech} technology connection...`);
          await NfcManager.close();
          nfcLogger.success('Technology connection closed');
        } catch (closeError) {
          nfcLogger.warn('Failed to close technology connection:', closeError.message);
        }

        try {
          nfcLogger.info('Cancelling technology request (cleanup)...');
          await NfcManager.cancelTechnologyRequest();
          nfcLogger.success('Technology request cancelled');
        } catch (cancelError) {
          nfcLogger.warn('Failed to cancel technology request:', cancelError.message);
        }
      }
    }
    
    ===== OKUMA İŞLEMLERİ SONU ===== */

  };

  readIsoDep = async (tag) => {
    // DEVRE DIŞI - CAN problemi nedeniyle okuma yapılmıyor
    nfcLogger.warn('readIsoDep çağrıldı ama devre dışı (CAN problemi)');
    return null;

    /* YORUM SATIRINA ALINDI
    const timeoutMs = this.options.isoDepTimeout ?? 5000;
    const isoDepPromise = this._readIsoDepInternal(tag);
    return this.withTimeout(isoDepPromise, timeoutMs, `IsoDep okuması ${timeoutMs}ms içinde tamamlanmadı`);
    */
  };

  _readIsoDepInternal = async (tag) => {
    // DEVRE DIŞI - CAN problemi nedeniyle okuma yapılmıyor
    nfcLogger.warn('_readIsoDepInternal çağrıldı ama devre dışı (CAN problemi)');
    return null;

    /* ===== TÜM ISODEP OKUMA İŞLEMLERİ YORUM SATIRINA ALINDI =====
    
    nfcLogger.step('READ_ISODEP', { tagId: tag?.id });

    try {
      nfcLogger.info('Tag is already connected via reader mode - ready for APDU commands');

      // Select application
      nfcLogger.info('Step 1: Selecting card application...');
      nfcLogger.apdu('SEND', NFC_COMMANDS.SELECT_APP);

      const selectResponse = await this.transceiveApdu(NFC_COMMANDS.SELECT_APP);

      nfcLogger.apdu('RECV', NFC_COMMANDS.SELECT_APP, selectResponse);
      nfcLogger.info('SELECT_APP response (hex):', this.bytesToHex(selectResponse));

      if (!this.isSuccessResponse(selectResponse)) {
        const sw1 = selectResponse[selectResponse.length - 2];
        const sw2 = selectResponse[selectResponse.length - 1];
        nfcLogger.error(`SELECT_APP failed with SW: ${sw1.toString(16).padStart(2, '0')}${sw2.toString(16).padStart(2, '0')}`);
        throw new Error('Kart uygulaması seçilemedi');
      }

      nfcLogger.success('Application selected successfully');

      // CRITICAL: Modern Turkish ID cards require BAC or PACE authentication
      // According to TÜBİTAK: Turkish ID cards support both BAC and PACE v2
      const hasAuthSeed = !!(this.options.mrzSeed || this.options.canNumber);
      if (hasAuthSeed) {
        const mrzSeed = this.options.mrzSeed || {};
        nfcLogger.step('AUTHENTICATION_PHASE', {
          documentNo: mrzSeed.documentNo,
          birthDate: mrzSeed.birthDate,
          expiryDate: mrzSeed.expiryDate || mrzSeed.validUntil,
          hasMrzCheckDigits: !!mrzSeed.mrzCheckDigits,
          canNumberProvided: !!this.options.canNumber
        });

        let authSuccess = false;

        // STEP 1: Detect which authentication protocol the card supports
        console.log('[NFC][Auth] Step 1: Detecting authentication protocol...');
        const protocol = await this.detectAuthenticationProtocol();
        console.log('[NFC][Auth] Detected protocol:', protocol);

        // STEP 2: Try authentication based on detected protocol
        if (protocol === 'PACE') {
          console.log('[NFC][Auth] 🎯 Card requires PACE authentication');

          if (this.options.mrzSeed?.mrzCheckDigits || this.options.canNumber) {
            console.log('[NFC][Auth] Authentication seed available - attempting PACE...');
            try {
              const paceSuccess = await this.performPACE(this.options.mrzSeed);
              if (paceSuccess) {
                authSuccess = true;
                nfcLogger.success('✅ PACE authentication successful');
              } else {
                console.warn('[NFC][Auth] ⚠️ PACE failed - trying BAC as fallback...');
                nfcLogger.warn('PACE failed - trying BAC fallback');

                if (this.options.mrzSeed) {
                  try {
                    const bacSuccess = await this.performBAC(this.options.mrzSeed);
                    if (bacSuccess) {
                      authSuccess = true;
                      console.log('[NFC][Auth] ✅ BAC fallback successful!');
                      nfcLogger.success('BAC fallback successful');
                    }
                  } catch (bacError) {
                    console.error('[NFC][Auth] ❌ BAC fallback also failed:', bacError.message);
                  }
                } else {
                  nfcLogger.warn('BAC fallback skipped - MRZ verisi mevcut değil');
                }
              }
            } catch (error) {
              console.error('[NFC][Auth] ❌ PACE authentication error:', error.message);
              console.warn('[NFC][Auth] Trying BAC as fallback...');
              nfcLogger.warn('PACE error - trying BAC fallback');

              if (this.options.mrzSeed) {
                try {
                  const bacSuccess = await this.performBAC(this.options.mrzSeed);
                  if (bacSuccess) {
                    authSuccess = true;
                    console.log('[NFC][Auth] ✅ BAC fallback successful!');
                    nfcLogger.success('BAC fallback successful');
                  }
                } catch (bacError) {
                  console.error('[NFC][Auth] ❌ BAC fallback also failed:', bacError.message);
                }
              } else {
                nfcLogger.warn('BAC fallback skipped - MRZ verisi mevcut değil');
              }
            }
          } else {
            console.error('[NFC][Auth] ❌ PACE required but no authentication seed provided');
            console.error('[NFC][Auth] Please provide mrzCheckDigits from OCR or CAN number for PACE');
            nfcLogger.warn('PACE required but neither MRZ check digits nor CAN provided');
          }
        } else {
          // BAC authentication (legacy cards)
          console.log('[NFC][Auth] Card uses BAC authentication (legacy)');
          nfcLogger.info('Step 2: Trying BAC authentication...');
          if (this.options.mrzSeed) {
            try {
              const bacSuccess = await this.performBAC(this.options.mrzSeed);
              if (!bacSuccess) {
                nfcLogger.warn('BAC authentication failed, continuing without secure channel');
              } else {
                authSuccess = true;
              }
            } catch (error) {
              console.error('[NFC][Auth] ❌ BAC authentication failed:', error.message);
              nfcLogger.warn('BAC authentication failed, continuing without secure channel');
            }
          } else {
            nfcLogger.warn('BAC authentication skipped - MRZ verisi mevcut değil');
          }
        }

        if (!authSuccess) {
          nfcLogger.warn('⚠️ No authentication succeeded - reading without secure channel');
          console.warn('[NFC][Auth] This may result in 6982 errors when reading protected data');
        }

        if (authSuccess) {
          nfcLogger.success('Authentication phase completed - secure channel established');
        } else {
          nfcLogger.warn('No authentication succeeded - reading without secure channel');
        }
      } else {
        nfcLogger.warn('No MRZ seed provided - skipping authentication (may fail on modern cards)');
      }

      // Read personal data
      nfcLogger.step('DATA_READING_PHASE');
      const useSecureMessaging = !!(this.bacSession?.isEstablished);
      nfcLogger.info('Secure messaging enabled:', useSecureMessaging);

      nfcLogger.info('Step 3a: Reading personal data...');
      nfcLogger.apdu('SEND', NFC_COMMANDS.READ_PERSONAL);
      const personalData = await this.transceiveApdu(NFC_COMMANDS.READ_PERSONAL, { secure: useSecureMessaging });
      nfcLogger.apdu('RECV', NFC_COMMANDS.READ_PERSONAL, personalData);
      nfcLogger.info('Personal data response length:', personalData?.length);

      nfcLogger.info('Step 3b: Reading ID data...');
      nfcLogger.apdu('SEND', NFC_COMMANDS.READ_ID);
      const idData = await this.transceiveApdu(NFC_COMMANDS.READ_ID, { secure: useSecureMessaging });
      nfcLogger.apdu('RECV', NFC_COMMANDS.READ_ID, idData);
      nfcLogger.info('ID data response length:', idData?.length);

      nfcLogger.info('Step 3c: Reading birth data...');
      nfcLogger.apdu('SEND', NFC_COMMANDS.READ_BIRTH);
      const birthData = await this.transceiveApdu(NFC_COMMANDS.READ_BIRTH, { secure: useSecureMessaging });
      nfcLogger.apdu('RECV', NFC_COMMANDS.READ_BIRTH, birthData);
      nfcLogger.info('Birth data response length:', birthData?.length);

      // Parse data
      nfcLogger.step('DATA_PARSING_PHASE');
      nfcLogger.info('Parsing card data...');
      const parsed = this.parseCardData({
        personal: personalData,
        id: idData,
        birth: birthData,
      });

      nfcLogger.info('Parsed data fields:', Object.keys(parsed));
      nfcLogger.success('IsoDep read completed successfully');

      return parsed;

    } catch (error) {
      nfcLogger.error('IsoDep read failed', {
        message: error.message,
        stack: error.stack
      });

      // Re-throw to let handleError process it properly
      throw error;
    }
    
    ===== ISODEP OKUMA İŞLEMLERİ SONU ===== */
  };

  // PACE v2 authentication implementation
  performPACE = async (mrzSeed) => {
    // DEVRE DIŞI - CAN problemi nedeniyle PACE çalışmıyor
    nfcLogger.warn('performPACE çağrıldı ama devre dışı (CAN problemi)');
    return false;

    /* ===== PACE AUTHENTICATION YORUM SATIRINA ALINDI =====
    
    try {
      console.log('[NFC][PACE] Starting PACE v2 authentication...');
      console.log('[NFC][PACE] MRZ Seed:', {
        tcNo: mrzSeed?.tcNo ? '***' + mrzSeed.tcNo.slice(-4) : 'missing',
        birthDate: mrzSeed?.birthDate || 'missing',
        documentNo: mrzSeed?.documentNo || 'missing',
        canProvided: !!this.options.canNumber
      });

      // Import PACE protocol module
      console.log('[NFC][PACE] Loading PACE protocol module...');
      const PACEModule = require('./PACEProtocol');
      console.log('[NFC][PACE] PACE module loaded:', !!PACEModule);
      console.log('[NFC][PACE] performPACEAuthentication available:', !!PACEModule.performPACEAuthentication);

      const { performPACEAuthentication } = PACEModule;

      // Prepare MRZ data for PACE
      const mrzData = {
        documentNo: mrzSeed?.documentNo || mrzSeed?.serialNo,
        birthDate: mrzSeed?.birthDate,
        expiryDate: mrzSeed?.validUntil || mrzSeed?.expiryDate,
        // CRITICAL: Pass MRZ check digits from OCR
        mrzCheckDigits: mrzSeed?.mrzCheckDigits,
        // CRITICAL: Pass CAN for CAN-based PACE authentication
        canNumber: this.options.canNumber
      };

      console.log('[NFC][PACE] Prepared MRZ data:', {
        documentNo: mrzData.documentNo,
        birthDate: mrzData.birthDate,
        expiryDate: mrzData.expiryDate || 'not provided',
        mrzCheckDigits: mrzData.mrzCheckDigits,
        canNumber: mrzData.canNumber ? '******' : 'not provided'
      });

      // Perform PACE authentication
      console.log('[NFC][PACE] Performing ICAO 9303 PACE v2 handshake...');
      const session = await performPACEAuthentication(mrzData);

      if (session && session.isEstablished) {
        console.log('[NFC][PACE] ✅ PACE authentication successful!');
        console.log('[NFC][PACE] Variant:', session.variant || 'unknown');
        console.log('[NFC][PACE] OID:', session.oid || 'unknown');
        console.log('[NFC][PACE] Secure channel established');

        // Store session for secure messaging
        this.paceSession = session;
        // Also set bacSession for compatibility with existing code
        this.bacSession = session;

        return true;
      } else {
        console.error('[NFC][PACE] PACE session establishment failed');
        return false;
      }

    } catch (error) {
      console.error('[NFC][PACE] Authentication error:', error);
      console.error('[NFC][PACE] Error message:', error.message);
      console.error('[NFC][PACE] Error stack:', error.stack);

      // Provide helpful error messages
      if (error.message.includes('MSE:Set AT failed')) {
        console.error('[NFC][PACE] ❌ Card does not support PACE or wrong cipher suite');
      } else if (error.message.includes('GA Step')) {
        console.error('[NFC][PACE] ❌ General Authenticate failed - check MRZ data');
      }

      return false;
    }
    
    ===== PACE AUTHENTICATION SONU ===== */
  };

  // Parse PACEInfo from EF.CardAccess SecurityInfos
  _parsePACEInfo = (data) => {
    try {
      console.log('[NFC][Protocol] Parsing SecurityInfos for PACEInfo...');

      // Simple DER/ASN.1 parser to extract OIDs
      // EF.CardAccess contains SecurityInfos (SET OF SecurityInfo)
      // PACEInfo has OID starting with 0.4.0.127.0.7.2.2.4

      const hexStr = Buffer.from(data).toString('hex');

      // Look for PACE OID patterns in hex
      // 0.4.0.127.0.7.2.2.4.x.y = 04 00 7F 00 07 02 02 04 ...
      const paceOidPattern = '04007f000702020';
      const index = hexStr.indexOf(paceOidPattern);

      if (index !== -1) {
        const oidHex = hexStr.substring(index, index + 24);
        console.log('[NFC][Protocol] 🎯 Found PACE OID in EF.CardAccess:', oidHex);

        // Try to identify the variant
        if (oidHex.includes('040202')) {
          console.log('[NFC][Protocol] → PACE ECDH-GM-AES128 (most common)');
        } else if (oidHex.includes('040203')) {
          console.log('[NFC][Protocol] → PACE ECDH-GM-AES192');
        } else if (oidHex.includes('040204')) {
          console.log('[NFC][Protocol] → PACE ECDH-GM-AES256');
        }

        // TODO: Store this OID for use in performPACE
        this.detectedPACEOID = oidHex;
      } else {
        console.warn('[NFC][Protocol] ⚠️ Could not find PACE OID in SecurityInfos');
        console.warn('[NFC][Protocol] Will try default OID: 0.4.0.127.0.7.2.2.4.2.2');
      }
    } catch (error) {
      console.error('[NFC][Protocol] Error parsing PACEInfo:', error.message);
    }
  };

  // Check if card supports PACE or BAC
  detectAuthenticationProtocol = async () => {
    // DEVRE DIŞI - CAN problemi nedeniyle protokol tespiti devre dışı
    nfcLogger.warn('detectAuthenticationProtocol çağrıldı ama devre dışı (CAN problemi)');
    return 'BAC';

    /* ===== PROTOCOL DETECTION YORUM SATIRINA ALINDI =====
    
    try {
      console.log('[NFC][Protocol] Detecting card authentication protocol...');

      // Try to read EF.CardAccess (0x011C) - contains PACE info
      // APDU: SELECT FILE by FID
      const selectCardAccess = [
        0x00, 0xA4, 0x02, 0x0C,  // CLA INS P1 P2
        0x02,                      // Lc = 2 bytes
        0x01, 0x1C                 // FID = 0x011C (EF.CardAccess)
      ];

      console.log('[NFC][Protocol] Trying to select EF.CardAccess (0x011C)...');
      console.log('[NFC][Protocol] SELECT command:', Buffer.from(selectCardAccess).toString('hex'));
      const selectResponse = await NfcManager.transceive(selectCardAccess);
      const selectSW = this.getStatusWord(selectResponse);
      console.log('[NFC][Protocol] SELECT EF.CardAccess response SW:', selectSW);

      if (selectSW === '9000') {
        console.log('[NFC][Protocol] ✅ EF.CardAccess found - card supports PACE');

        // Read EF.CardAccess content to find supported PACE variants
        // Try reading up to 256 bytes
        const readCardAccess = [
          0x00, 0xB0, 0x00, 0x00,  // READ BINARY from offset 0
          0x00                      // Le = 256 bytes (max)
        ];

        try {
          const readResponse = await NfcManager.transceive(readCardAccess);
          const readSW = this.getStatusWord(readResponse);

          if (readSW === '9000' || readSW.startsWith('61')) {
            const data = readResponse.slice(0, -2);
            console.log('[NFC][Protocol] 📄 EF.CardAccess content length:', data.length);
            console.log('[NFC][Protocol] EF.CardAccess hex:', Buffer.from(data).toString('hex'));

            // Parse SecurityInfos to find PACEInfo
            this._parsePACEInfo(data);

            console.log('[NFC][Protocol] 🎯 PACE is supported and likely REQUIRED');
            return 'PACE';
          } else {
            console.warn('[NFC][Protocol] EF.CardAccess selected but cannot read (SW:', readSW + ')');
            console.warn('[NFC][Protocol] Card likely requires PACE before reading EF.CardAccess');
            return 'PACE';
          }
        } catch (error) {
          console.warn('[NFC][Protocol] Error reading EF.CardAccess:', error.message);
          console.warn('[NFC][Protocol] Assuming PACE is required');
          return 'PACE';
        }
      } else {
        const paceRequiredStatuses = ['6982', '6985'];
        if (paceRequiredStatuses.includes(selectSW)) {
          console.warn('[NFC][Protocol] ⚠️ EF.CardAccess selection blocked with SW:', selectSW);
          console.warn('[NFC][Protocol] This usually means the card REQUIRES PACE before allowing reads');
          console.warn('[NFC][Protocol] Treating protocol as PACE despite SELECT failure');
          return 'PACE';
        }

        console.log('[NFC][Protocol] EF.CardAccess not accessible (SW:', selectSW + ')');
        console.log('[NFC][Protocol] Card likely uses BAC (older standard)');
        return 'BAC';
      }
    } catch (error) {
      console.log('[NFC][Protocol] Error detecting protocol:', error.message);
      console.log('[NFC][Protocol] Assuming BAC (fallback)');
      return 'BAC';
    }
    
    ===== PROTOCOL DETECTION SONU ===== */
  };

  // Full BAC authentication implementation
  performBAC = async (mrzSeed) => {
    // DEVRE DIŞI - CAN problemi nedeniyle BAC çalışmıyor
    nfcLogger.warn('performBAC çağrıldı ama devre dışı (CAN problemi)');
    return false;

    /* ===== BAC AUTHENTICATION YORUM SATIRINA ALINDI =====
    
    try {
      console.log('[NFC][BAC] Starting BAC authentication...');
      console.log('[NFC][BAC] MRZ Seed:', {
        tcNo: mrzSeed.tcNo ? '***' + mrzSeed.tcNo.slice(-4) : 'missing',
        birthDate: mrzSeed.birthDate || 'missing',
        documentNo: mrzSeed.documentNo || 'missing'
      });

      // Validate MRZ seed - BAC requires birthDate and documentNo
      if (!mrzSeed.documentNo && !mrzSeed.serialNo) {
        console.error('[NFC][BAC] ❌ ERROR: documentNo or serialNo is required for BAC');
        console.error('[NFC][BAC] Please provide MRZ data from OCR (document number)');
        throw new Error('BAC authentication requires documentNo. Please scan the document first with OCR.');
      }

      if (!mrzSeed.birthDate) {
        console.error('[NFC][BAC] ❌ ERROR: birthDate is required for BAC');
        console.error('[NFC][BAC] Please provide MRZ data from OCR (birth date in format: DD.MM.YYYY or YYMMDD)');
        throw new Error('BAC authentication requires birthDate. Please scan the document first with OCR.');
      }

      // Import BAC protocol module
      const { performBACAuthentication } = require('./BACProtocol');

      // Prepare MRZ data for BAC
      const mrzData = {
        documentNo: mrzSeed.documentNo || mrzSeed.serialNo,
        birthDate: mrzSeed.birthDate,
        expiryDate: mrzSeed.validUntil || mrzSeed.expiryDate,
        // CRITICAL: Pass MRZ check digits from OCR for BAC
        mrzCheckDigits: mrzSeed.mrzCheckDigits
      };

      console.log('[NFC][BAC] Prepared MRZ data:', {
        documentNo: mrzData.documentNo,
        birthDate: mrzData.birthDate,
        expiryDate: mrzData.expiryDate || 'not provided',
        mrzCheckDigits: mrzData.mrzCheckDigits
      });

      // Perform BAC authentication
      console.log('[NFC][BAC] Performing ICAO 9303 BAC handshake...');
      const session = await performBACAuthentication(mrzData);

      if (session && session.isEstablished) {
        console.log('[NFC][BAC] ✅ BAC authentication successful!');
        console.log('[NFC][BAC] Secure channel established');

        // Store session for secure messaging
        this.bacSession = session;

        return true;
      } else {
        console.error('[NFC][BAC] BAC session establishment failed');
        return false;
      }

    } catch (error) {
      console.error('[NFC][BAC] Authentication error:', error);
      console.error('[NFC][BAC] Error message:', error.message);
      console.error('[NFC][BAC] Error stack:', error.stack);

      // Provide helpful error messages
      if (error.message.includes('Incorrect MRZ data')) {
        console.error('[NFC][BAC] ❌ MRZ data mismatch - OCR might have errors');
        console.error('[NFC][BAC] Check: Document number, birth date, expiry date');
      } else if (error.message.includes('GET CHALLENGE failed')) {
        console.error('[NFC][BAC] ❌ Chip did not respond to challenge request');
      } else if (error.message.includes('MAC verification failed')) {
        console.error('[NFC][BAC] ❌ MAC verification failed - key derivation error');
      }

      return false;
    }
    
    ===== BAC AUTHENTICATION SONU ===== */
  };

  readNdef = async (tag) => {
    // DEVRE DIŞI - CAN problemi nedeniyle NDEF okuma devre dışı
    nfcLogger.warn('readNdef çağrıldı ama devre dışı (CAN problemi)');
    return null;

    /* ===== NDEF OKUMA YORUM SATIRINA ALINDI =====
    
    try {
      // Tag already connected via reader mode
      console.log('[NFC][Ndef] Reading NDEF data...');

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
    
    ===== NDEF OKUMA SONU ===== */
  };

  readMifareClassic = async (tag) => {
    // DEVRE DIŞI - CAN problemi nedeniyle Mifare okuma devre dışı
    nfcLogger.warn('readMifareClassic çağrıldı ama devre dışı (CAN problemi)');
    return null;

    /* ===== MIFARE CLASSIC OKUMA YORUM SATIRINA ALINDI =====
    
    try {
      // Tag already connected via reader mode
      console.log('[NFC][Mifare] Reading Mifare Classic...');

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
    
    ===== MIFARE CLASSIC OKUMA SONU ===== */
  };

  readNfcA = async (tag) => {
    // DEVRE DIŞI - CAN problemi nedeniyle NFC-A okuma devre dışı
    nfcLogger.warn('readNfcA çağrıldı ama devre dışı (CAN problemi)');
    return null;

    /* ===== NFC-A OKUMA YORUM SATIRINA ALINDI =====
    
    try {
      // Tag already connected via reader mode
      console.log('[NFC][NfcA] Reading NFC-A...');

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
    
    ===== NFC-A OKUMA SONU ===== */
  };

  parseCardData = (rawData) => {
    // DEVRE DIŞI - CAN problemi nedeniyle parsing devre dışı
    nfcLogger.warn('parseCardData çağrıldı ama devre dışı (CAN problemi)');
    return {};

    /* ===== PARSE CARD DATA YORUM SATIRINA ALINDI =====
    
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
    
    ===== PARSE CARD DATA SONU ===== */
  };

  bytesToString = (bytes) => {
    if (!bytes) return '';
    return String.fromCharCode.apply(null, bytes);
  };

  bytesToHex = (bytes = []) => {
    if (!bytes || typeof bytes[Symbol.iterator] !== 'function') {
      return '';
    }

    return Array.from(bytes, byte => ('0' + (byte & 0xFF).toString(16)).slice(-2)).join('');
  };

  /**
   * Extract SW1SW2 from APDU response as hex string (e.g., '9000')
   */
  getStatusWord = (response) => {
    if (!response || response.length < 2) {
      return '0000';
    }

    const sw1 = response[response.length - 2];
    const sw2 = response[response.length - 1];
    return sw1.toString(16).padStart(2, '0') + sw2.toString(16).padStart(2, '0');
  };

  transceiveApdu = async (command, options = {}) => {
    const { secure = false } = options;
    const shouldSecure = secure && this.bacSession?.isEstablished;

    const cmdHex = Array.isArray(command) ? command.map(b => b.toString(16).padStart(2, '0')).join(' ') : 'unknown';
    nfcLogger.info(`Transceiving APDU (secure: ${shouldSecure})`);
    nfcLogger.info('Command:', cmdHex);

    try {
      let response;

      if (shouldSecure) {
        nfcLogger.info('Using secure messaging - wrapping APDU...');
        const wrapped = this.bacSession.wrapAPDU(command);
        nfcLogger.info('Wrapped command:', Array.isArray(wrapped) ? wrapped.map(b => b.toString(16).padStart(2, '0')).join(' ') : 'unknown');

        nfcLogger.info('Sending wrapped APDU to card...');
        response = await NfcManager.transceive(wrapped);
        nfcLogger.info('Received wrapped response, length:', response?.length);

        nfcLogger.info('Unwrapping response...');
        const unwrapped = this.bacSession.unwrapAPDU(response);
        nfcLogger.info('Unwrapped response:', Array.isArray(unwrapped) ? unwrapped.map(b => b.toString(16).padStart(2, '0')).join(' ') : 'unknown');
        return unwrapped;
      }

      nfcLogger.info('Sending plain APDU to card...');
      response = await NfcManager.transceive(command);
      const respHex = Array.isArray(response) ? response.map(b => b.toString(16).padStart(2, '0')).join(' ') : 'unknown';
      nfcLogger.info('Received response:', respHex);
      nfcLogger.info('Response length:', response?.length);

      return response;
    } catch (error) {
      nfcLogger.error('APDU transceive failed', {
        secure: shouldSecure,
        command: cmdHex,
        errorMessage: error.message,
        errorType: error.name
      });
      throw error;
    }
  };

  isSuccessResponse = (response) => {
    if (!response || response.length < 2) {
      nfcLogger.warn('Invalid response - too short or null');
      return false;
    }

    const sw1 = response[response.length - 2];
    const sw2 = response[response.length - 1];
    const swHex = `${sw1.toString(16).padStart(2, '0')}${sw2.toString(16).padStart(2, '0')}`;
    nfcLogger.info('Checking status word (SW):', swHex);

    // Check for PACE/BAC requirement (CRITICAL for modern Turkish ID cards)
    if (sw1 === 0x69 && sw2 === 0x82) {
      nfcLogger.error('Status: Security not satisfied (6982) - PACE/BAC required');
      throw new Error(NFC_ERROR_CODES.SECURITY_NOT_SATISFIED);
    }

    // Check for BAC requirement
    if (sw1 === 0x63 && sw2 === 0x00) {
      nfcLogger.error('Status: BAC required (6300)');
      throw new Error(NFC_ERROR_CODES.BAC_REQUIRED);
    }

    // Check for authentication failure
    if (sw1 === 0x69 && sw2 === 0x88) {
      nfcLogger.error('Status: Authentication failed (6988)');
      throw new Error(NFC_ERROR_CODES.AUTHENTICATION_FAILED);
    }

    // Check for file not found (unsupported card)
    if (sw1 === 0x6A && sw2 === 0x82) {
      nfcLogger.error('Status: File not found (6A82) - unsupported card');
      throw new Error(NFC_ERROR_CODES.CARD_NOT_SUPPORTED);
    }

    const isSuccess = sw1 === 0x90 && sw2 === 0x00;
    if (isSuccess) {
      nfcLogger.success('Status: Success (9000)');
    } else {
      nfcLogger.warn(`Status: Unknown status word (${swHex})`);
    }

    return isSuccess;
  };

  handleError = (error) => {
    nfcLogger.step('ERROR_HANDLER', {
      errorMessage: error.message,
      errorType: typeof error,
      errorName: error.name
    });

    let errorMessage = error.message || 'NFC okuma hatası';
    let errorCode = 'NFC_READ_ERROR';
    let fallbackOption = null;

    nfcLogger.error('Processing error', {
      message: error.message,
      type: typeof error,
      stack: error.stack?.substring(0, 200) // İlk 200 karakter
    });

    // Detect PACE requirement and provide user-friendly messages
    if (error.message === NFC_ERROR_CODES.SECURITY_NOT_SATISFIED ||
      error.message === NFC_ERROR_CODES.PACE_REQUIRED ||
      error.message?.includes('6982') ||
      error.message?.includes('Security not satisfied')) {
      errorCode = NFC_ERROR_CODES.PACE_REQUIRED;
      errorMessage = '⚠️ Modern Kimlik Kartı Tespit Edildi\n\n' +
        'Bu kimlik kartı BAC/PACE güvenlik protokolü gerektiriyor.\n\n' +
        '❌ Sorun: Kart algılandı ancak güvenlik doğrulaması yapılamadı.\n\n' +
        '🔧 Geçici Çözüm: Manuel veri girişi kullanabilirsiniz.';
      fallbackOption = {
        type: 'MANUAL_MRZ_ENTRY',
        title: 'Manuel Veri Girişi',
        message: 'Kimlik kartınızın arka yüzündeki MRZ kodunu manuel olarak girebilirsiniz.',
        action: 'MRZ Girişi Yap',
      };
    } else if (error.message === NFC_ERROR_CODES.BAC_REQUIRED ||
      error.message?.includes('6300') ||
      error.message?.includes('BAC')) {
      errorCode = NFC_ERROR_CODES.BAC_REQUIRED;
      errorMessage = '🔐 Güvenlik Doğrulaması Gerekli\n\n' +
        'Bu kart BAC (Basic Access Control) gerektiriyor.\n\n' +
        'Kart algılandı ancak güvenlik anahtarları türetilemedi.';
      fallbackOption = {
        type: 'MANUAL_MRZ_ENTRY',
        title: 'Manuel Veri Girişi',
        message: 'MRZ kodunu manuel olarak girebilirsiniz.',
        action: 'MRZ Girişi Yap',
      };
    } else if (error.message === NFC_ERROR_CODES.AUTHENTICATION_FAILED ||
      error.message?.includes('6988')) {
      errorCode = NFC_ERROR_CODES.AUTHENTICATION_FAILED;
      errorMessage = '❌ Kimlik Doğrulama Başarısız\n\n' +
        'Kart güvenlik protokolünü kabul etmedi.\n\n' +
        'Lütfen kartı tekrar okutun veya farklı bir kart deneyin.';
    } else if (error.message === NFC_ERROR_CODES.CARD_NOT_SUPPORTED ||
      error.message?.includes('6A82')) {
      errorCode = NFC_ERROR_CODES.CARD_NOT_SUPPORTED;
      errorMessage = '🚫 Desteklenmeyen Kart\n\n' +
        'Bu kart tipi desteklenmiyor veya kart bozuk olabilir.';
    } else if (error.message && error.message.includes('timeout')) {
      errorCode = NFC_ERROR_CODES.TIMEOUT;
      errorMessage = '⏱️ Zaman Aşımı\n\n' +
        'Okuma çok uzun sürdü.\n\n' +
        'Kartı cihazın arkasında 3-5 saniye sabit tutun.';
    } else if (error.message && error.message.includes('Tag was lost')) {
      errorCode = NFC_ERROR_CODES.TAG_LOST;
      errorMessage = '📱 Kart Hareket Etti\n\n' +
        'Okuma sırasında kart hareket etti.\n\n' +
        'Lütfen kartı sabit tutarak tekrar deneyin.';
    } else if (error.message && error.message.includes('cancelled')) {
      errorCode = 'NFC_CANCELLED';
      errorMessage = '❌ İşlem İptal Edildi\n\n' +
        'NFC okuma kullanıcı tarafından iptal edildi.';
    }

    const errorResponse = {
      success: false,
      error: errorMessage,
      code: errorCode,
      technicalError: error.message, // For debugging
      technicalStack: error.stack, // For debugging
      fallback: fallbackOption,
      timestamp: new Date().toISOString(),
    };

    nfcLogger.step('ERROR_RESPONSE', {
      errorCode,
      userMessage: errorMessage,
      hasFallback: !!fallbackOption
    });

    if (this.callbacks.onError) {
      nfcLogger.info('Calling onError callback with error response');
      this.callbacks.onError(errorResponse);
    } else {
      nfcLogger.warn('No error callback registered!');
    }

    const failureOperation = this.createFailureOperation(errorResponse);
    this.dispatchIdScanOperation(failureOperation);
  };
}

// React Component for NFC UI
export const NFCReaderScreen = ({ navigation, route }) => {
  const [isScanning, setIsScanning] = useState(false);
  const [nfcResult, setNfcResult] = useState(null);
  const [error, setError] = useState(null);
  const [showFallbackModal, setShowFallbackModal] = useState(false);
  const [fallbackErrorInfo, setFallbackErrorInfo] = useState({});
  const [logs, setLogs] = useState([]);
  const pulseAnim = useSharedValue(1);
  const nfcModule = useRef(new NFCReaderModule()).current;
  const returnTo = route?.params?.returnTo;
  const returnSourceStep = route?.params?.returnParams?.sourceStep;
  const autoStart = route?.params?.autoStart;
  const mrzSeed = route?.params?.mrzSeed;

  const addLog = useCallback((message) => {
    console.log('[NFC LOG]', message);
    setLogs((prev) => {
      const timestamp = new Date().toLocaleTimeString('tr-TR');
      const entry = `[${timestamp}] ${message}`;
      return [entry, ...prev].slice(0, 50);
    });
  }, []);

  const forwardStepResult = useCallback(
    (payload) => {
      if (returnTo && returnSourceStep) {
        navigation.navigate({
          name: returnTo,
          params: {
            returnParams: {
              sourceStep: returnSourceStep,
              stepResult: payload,
            },
          },
          merge: true,
        });

        if (navigation.canGoBack()) {
          navigation.goBack();
        }
      }
    },
    [navigation, returnTo, returnSourceStep]
  );

  useEffect(() => {
    // Setup callbacks
    nfcModule.onNFCResult((result) => {
      setNfcResult(result);
      setIsScanning(false);
      addLog('NFC okuma başarılı. Veriler alındı.');
      Vibration.vibrate([100, 200, 100]);
    });

    nfcModule.onNFCError((errorResponse) => {
      setError(errorResponse.error);
      setIsScanning(false);
      addLog(`Hata: ${errorResponse.error}`);

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
      addLog('NFC dinleme modu başlatıldı.');
      startPulseAnimation();
    });

    nfcModule.onNFCStopped(() => {
      setIsScanning(false);
      addLog('NFC dinleme modu durduruldu.');
    });

    // Check NFC on mount
    checkNFC();

    // Cleanup on unmount
    return () => {
      nfcModule.stopNFC();
      // Cleanup event listeners based on platform
      if (isIOS) {
        nfcModule.cleanupIOSEventListeners();
      } else if (isAndroid) {
        nfcModule.cleanupAndroidEventListeners();
      }
    };
  }, [addLog, nfcModule]);

  useEffect(() => {
    if (autoStart && !isScanning) {
      addLog('OCR’den gelen MRZ verisi ile NFC başlatılıyor...');
      startScanning();
    }
  }, [autoStart, isScanning, addLog]);

  useEffect(() => {
    if (returnTo && returnSourceStep && nfcResult) {
      const summary = {
        tcNo: nfcResult?.parsedFields?.tcNo || null,
        fullName: nfcResult?.parsedFields?.fullName || null,
        birthDate: nfcResult?.parsedFields?.birthDate || null,
      };

      forwardStepResult({
        success: nfcResult.success !== false,
        timestamp: nfcResult.timestamp || new Date().toISOString(),
        data: nfcResult,
        summary,
      });
    }
  }, [returnTo, returnSourceStep, nfcResult, forwardStepResult]);

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
    addLog('NFC okuma başlatılıyor...');
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
    pulseAnim.value = withRepeat(
      withTiming(1.2, { duration: 1000 }),
      -1,
      true
    );
  };

  const animatedNfcIconStyle = useAnimatedStyle(() => ({
    transform: [{ scale: pulseAnim.value }]
  }));

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
      <Animated.View style={[styles.nfcIcon, animatedNfcIconStyle]}>
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
    </View >
  );

  const renderLogs = () => (
    <View style={styles.logContainer}>
      <Text style={styles.logTitle}>NFC Debug Logları</Text>
      {logs.length === 0 ? (
        <Text style={styles.logEmpty}>Henüz log yok.</Text>
      ) : (
        <ScrollView style={styles.logList}>
          {logs.map((log, index) => (
            <Text key={`${log}-${index}`} style={styles.logItem}>
              {log}
            </Text>
          ))}
        </ScrollView>
      )}
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
      {renderResult()}
      {renderLogs()}

      <NFCFallbackModal
        visible={showFallbackModal}
        onMRZEntered={handleMRZEntered}
        onCancel={handleFallbackCancel}
        errorInfo={fallbackErrorInfo}
        initialMRZData={mrzSeed?.data || mrzSeed}
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
    fontSize: 16,
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
    marginTop: 20,
    backgroundColor: '#fff',
    borderRadius: 16,
    padding: 20,
    marginHorizontal: 20,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.25,
    shadowRadius: 3.84,
    elevation: 5,
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
  logContainer: {
    marginTop: 20,
    marginHorizontal: 20,
    backgroundColor: '#0f172a',
    borderRadius: 16,
    padding: 16,
  },
  logTitle: {
    color: '#93c5fd',
    fontSize: 14,
    fontWeight: '600',
    marginBottom: 8,
  },
  logEmpty: {
    color: '#cbd5f5',
    fontSize: 12,
  },
  logList: {
    maxHeight: 160,
  },
  logItem: {
    color: '#e2e8f0',
    fontSize: 12,
    marginBottom: 4,
  },
});

export { NFC_ERROR_CODES, NFCReaderModule, IdScanOperation };
export default NFCReaderScreen;
