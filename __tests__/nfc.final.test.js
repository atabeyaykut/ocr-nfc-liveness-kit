/**
 * NFC Final Integration Tests - Day 7
 * Complete end-to-end testing for NFC Reader module stability
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
    Ndef: 'Ndef',
    MifareClassic: 'MifareClassic'
  }
}));

// Mock Logger
jest.mock('../utils/logger', () => ({
  info: jest.fn(),
  warn: jest.fn(),
  error: jest.fn(),
  debug: jest.fn()
}));

describe('NFC Final Integration Tests - Stable Version', () => {
  let nfcReader;
  const NfcManager = require('react-native-nfc-manager');

  beforeEach(() => {
    jest.clearAllMocks();
    nfcReader = new NFCReader();
    
    // Setup default successful mocks
    NfcManager.isSupported.mockResolvedValue(true);
    NfcManager.isEnabled.mockResolvedValue(true);
    NfcManager.start.mockResolvedValue(true);
    NfcManager.stop.mockResolvedValue(true);
    NfcManager.cancelTechnologyRequest.mockResolvedValue(true);
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

  describe('🔧 Bug Fixes Verification', () => {
    test('should respect custom timeout parameter', async () => {
      const customTimeout = 3000; // 3 seconds
      
      // Mock a delayed response that exceeds custom timeout
      NfcManager.requestTechnology.mockImplementation(() => 
        new Promise(resolve => setTimeout(resolve, 4000)) // 4 second delay
      );

      await nfcReader.startNFC();
      
      const startTime = Date.now();
      
      await expect(
        nfcReader.readNFCData({ 
          useRealNFC: true,
          timeout: customTimeout 
        })
      ).rejects.toThrow(/Timeout.*3 saniye/);
      
      const duration = Date.now() - startTime;
      
      // Should timeout close to custom timeout, not default 10s
      expect(duration).toBeGreaterThan(2800); // At least 2.8s
      expect(duration).toBeLessThan(3500); // But not more than 3.5s
    });

    test('should prevent duplicate readings effectively', async () => {
      const mockData = {
        firstName: 'AHMET',
        lastName: 'YILMAZ',
        idNumber: '12345678901'
      };

      // Mock slow NFC operation
      NfcManager.requestTechnology.mockImplementation(() => 
        new Promise(resolve => setTimeout(resolve, 2000))
      );
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
      
      // Start first read
      const firstReadPromise = nfcReader.readNFCData({ useRealNFC: true });
      
      // Immediately try second read - should be blocked
      await expect(
        nfcReader.readNFCData({ useRealNFC: true })
      ).rejects.toThrow(/NFC reading already in progress/);
      
      // Third attempt should also be blocked
      await expect(
        nfcReader.readNFCData({ useRealNFC: true })
      ).rejects.toThrow(/NFC reading already in progress/);
      
      // Wait for first read to complete
      const result = await firstReadPromise;
      expect(result.firstName).toBe('AHMET');
      
      // After completion, new read should be allowed
      const secondResult = await nfcReader.readNFCData({ useRealNFC: true });
      expect(secondResult.firstName).toBe('AHMET');
    });

    test('should handle errors correctly and provide Turkish messages', async () => {
      const errorScenarios = [
        {
          mockError: new Error('Connection failed'),
          expectedPattern: /bağlantı/i,
          description: 'Connection error'
        },
        {
          mockError: new Error('Card removed'),
          expectedPattern: /kart.*uzaklaştırıldı/i,
          description: 'Card removal error'
        },
        {
          mockError: new Error('Timeout'),
          expectedPattern: /zaman.*aşımı/i,
          description: 'Timeout error'
        }
      ];

      await nfcReader.startNFC();

      for (const scenario of errorScenarios) {
        NfcManager.requestTechnology.mockRejectedValueOnce(scenario.mockError);
        
        await expect(
          nfcReader.readNFCData({ useRealNFC: true })
        ).rejects.toThrow(scenario.expectedPattern);
      }
    });
  });

  describe('🚀 Performance Validation', () => {
    test('should complete NFC reading within performance targets', async () => {
      const mockData = {
        firstName: 'PERFORMANCE',
        lastName: 'TEST',
        idNumber: '99999999999',
        birthDate: '1990-01-01',
        // Add some metadata to test filtering
        extraData: 'x'.repeat(1000)
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:P1:P2:P3:P4:P5:P6',
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
      const result = await nfcReader.readNFCData({ useRealNFC: true });
      const duration = Date.now() - startTime;
      
      // Performance targets
      expect(duration).toBeLessThan(5000); // < 5 seconds
      expect(result).toHaveProperty('firstName', 'PERFORMANCE');
      expect(result).toHaveProperty('lastName', 'TEST');
      
      // Verify performance logging
      const performanceLogs = nfcReader.getPerformanceLogs();
      expect(performanceLogs.length).toBeGreaterThan(0);
      
      const latestLog = performanceLogs[performanceLogs.length - 1];
      expect(latestLog.success).toBe(true);
      expect(latestLog.duration).toBeLessThan(5000);
    });

    test('should handle large data efficiently with filtering', async () => {
      // Create large mock data (>50KB)
      const largeMetadata = 'x'.repeat(60000);
      const mockData = {
        firstName: 'BÜYÜK',
        lastName: 'VERİ',
        idNumber: '11111111111',
        birthDate: '1985-05-15',
        largeMetadata: largeMetadata,
        debugInfo: {
          verbose: 'y'.repeat(10000),
          technical: 'z'.repeat(5000)
        }
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:L1:L2:L3:L4:L5:L6',
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
      
      // Essential data should be preserved
      expect(result.firstName).toBe('BÜYÜK');
      expect(result.lastName).toBe('VERİ');
      expect(result.idNumber).toBe('11111111111');
      
      // Large metadata should be filtered out
      expect(result).not.toHaveProperty('largeMetadata');
      expect(result).not.toHaveProperty('debugInfo');
      
      // Result should be reasonably sized
      const resultSize = JSON.stringify(result).length;
      expect(resultSize).toBeLessThan(10000); // < 10KB after filtering
    });
  });

  describe('🔄 Lifecycle Management', () => {
    test('should handle complete NFC lifecycle correctly', async () => {
      const mockData = {
        firstName: 'LIFECYCLE',
        lastName: 'TEST',
        idNumber: '55555555555'
      };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:LC:LC:LC:LC:LC:LC',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(mockData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });

      // 1. Initial state
      expect(nfcReader.getStatus()).toBe('idle');
      
      // 2. Start NFC
      await nfcReader.startNFC();
      expect(nfcReader.getStatus()).toBe('ready');
      
      // 3. Read data
      const result = await nfcReader.readNFCData({ useRealNFC: true });
      expect(nfcReader.getStatus()).toBe('success');
      expect(result.firstName).toBe('LIFECYCLE');
      
      // 4. Stop NFC
      await nfcReader.stopNFC();
      expect(nfcReader.getStatus()).toBe('idle');
      
      // 5. Reset
      nfcReader.reset();
      expect(nfcReader.getStatus()).toBe('idle');
      expect(nfcReader.getLastReadData()).toBeNull();
    });

    test('should handle error recovery properly', async () => {
      await nfcReader.startNFC();
      
      // Simulate error
      NfcManager.requestTechnology.mockRejectedValueOnce(new Error('Test error'));
      
      await expect(
        nfcReader.readNFCData({ useRealNFC: true })
      ).rejects.toThrow('Test error');
      
      expect(nfcReader.getStatus()).toBe('error');
      
      // Should be able to retry after error
      const mockData = { firstName: 'RETRY', idNumber: '77777777777' };
      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:RT:RT:RT:RT:RT:RT',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(mockData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });
      
      const retryResult = await nfcReader.readNFCData({ useRealNFC: true });
      expect(retryResult.firstName).toBe('RETRY');
      expect(nfcReader.getStatus()).toBe('success');
    });
  });

  describe('📊 Memory Management', () => {
    test('should manage performance logs memory efficiently', async () => {
      const mockData = { firstName: 'MEMORY', idNumber: '88888888888' };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:MM:MM:MM:MM:MM:MM',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(mockData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });

      await nfcReader.startNFC();
      
      // Perform many operations to test log limit
      for (let i = 0; i < 15; i++) {
        await nfcReader.readNFCData({ useRealNFC: true });
      }
      
      const performanceLogs = nfcReader.getPerformanceLogs();
      
      // Should limit logs to prevent memory issues (max 10)
      expect(performanceLogs.length).toBeLessThanOrEqual(10);
      
      // Should keep most recent logs
      const latestLog = performanceLogs[performanceLogs.length - 1];
      expect(latestLog.operation).toBe('readNFCData');
      expect(latestLog.success).toBe(true);
      
      // Clear logs should work
      nfcReader.clearPerformanceLogs();
      expect(nfcReader.getPerformanceLogs().length).toBe(0);
    });
  });

  describe('🔒 Stability Tests', () => {
    test('should handle rapid consecutive operations', async () => {
      const mockData = { firstName: 'RAPID', idNumber: '33333333333' };

      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:RP:RP:RP:RP:RP:RP',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(mockData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });

      await nfcReader.startNFC();
      
      // Rapid consecutive reads (should be handled gracefully)
      const results = [];
      for (let i = 0; i < 5; i++) {
        try {
          const result = await nfcReader.readNFCData({ useRealNFC: true });
          results.push(result);
        } catch (error) {
          // Some may fail due to duplicate prevention, that's expected
          expect(error.message).toMatch(/already in progress/);
        }
      }
      
      // At least one should succeed
      expect(results.length).toBeGreaterThan(0);
      expect(results[0].firstName).toBe('RAPID');
    });

    test('should maintain stability under stress conditions', async () => {
      // Test various error conditions and recovery
      const errorConditions = [
        () => NfcManager.requestTechnology.mockRejectedValueOnce(new Error('Network error')),
        () => NfcManager.getTag.mockResolvedValueOnce(null),
        () => NfcManager.requestTechnology.mockImplementation(() => 
          new Promise((_, reject) => setTimeout(() => reject(new Error('Timeout')), 100))
        )
      ];

      await nfcReader.startNFC();
      
      let successCount = 0;
      let errorCount = 0;
      
      for (let i = 0; i < errorConditions.length; i++) {
        errorConditions[i]();
        
        try {
          await nfcReader.readNFCData({ useRealNFC: true, timeout: 2000 });
          successCount++;
        } catch (error) {
          errorCount++;
          expect(error.message).toBeTruthy();
        }
      }
      
      // Should handle all error conditions gracefully
      expect(errorCount).toBe(errorConditions.length);
      expect(nfcReader.getStatus()).toBe('error'); // Should be in error state after last failure
      
      // Should still be able to recover
      const mockData = { firstName: 'RECOVERY', idNumber: '44444444444' };
      NfcManager.requestTechnology.mockResolvedValue(true);
      NfcManager.getTag.mockResolvedValue({
        id: '04:RC:RC:RC:RC:RC:RC',
        techTypes: ['android.nfc.tech.IsoDep'],
        ndefMessage: [{
          payload: Buffer.from(JSON.stringify(mockData)),
          type: Buffer.from('application/json'),
          id: Buffer.from(''),
          tnf: 2
        }]
      });
      
      const recoveryResult = await nfcReader.readNFCData({ useRealNFC: true });
      expect(recoveryResult.firstName).toBe('RECOVERY');
      expect(nfcReader.getStatus()).toBe('success');
    });
  });
});
