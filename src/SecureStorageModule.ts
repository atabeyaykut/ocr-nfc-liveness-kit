/**
 * Secure Storage Module - React Native Bridge
 * 
 * Provides access to native SecureStorage functionality
 * 
 * Features:
 * - cleanupExpired() - Remove expired tokens
 * - getStats() - Get storage statistics
 * - isTokenValid() - Check token validity
 * 
 * @module SecureStorageModule
 * @version 1.0.0
 */

import { NativeModules } from 'react-native';

const { SecureStorageModule } = NativeModules;

if (!SecureStorageModule) {
  throw new Error(
    'SecureStorageModule is not available. Make sure the native module is properly linked.'
  );
}

/**
 * Cleanup result
 */
export interface CleanupResult {
  /** Number of tokens cleaned */
  cleanedCount: number;
  /** Operation success status */
  success: boolean;
  /** Remaining tokens after cleanup */
  remainingTokens: number;
}

/**
 * Storage statistics
 */
export interface StorageStats {
  /** Total number of tokens */
  totalTokens: number;
  /** Number of expired tokens */
  expiredTokens: number;
  /** Number of valid tokens */
  validTokens: number;
}

/**
 * Token validation result
 */
export interface TokenValidationResult {
  /** Token is valid (exists and not expired) */
  isValid: boolean;
  /** Token exists in storage */
  exists: boolean;
  /** Token is expired */
  expired: boolean;
}

/**
 * Secure Storage Module Interface
 */
export interface ISecureStorageModule {
  cleanupExpired(): Promise<CleanupResult>;
  getStats(): Promise<StorageStats>;
  isTokenValid(token: string): Promise<TokenValidationResult>;
  forceCleanup(): Promise<CleanupResult>;
}

/**
 * Secure Storage Module
 */
const SecureStorage: ISecureStorageModule = {
  cleanupExpired: () => SecureStorageModule.cleanupExpired(),
  getStats: () => SecureStorageModule.getStats(),
  isTokenValid: (token: string) => SecureStorageModule.isTokenValid(token),
  forceCleanup: () => SecureStorageModule.forceCleanup(),
};

export default SecureStorage;

export const MODULE_NAME = SecureStorageModule.MODULE_NAME || 'SecureStorageModule';
export const VERSION = SecureStorageModule.VERSION || '1.0.0';
