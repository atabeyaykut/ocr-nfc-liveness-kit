// Jest Configuration for React Native SDK
module.exports = {
  preset: 'react-native',
  testEnvironment: 'node',
  setupFilesAfterEnv: ['<rootDir>/__tests__/setup.js'],
  testMatch: [
    '**/__tests__/**/*.test.js',
    '**/?(*.)+(spec|test).js'
  ],
  collectCoverageFrom: [
    'modules/**/*.js',
    'utils/**/*.js',
    '!**/node_modules/**',
    '!**/__tests__/**',
    '!**/coverage/**'
  ],
  coverageDirectory: 'coverage',
  coverageReporters: ['text', 'lcov', 'html'],
  moduleFileExtensions: ['js', 'jsx', 'json', 'ts', 'tsx'],
  transform: {
    '^.+\\.(js|jsx|ts|tsx)$': ['babel-jest', { configFile: './babel.config.js' }]
  },
  transformIgnorePatterns: [
    'node_modules/(?!(react-native|@react-native|react-native-.*|@react-native-.*))'
  ],
  moduleNameMapper: {
    '^@/(.*)$': '<rootDir>/$1',
    '^../../utils/logger$': '<rootDir>/__tests__/__mocks__/logger.js',
    '^../../utils/permissions$': '<rootDir>/__tests__/__mocks__/permissions.js',
    '^../../utils/imageProcessor$': '<rootDir>/__tests__/__mocks__/imageProcessor.js'
  },
  clearMocks: true,
  resetMocks: true,
  restoreMocks: true
};
