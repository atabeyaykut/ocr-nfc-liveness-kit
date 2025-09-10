/**
 * NFC Reader Module
 * Handles NFC card reading functionality for mobile SDK
 */

import { Platform, Alert } from 'react-native';
import NfcManager, { NfcTech, Ndef } from 'react-native-nfc-manager';
import { Logger } from '../../utils/logger';
import { PermissionManager } from '../../utils/permissions';

// NFC Status Constants
export const NFC_STATUS = {
  IDLE: 'idle',
  INITIALIZING: 'initializing',
  READY: 'ready',
  SCANNING: 'scanning',
  READING: 'reading',
  PROCESSING: 'processing',
  SUCCESS: 'success',
  ERROR: 'error'
};

// NFC Configuration
export const NFC_CONFIG = {
  timeout: 30000, // 30 seconds timeout
  alertMessage: 'Lütfen kimliğinizi telefonun arkasına yaklaştırın.',
  technologies: [NfcTech.IsoDep, NfcTech.Ndef, NfcTech.MifareClassic],
  enableReaderMode: true,
  readerModeFlags: Platform.OS === 'android' ? 
    NfcManager.FLAG_READER_NFC_A | NfcManager.FLAG_READER_NFC_B : undefined
};

class NFCReader {
  constructor(options = {}) {
    this.status = NFC_STATUS.IDLE;
    this.config = { ...NFC_CONFIG, ...options };
    this.isNFCSupported = false;
    this.isNFCEnabled = false;
    this.currentSession = null;
    this.readData = null;
    
    // Callback functions
    this.onSuccess = options.onSuccess || null;
    this.onError = options.onError || null;
    this.onStatusChange = options.onStatusChange || null;
    this.onProgress = options.onProgress || null;
  }

  /**
   * Initialize NFC system and check device support
   * @returns {Promise<boolean>} - Success status
   */
  async startNFC() {
    try {
      Logger.info('Starting NFC initialization...');
      this._updateStatus(NFC_STATUS.INITIALIZING);

      // Check if NFC is supported on device
      const isSupported = await this._checkNFCSupport();
      if (!isSupported) {
        const error = new Error('NFC not supported on this device');
        this._handleError(error);
        return false;
      }

      // Check if NFC is enabled
      const isEnabled = await this._checkNFCEnabled();
      if (!isEnabled) {
        const error = new Error('NFC is disabled. Please enable NFC in device settings.');
        this._handleError(error);
        return false;
      }

      // Request necessary permissions
      const hasPermissions = await this._requestPermissions();
      if (!hasPermissions) {
        const error = new Error('NFC permissions denied');
        this._handleError(error);
        return false;
      }

      // Initialize NFC Manager
      await NfcManager.start();
      
      this.isNFCSupported = true;
      this.isNFCEnabled = true;
      this._updateStatus(NFC_STATUS.READY);
      
      Logger.info('NFC initialization completed successfully');
      return true;

    } catch (error) {
      Logger.error('NFC initialization failed:', error.message);
      this._handleError(error);
      return false;
    }
  }

  /**
   * Start NFC data reading process
   * @param {object} options - Reading options {timeout, alertMessage}
   * @returns {Promise<object>} - Read NFC data
   */
  async readNFCData(options = {}) {
    try {
      if (this.status !== NFC_STATUS.READY) {
        throw new Error('NFC not ready. Please call startNFC() first.');
      }

      const readOptions = { ...this.config, ...options };
      Logger.info('Starting NFC data reading...', { timeout: readOptions.timeout });
      
      this._updateStatus(NFC_STATUS.SCANNING);
      
      // Show user guidance
      if (this.onProgress) {
        this.onProgress('Lütfen kimliğinizi telefonun arkasına yaklaştırın.');
      }

      // For now, return mock data after a delay to simulate NFC reading
      const mockData = await this._readMockNFCData(readOptions);
      
      this.readData = mockData;
      this._updateStatus(NFC_STATUS.SUCCESS);
      
      Logger.info('NFC data reading completed successfully', { 
        dataFields: Object.keys(mockData).length 
      });

      if (this.onSuccess) {
        this.onSuccess(mockData);
      }

      return mockData;

    } catch (error) {
      Logger.error('NFC data reading failed:', error.message);
      this._updateStatus(NFC_STATUS.ERROR);
      this._handleError(error);
      throw error;
    }
  }

  /**
   * Stop NFC operations and cleanup
   */
  async stopNFC() {
    try {
      Logger.info('Stopping NFC operations...');
      
      // Cancel any ongoing NFC operations
      if (this.currentSession) {
        await NfcManager.cancelTechnologyRequest();
        this.currentSession = null;
      }

      // Stop NFC Manager
      await NfcManager.stop();
      
      this._updateStatus(NFC_STATUS.IDLE);
      this.readData = null;
      
      Logger.info('NFC operations stopped successfully');

    } catch (error) {
      Logger.error('Error stopping NFC:', error.message);
      this._handleError(error);
    }
  }

  /**
   * Get current NFC status
   * @returns {string} - Current status
   */
  getStatus() {
    return this.status;
  }

  /**
   * Get last read NFC data
   * @returns {object|null} - Last read data
   */
  getLastReadData() {
    return this.readData;
  }

  /**
   * Reset NFC reader state
   */
  reset() {
    this._updateStatus(NFC_STATUS.IDLE);
    this.readData = null;
    this.currentSession = null;
    Logger.info('NFC reader reset');
  }

  /**
   * Check if device supports NFC
   * @private
   * @returns {Promise<boolean>}
   */
  async _checkNFCSupport() {
    try {
      const isSupported = await NfcManager.isSupported();
      Logger.info('NFC support check:', { isSupported });
      return isSupported;
    } catch (error) {
      Logger.error('NFC support check failed:', error.message);
      return false;
    }
  }

  /**
   * Check if NFC is enabled on device
   * @private
   * @returns {Promise<boolean>}
   */
  async _checkNFCEnabled() {
    try {
      const isEnabled = await NfcManager.isEnabled();
      Logger.info('NFC enabled check:', { isEnabled });
      return isEnabled;
    } catch (error) {
      Logger.error('NFC enabled check failed:', error.message);
      return false;
    }
  }

  /**
   * Request necessary permissions for NFC
   * @private
   * @returns {Promise<boolean>}
   */
  async _requestPermissions() {
    try {
      // NFC permissions are automatically granted on most devices
      // but we can check for other related permissions
      Logger.info('Checking NFC permissions...');
      
      if (Platform.OS === 'android') {
        // Android NFC permissions are declared in manifest
        return true;
      } else if (Platform.OS === 'ios') {
        // iOS Core NFC permissions
        return true;
      }
      
      return true;
    } catch (error) {
      Logger.error('NFC permission request failed:', error.message);
      return false;
    }
  }

  /**
   * Read mock NFC data for testing purposes
   * @private
   * @param {object} options - Reading options
   * @returns {Promise<object>} - Mock NFC data
   */
  async _readMockNFCData(options) {
    return new Promise((resolve, reject) => {
      // Simulate NFC reading delay
      const readingDelay = 2000 + Math.random() * 1000; // 2-3 seconds
      
      this._updateStatus(NFC_STATUS.READING);
      
      if (this.onProgress) {
        this.onProgress('NFC kartı algılandı, veriler okunuyor...');
      }

      setTimeout(() => {
        try {
          this._updateStatus(NFC_STATUS.PROCESSING);
          
          if (this.onProgress) {
            this.onProgress('Veriler işleniyor...');
          }

          // Mock Turkish ID card data
          const mockData = {
            cardType: 'Turkish ID Card',
            name: 'MEHMET',
            surname: 'YILMAZ',
            idNumber: '12345678901',
            birthDate: '15.06.1985',
            birthPlace: 'İSTANBUL',
            nationality: 'T.C.',
            gender: 'E',
            motherName: 'AYŞE',
            fatherName: 'ALİ',
            serialNumber: 'A01B02345',
            documentNumber: 'ABC123456',
            issueDate: '01.01.2020',
            expiryDate: '01.01.2030',
            issuingAuthority: 'ANKARA NÜFUS MÜDÜRLÜĞÜ',
            // Technical NFC data
            nfcData: {
              uid: '04:A1:B2:C3:D4:E5:F6',
              technology: 'IsoDep',
              readTime: new Date().toISOString(),
              signalStrength: Math.floor(Math.random() * 100) + 1
            },
            // Verification data
            verification: {
              isValid: true,
              checksum: 'VALID',
              digitalSignature: 'VERIFIED'
            }
          };

          Logger.info('Mock NFC data generated successfully', {
            name: mockData.name,
            surname: mockData.surname,
            idNumber: mockData.idNumber
          });

          resolve(mockData);

        } catch (error) {
          Logger.error('Mock NFC data generation failed:', error.message);
          reject(error);
        }
      }, readingDelay);
    });
  }

  /**
   * Update NFC status and notify listeners
   * @private
   * @param {string} newStatus - New status
   */
  _updateStatus(newStatus) {
    const oldStatus = this.status;
    this.status = newStatus;
    
    Logger.info('NFC status changed', { from: oldStatus, to: newStatus });
    
    if (this.onStatusChange) {
      this.onStatusChange(newStatus, oldStatus);
    }
  }

  /**
   * Handle errors and notify error callback
   * @private
   * @param {Error} error - Error object
   */
  _handleError(error) {
    this._updateStatus(NFC_STATUS.ERROR);
    
    if (this.onError) {
      this.onError(error);
    }
    
    Logger.error('NFC Error:', error.message);
  }
}

export default NFCReader;
