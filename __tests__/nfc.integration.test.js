/**
 * NFC Reader Integration Tests
 * Tests real NFC scenarios including timeout, connection errors, and device support
 */

const NFCReader = require('../modules/nfc/NFCReader');
const NFC_STATUS = NFCReader.NFC_STATUS;
const NFC_CONFIG = NFCReader.NFC_CONFIG;
const NfcManager = require('react-native-nfc-manager');
const { NfcTech } = NfcManager;
const { Logger } = require('../utils/logger');

// Mock react-native-nfc-manager
jest.mock('react-native-nfc-manager', () => ({
  start: jest.fn(),
  isSupported: jest.fn(),
  isEnabled: jest.fn(),
  requestTechnology: jest.fn(),
  getTag: jest.fn(),
  cancelTechnologyRequest: jest.fn(),
  registerTagEvent: jest.fn(),
  unregisterTagEvent: jest.fn(),
  NfcTech: {
    IsoDep: 'IsoDep',
    Ndef: 'Ndef',
    MifareClassic: 'MifareClassic',
  },
  FLAG_READER_NFC_A: 1,
  FLAG_READER_NFC_B: 2,
}));

// Mock Logger
jest.mock('../utils/logger', () => ({
  Logger: {
    info: jest.fn(),
    warn: jest.fn(),
    error: jest.fn(),
    debug: jest.fn(),
  },
}));

describe('NFC Reader Integration Tests', () => {
  let nfcReader;
  let mockOnSuccess;
  let mockOnError;
  let mockOnStatusChange;
  let mockOnProgress;

  beforeEach(() => {
    jest.clearAllMocks();

    // Setup callbacks
    mockOnSuccess = jest.fn();
    mockOnError = jest.fn();
    mockOnStatusChange = jest.fn();
    mockOnProgress = jest.fn();

    nfcReader = new NFCReader();
    nfcReader.onSuccess = mockOnSuccess;
    nfcReader.onError = mockOnError;
    nfcReader.onStatusChange = mockOnStatusChange;
    nfcReader.onProgress = mockOnProgress;

    // Default successful mocks
    NfcManager.isSupported.mockResolvedValue(true);
    NfcManager.isEnabled.mockResolvedValue(true);
    NfcManager.start.mockResolvedValue(true);
  });

  describe('Real NFC Integration Tests', () => {
    test('should successfully read real NFC tag with Turkish ID data', async () => {
      // Mock successful NFC tag reading
      const mockTag = {
        id: '04A1B2C3D4E5F6',
        techTypes: ['IsoDep'],
        type: 'iso14443_4',
        ndefMessage: [],
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue(mockTag);
      NfcManager.cancelTechnologyRequest.mockResolvedValue(true);

      // Start NFC and read data
      await nfcReader.startNFC();
      const result = await nfcReader.readNFCData({ useRealNFC: true });

      // Verify successful reading
      expect(result).toBeDefined();
      expect(result.cardType).toBe('Turkish ID Card');
      expect(result.nfcData.uid).toBe('04A1B2C3D4E5F6');
      expect(result.nfcData.technology).toBe('IsoDep');
      expect(result.verification.readMethod).toBe('NFC_REAL');
      expect(result.verification.isValid).toBe(true);

      // Verify callbacks were called
      expect(mockOnSuccess).toHaveBeenCalledWith(result);
      expect(mockOnStatusChange).toHaveBeenCalledWith(NFC_STATUS.SUCCESS, expect.any(String));
      expect(mockOnProgress).toHaveBeenCalledTimes(4); // Initial message + scanning + reading + processing

      // Verify NFC manager calls
      expect(NfcManager.requestTechnology).toHaveBeenCalledWith(
        NfcTech.IsoDep,
        {
          alertMessage: expect.any(String),
          invalidateAfterFirstRead: true,
        }
      );
      expect(NfcManager.getTag).toHaveBeenCalled();
      expect(NfcManager.cancelTechnologyRequest).toHaveBeenCalled();
    });

    test('should handle timeout error correctly', async () => {
      // Mock timeout scenario
      NfcManager.requestTechnology.mockImplementation(
        () =>
          new Promise((resolve) => {
            // Never resolve to simulate timeout
          })
      );

      await nfcReader.startNFC();

      // Test with short timeout
      const startTime = Date.now();
      await expect(
        nfcReader.readNFCData({ useRealNFC: true, timeout: 1000 })
      ).rejects.toThrow('Timeout: NFC okuma süresi aşıldı (1 saniye)');

      const elapsed = Date.now() - startTime;
      expect(elapsed).toBeGreaterThanOrEqual(1000);
      expect(elapsed).toBeLessThan(1500); // Should timeout quickly

      // Verify error callback was called
      expect(mockOnError).toHaveBeenCalledWith(
        expect.objectContaining({
          message: expect.stringContaining('Timeout'),
        })
      );
      expect(mockOnStatusChange).toHaveBeenCalledWith(NFC_STATUS.ERROR, expect.any(String));
    });

    test('should handle connection lost error', async () => {
      // Mock connection lost scenario
      NfcManager.requestTechnology.mockRejectedValue(
        new Error('NFC connection lost')
      );

      await nfcReader.startNFC();

      await expect(nfcReader.readNFCData({ useRealNFC: true })).rejects.toThrow(
        'Connection lost: NFC bağlantısı kesildi'
      );

      // Verify error handling
      expect(mockOnError).toHaveBeenCalledWith(
        expect.objectContaining({
          message: expect.stringContaining('Connection lost'),
        })
      );
      expect(mockOnStatusChange).toHaveBeenCalledWith(NFC_STATUS.ERROR, expect.any(String));
    });

    test('should handle wrong card positioning error', async () => {
      // Mock wrong positioning - no tag found
      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue(null);

      await nfcReader.startNFC();

      await expect(nfcReader.readNFCData({ useRealNFC: true })).rejects.toThrow(
        'NFC kartı okunamadı. Lütfen kartı doğru konumda tutun'
      );

      // Verify error handling
      expect(mockOnError).toHaveBeenCalledWith(
        expect.objectContaining({
          message: expect.stringContaining('NFC kartı okunamadı'),
        })
      );
    });

    test('should handle unsupported device error', async () => {
      // Mock unsupported device
      NfcManager.isSupported.mockResolvedValue(false);

      const result = await nfcReader.startNFC();
      expect(result).toBe(false);

      await expect(nfcReader.readNFCData({ useRealNFC: true })).rejects.toThrow(
        'NFC okuma hatası: NFC kartı okunamadı. Lütfen kartı doğru konumda tutun.'
      );

      // Verify error handling
      expect(nfcReader.status).toBe(NFC_STATUS.ERROR);
    });

    test('should handle disabled NFC error', async () => {
      // Mock disabled NFC
      NfcManager.isSupported.mockResolvedValue(true);
      NfcManager.isEnabled.mockResolvedValue(false);

      const result = await nfcReader.startNFC();
      expect(result).toBe(false);

      // Verify error status
      expect(nfcReader.status).toBe(NFC_STATUS.ERROR);
      expect(mockOnError).toHaveBeenCalledWith(
        expect.objectContaining({
          message: expect.stringContaining('NFC kapalı'),
        })
      );
    });
  });

  describe('Mock vs Real NFC Data Comparison', () => {
    test('should return consistent data structure for both mock and real NFC', async () => {
      const mockTag = {
        id: '04A1B2C3D4E5F6',
        techTypes: ['IsoDep'],
        type: 'iso14443_4',
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue(mockTag);
      NfcManager.cancelTechnologyRequest.mockResolvedValue(true);

      await nfcReader.startNFC();

      // Test mock data
      const mockResult = await nfcReader.readNFCData({ useRealNFC: false });

      // Test real data
      const realResult = await nfcReader.readNFCData({ useRealNFC: true });

      // Both should have same structure
      const expectedFields = [
        'firstName',
        'lastName',
        'idNumber',
        'birthDate',
        'birthPlace',
        'nationality',
        'gender',
        'nfcData',
        'verification',
      ];

      expectedFields.forEach((field) => {
        expect(mockResult).toHaveProperty(field);
        expect(realResult).toHaveProperty(field);
      });

      // Verify different read methods
      expect(mockResult.verification.readMethod).toBe('NFC_MOCK');
      expect(realResult.verification.readMethod).toBe('NFC_REAL');
    });

    test('should validate Turkish ID number format in real data', async () => {
      const mockTag = {
        id: '04A1B2C3D4E5F6',
        techTypes: ['IsoDep'],
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue(mockTag);
      NfcManager.cancelTechnologyRequest.mockResolvedValue(true);

      await nfcReader.startNFC();
      const result = await nfcReader.readNFCData({ useRealNFC: true });

      // Verify TC number format (11 digits)
      expect(result.idNumber).toMatch(/^\d{11}$/);

      // Verify TC number checksum algorithm
      const tc = result.idNumber;
      const digits = tc.split('').map(Number);

      // Calculate 10th digit
      let sum1 = 0,
        sum2 = 0;
      for (let i = 0; i < 9; i++) {
        if (i % 2 === 0) {
          sum1 += digits[i];
        } else {
          sum2 += digits[i];
        }
      }
      const expectedDigit10 = (sum1 * 7 - sum2) % 10;
      expect(digits[9]).toBe(expectedDigit10);

      // Calculate 11th digit
      const totalSum = digits
        .slice(0, 10)
        .reduce((sum, digit) => sum + digit, 0);
      const expectedDigit11 = totalSum % 10;
      expect(digits[10]).toBe(expectedDigit11);
    });
  });

  describe('Error Recovery and Retry Logic', () => {
    test('should cleanup NFC session on error', async () => {
      // Mock error during reading
      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockRejectedValue(new Error('Read error'));
      NfcManager.cancelTechnologyRequest.mockResolvedValue(true);

      await nfcReader.startNFC();

      await expect(
        nfcReader.readNFCData({ useRealNFC: true })
      ).rejects.toThrow();

      // Verify cleanup was called
      expect(NfcManager.cancelTechnologyRequest).toHaveBeenCalled();
    });

    test('should handle multiple consecutive read attempts', async () => {
      const mockTag = {
        id: '04A1B2C3D4E5F6',
        techTypes: ['IsoDep'],
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue(mockTag);
      NfcManager.cancelTechnologyRequest.mockResolvedValue(true);

      await nfcReader.startNFC();

      // First read
      const result1 = await nfcReader.readNFCData({ useRealNFC: true });
      expect(result1).toBeDefined();

      // Reset status for second read
      nfcReader._updateStatus(NFC_STATUS.READY);

      // Second read
      const result2 = await nfcReader.readNFCData({ useRealNFC: true });
      expect(result2).toBeDefined();

      // Verify both reads were successful
      expect(NfcManager.requestTechnology).toHaveBeenCalledTimes(2);
      expect(NfcManager.getTag).toHaveBeenCalledTimes(2);
    });
  });

  describe('Performance and Timing Tests', () => {
    test('should complete real NFC reading within reasonable time', async () => {
      const mockTag = {
        id: '04A1B2C3D4E5F6',
        techTypes: ['IsoDep'],
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue(mockTag);
      NfcManager.cancelTechnologyRequest.mockResolvedValue(true);

      await nfcReader.startNFC();

      const startTime = Date.now();
      const result = await nfcReader.readNFCData({ useRealNFC: true });
      const elapsed = Date.now() - startTime;

      expect(result).toBeDefined();
      expect(elapsed).toBeLessThan(5000); // Should complete within 5 seconds
    });

    test('should respect custom timeout settings', async () => {
      // Mock long delay
      NfcManager.requestTechnology.mockImplementation(
        () => new Promise((resolve) => setTimeout(resolve, 2000))
      );

      await nfcReader.startNFC();

      const startTime = Date.now();
      await expect(
        nfcReader.readNFCData({ useRealNFC: true, timeout: 1000 })
      ).rejects.toThrow('Timeout');

      const elapsed = Date.now() - startTime;
      expect(elapsed).toBeGreaterThanOrEqual(1000);
      expect(elapsed).toBeLessThan(1500);
    });
  });

  describe('Status and Progress Tracking', () => {
    test('should track status changes during real NFC reading', async () => {
      const mockTag = {
        id: '04A1B2C3D4E5F6',
        techTypes: ['IsoDep'],
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue(mockTag);
      NfcManager.cancelTechnologyRequest.mockResolvedValue(true);

      await nfcReader.startNFC();
      await nfcReader.readNFCData({ useRealNFC: true });

      // Verify status progression
      const statusCalls = mockOnStatusChange.mock.calls.map((call) => call[0]);
      expect(statusCalls).toContain(NFC_STATUS.SCANNING);
      expect(statusCalls).toContain(NFC_STATUS.READING);
      expect(statusCalls).toContain(NFC_STATUS.PROCESSING);
      expect(statusCalls).toContain(NFC_STATUS.SUCCESS);
    });

    test('should provide progress updates during reading', async () => {
      const mockTag = {
        id: '04A1B2C3D4E5F6',
        techTypes: ['IsoDep'],
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue(mockTag);
      NfcManager.cancelTechnologyRequest.mockResolvedValue(true);

      await nfcReader.startNFC();
      await nfcReader.readNFCData({ useRealNFC: true });

      // Verify progress messages
      const progressMessages = mockOnProgress.mock.calls.map((call) => call[0]);
      expect(progressMessages).toContainEqual(
        expect.stringContaining('yaklaştırın')
      );
      expect(progressMessages).toContainEqual(expect.stringContaining('aranıyor'));
      expect(progressMessages).toContainEqual(expect.stringContaining('algılandı'));
      expect(progressMessages).toContainEqual(expect.stringContaining('işleniyor'));
    });
  });

  describe('NDEF Data Parsing Tests', () => {
    test('should parse NDEF message with Turkish ID data', async () => {
      const mockTag = {
        id: '04A1B2C3D4E5F6',
        techTypes: ['IsoDep'],
        ndefMessage: [
          {
            payload: Array.from('T.C. 12345678901 MEHMET YILMAZ'),
            type: Array.from('text/plain'),
          },
        ],
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue(mockTag);
      NfcManager.cancelTechnologyRequest.mockResolvedValue(true);

      await nfcReader.startNFC();
      const result = await nfcReader.readNFCData({ useRealNFC: true });

      // Should extract TC number from NDEF if available
      expect(result.idNumber).toBeDefined();
      expect(result.verification.readMethod).toBe('NFC_REAL');
    });

    test('should handle empty NDEF message gracefully', async () => {
      const mockTag = {
        id: '04A1B2C3D4E5F6',
        techTypes: ['IsoDep'],
        ndefMessage: [],
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue(mockTag);
      NfcManager.cancelTechnologyRequest.mockResolvedValue(true);

      await nfcReader.startNFC();
      const result = await nfcReader.readNFCData({ useRealNFC: true });

      // Should generate simulated data when no NDEF available
      expect(result).toBeDefined();
      expect(result.firstName).toBeDefined();
      expect(result.lastName).toBeDefined();
      expect(result.idNumber).toMatch(/^\d{11}$/);
    });
  });
});
