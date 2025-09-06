// Logger Utility Unit Tests
import Logger, { LOG_LEVELS } from '../../utils/logger';

describe('Logger', () => {
  let consoleSpy;

  beforeEach(() => {
    consoleSpy = {
      error: jest.spyOn(console, 'error').mockImplementation(),
      warn: jest.spyOn(console, 'warn').mockImplementation(),
      info: jest.spyOn(console, 'info').mockImplementation(),
      log: jest.spyOn(console, 'log').mockImplementation()
    };
  });

  afterEach(() => {
    Object.values(consoleSpy).forEach(spy => spy.mockRestore());
  });

  describe('LOG_LEVELS', () => {
    test('should have correct log level values', () => {
      expect(LOG_LEVELS.ERROR).toBe(0);
      expect(LOG_LEVELS.WARN).toBe(1);
      expect(LOG_LEVELS.INFO).toBe(2);
      expect(LOG_LEVELS.DEBUG).toBe(3);
    });
  });

  describe('error logging', () => {
    test('should log error messages', () => {
      Logger.error('Test error message');
      expect(consoleSpy.error).toHaveBeenCalledWith(
        expect.stringContaining('[ERROR]'),
        expect.stringContaining('Test error message')
      );
    });

    test('should log error with additional arguments', () => {
      const errorObj = { code: 'TEST_ERROR' };
      Logger.error('Test error', errorObj);
      expect(consoleSpy.error).toHaveBeenCalledWith(
        expect.stringContaining('Test error'),
        errorObj
      );
    });
  });

  describe('warn logging', () => {
    test('should log warning messages', () => {
      Logger.warn('Test warning message');
      expect(consoleSpy.warn).toHaveBeenCalledWith(
        expect.stringContaining('[WARN]'),
        expect.stringContaining('Test warning message')
      );
    });
  });

  describe('info logging', () => {
    test('should log info messages', () => {
      Logger.info('Test info message');
      expect(consoleSpy.info).toHaveBeenCalledWith(
        expect.stringContaining('[INFO]'),
        expect.stringContaining('Test info message')
      );
    });
  });

  describe('debug logging', () => {
    test('should log debug messages', () => {
      Logger.debug('Test debug message');
      expect(consoleSpy.log).toHaveBeenCalledWith(
        expect.stringContaining('[DEBUG]'),
        expect.stringContaining('Test debug message')
      );
    });
  });
});
