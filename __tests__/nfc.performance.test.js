/**
 * NFC Performance Tests
 * Tests for performance optimization, data normalization, timing, and concurrency
 */

import NFCReader from '../modules/nfc/NFCReader';
import Logger from '../utils/logger';

// Mock react-native-nfc-manager
jest.mock('react-native-nfc-manager', () => ({
  start: jest.fn(),
  stop: jest.fn(),
  isSupported: jest.fn(),
  isEnabled: jest.fn(),
  requestTechnology: jest.fn(),
  getTag: jest.fn(),
  cancelTechnologyRequest: jest.fn(),
  NfcTech: {
    IsoDep: 'IsoDep',
    Ndef: 'Ndef'
  }
}));

// Mock Logger
jest.mock('../utils/logger', () => ({
  info: jest.fn(),
  warn: jest.fn(),
  error: jest.fn(),
  debug: jest.fn()
}));

describe('NFC Performance Tests', () => {
  let nfcReader;
  const NfcManager = require('react-native-nfc-manager');

  beforeEach(() => {
    jest.clearAllMocks();
    nfcReader = new NFCReader();
    
    // Setup default mocks
    NfcManager.isSupported.mockResolvedValue(true);
    NfcManager.isEnabled.mockResolvedValue(true);
    NfcManager.start.mockResolvedValue(true);
    NfcManager.stop.mockResolvedValue(true);
  });

  afterEach(async () => {
    if (nfcReader) {
      try {
        await nfcReader.reset();
      } catch (error) {
        // Ignore cleanup errors
      }
    }
  });

  describe('Data Normalization Performance', () => {
    test('should normalize large data blocks efficiently', async () => {
      // Create large mock data (>50KB)
      const largeData = {
        firstName: 'MEHMET',
        lastName: 'YILMAZ',
        idNumber: '12345678901',
        birthDate: '1990-01-01',
        // Add large metadata to simulate verbose NFC data
        rawMetadata: 'x'.repeat(60000), // 60KB of data
        verboseInfo: {
          technicalData: 'y'.repeat(10000),
          debugInfo: 'z'.repeat(5000)
        }
      };

      // Mock NFC tag with large data
      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:A3:16:2A:6F:43:80',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(largeData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });

      await nfcReader.startNFC();
      const startTime = Date.now();
      
      const result = await nfcReader.readNFCData({ useRealNFC: true });
      
      const endTime = Date.now();
      const processingTime = endTime - startTime;

      // Verify data normalization
      expect(result).toHaveProperty('firstName', 'MEHMET');
      expect(result).toHaveProperty('lastName', 'YILMAZ');
      expect(result).toHaveProperty('idNumber', '12345678901');
      
      // Verify metadata filtering (large data should be filtered out)
      expect(result).not.toHaveProperty('rawMetadata');
      expect(result).not.toHaveProperty('verboseInfo');
      
      // Verify performance - should complete quickly despite large input
      expect(processingTime).toBeLessThan(2000); // Less than 2 seconds
      
      // Verify normalized data size is reasonable
      const resultSize = JSON.stringify(result).length;
      expect(resultSize).toBeLessThan(5000); // Normalized data should be under 5KB
    });

    test('should maintain essential data during normalization', async () => {
      const mockData = {
        firstName: 'AYŞE',
        lastName: 'KAYA',
        idNumber: '98765432109',
        birthDate: '1985-05-15',
        gender: 'K',
        serialNumber: 'A12345678',
        issueDate: '2020-01-01',
        expiryDate: '2030-01-01',
        // Extra metadata that should be preserved
        nationality: 'T.C.',
        placeOfBirth: 'ANKARA',
        // Large unnecessary data that should be filtered
        debugData: 'x'.repeat(30000)
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:B4:27:3B:8F:54:91',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(mockData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });

      await nfcReader.startNFC();
      const result = await nfcReader.readNFCData({ useRealNFC: true });

      // Verify essential data is preserved
      expect(result.firstName).toBe('AYŞE');
      expect(result.lastName).toBe('KAYA');
      expect(result.idNumber).toBe('98765432109');
      expect(result.nationality).toBe('T.C.');
      expect(result.placeOfBirth).toBe('ANKARA');
      
      // Verify large debug data is filtered out
      expect(result).not.toHaveProperty('debugData');
    });
  });

  describe('Timing Performance', () => {
    test('should complete NFC reading within 5 seconds', async () => {
      const mockData = {
        firstName: 'FATMA',
        lastName: 'ÖZ',
        idNumber: '11223344556',
        birthDate: '1992-03-20'
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:C5:38:4C:9F:65:A2',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(mockData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });

      await nfcReader.startNFC();
      
      const startTime = Date.now();
      const result = await nfcReader.readNFCData({ 
        useRealNFC: true,
        timeout: 5000 // 5 second timeout
      });
      const endTime = Date.now();
      
      const duration = endTime - startTime;
      
      expect(result).toBeDefined();
      expect(result.firstName).toBe('FATMA');
      expect(duration).toBeLessThan(5000); // Should complete within 5 seconds
    });

    test('should timeout after configured duration', async () => {
      // Mock a scenario where NFC reading hangs
      NfcManager.requestTechnology.mockImplementation(() => 
        new Promise(resolve => setTimeout(resolve, 10000)) // 10 second delay
      );

      await nfcReader.startNFC();
      
      const startTime = Date.now();
      
      await expect(
        nfcReader.readNFCData({ 
          useRealNFC: true,
          timeout: 2000 // 2 second timeout
        })
      ).rejects.toThrow(/Timeout.*2 saniye/);
      
      const endTime = Date.now();
      const duration = endTime - startTime;
      
      // Should timeout close to the configured timeout
      expect(duration).toBeGreaterThan(1800); // At least 1.8 seconds
      expect(duration).toBeLessThan(2500); // But not much more than 2.5 seconds
    });
  });

  describe('Concurrency Prevention', () => {
    test('should prevent concurrent startNFC calls', async () => {
      NfcManager.start.mockImplementation(() => 
        new Promise(resolve => setTimeout(resolve, 1000)) // 1 second delay
      );

      // Start first NFC operation
      const firstCall = nfcReader.startNFC();
      
      // Try to start second NFC operation immediately
      await expect(nfcReader.startNFC()).rejects.toThrow(/already in progress/);
      
      // Wait for first call to complete
      await firstCall;
      
      // Now second call should work
      await expect(nfcReader.startNFC()).resolves.toBeDefined();
    });

    test('should prevent concurrent readNFCData calls', async () => {
      const mockData = {
        firstName: 'ALI',
        lastName: 'VELI',
        idNumber: '55667788990'
      };

      NfcManager.requestTechnology.mockImplementation(() => 
        new Promise(resolve => setTimeout(resolve, 1000)) // 1 second delay
      );
      NfcManager.getTag.mockResolvedValue({
        id: '04:D6:49:5D:AF:76:B3',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(mockData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });

      await nfcReader.startNFC();
      
      // Start first read operation
      const firstRead = nfcReader.readNFCData({ useRealNFC: true });
      
      // Try to start second read operation immediately
      await expect(
        nfcReader.readNFCData({ useRealNFC: true })
      ).rejects.toThrow(/NFC reading already in progress/);
      
      // Wait for first read to complete
      const result = await firstRead;
      expect(result.firstName).toBe('ALI');
      
      // Now second read should work
      const secondResult = await nfcReader.readNFCData({ useRealNFC: true });
      expect(secondResult.firstName).toBe('ALI');
    });

    test('should handle concurrent prevention with proper cleanup', async () => {
      NfcManager.requestTechnology.mockRejectedValue(new Error('NFC error'));

      await nfcReader.startNFC();
      
      // Start first read operation that will fail
      const firstRead = nfcReader.readNFCData({ useRealNFC: true });
      
      // Try concurrent read
      await expect(
        nfcReader.readNFCData({ useRealNFC: true })
      ).rejects.toThrow(/already in progress/);
      
      // Wait for first read to fail and cleanup
      await expect(firstRead).rejects.toThrow('NFC error');
      
      // After cleanup, new read should be allowed
      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:E7:5A:6E:BF:87:C4',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify({ firstName: 'TEST' })),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });
      
      const newResult = await nfcReader.readNFCData({ useRealNFC: true });
      expect(newResult.firstName).toBe('TEST');
    });
  });

  describe('Performance Logging', () => {
    test('should log performance metrics for successful operations', async () => {
      const mockData = {
        firstName: 'ZEYNEP',
        lastName: 'DEMIR',
        idNumber: '99887766554'
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:F8:6B:7F:CF:98:D5',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(mockData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });

      await nfcReader.startNFC();
      await nfcReader.readNFCData({ useRealNFC: true });
      
      // Check performance logs
      const performanceLogs = nfcReader.getPerformanceLogs();
      expect(performanceLogs).toHaveLength(1);
      
      const log = performanceLogs[0];
      expect(log.operation).toBe('readNFCData');
      expect(log.success).toBe(true);
      expect(log.duration).toBeGreaterThan(0);
      expect(log.dataSize).toBeGreaterThan(0);
      expect(log.useRealNFC).toBe(true);
      expect(log.timestamp).toBeDefined();
    });

    test('should log performance metrics for failed operations', async () => {
      NfcManager.requestTechnology.mockRejectedValue(new Error('Connection failed'));

      await nfcReader.startNFC();
      
      await expect(
        nfcReader.readNFCData({ useRealNFC: true })
      ).rejects.toThrow('Connection failed');
      
      // Check performance logs
      const performanceLogs = nfcReader.getPerformanceLogs();
      expect(performanceLogs).toHaveLength(1);
      
      const log = performanceLogs[0];
      expect(log.operation).toBe('readNFCData');
      expect(log.success).toBe(false);
      expect(log.error).toBe('Connection failed');
      expect(log.duration).toBeGreaterThan(0);
    });

    test('should clear performance logs', async () => {
      const mockData = { firstName: 'TEST', idNumber: '12345678901' };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:A1:B2:C3:D4:E5:F6',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(mockData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });

      await nfcReader.startNFC();
      await nfcReader.readNFCData({ useRealNFC: true });
      
      expect(nfcReader.getPerformanceLogs()).toHaveLength(1);
      
      nfcReader.clearPerformanceLogs();
      expect(nfcReader.getPerformanceLogs()).toHaveLength(0);
    });
  });

  describe('Memory Management', () => {
    test('should limit performance log storage to prevent memory issues', async () => {
      const mockData = { firstName: 'TEST', idNumber: '12345678901' };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:A1:B2:C3:D4:E5:F6',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(mockData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });

      await nfcReader.startNFC();
      
      // Perform multiple NFC reads to test log limit
      for (let i = 0; i < 15; i++) {
        await nfcReader.readNFCData({ useRealNFC: true });
      }
      
      const performanceLogs = nfcReader.getPerformanceLogs();
      
      // Should limit to maximum 10 logs to prevent memory issues
      expect(performanceLogs.length).toBeLessThanOrEqual(10);
      
      // Should keep the most recent logs
      const latestLog = performanceLogs[performanceLogs.length - 1];
      expect(latestLog.operation).toBe('readNFCData');
    });
  });
});
