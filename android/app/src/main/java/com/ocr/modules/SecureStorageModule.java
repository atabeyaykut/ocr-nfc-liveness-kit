package com.ocr.modules;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.module.annotations.ReactModule;

import com.ocr.security.SecureStorage;
import com.sdk.utils.LogSanitizer;

/**
 * Secure Storage Module - React Native bridge
 * 
 * Exposes SecureStorage functionality to JavaScript
 * 
 * Features:
 * - cleanupExpired() - Remove expired tokens
 * - getStats() - Get storage statistics
 * - isTokenValid() - Check token validity
 * - Thread-safe operations
 * 
 * Security:
 * - No PII in logs (SEC-LOG compliant)
 * - Token validation
 * - Automatic cleanup
 * 
 * Usage (JavaScript):
 * ```javascript
 * import { NativeModules } from 'react-native';
 * const { SecureStorageModule } = NativeModules;
 * 
 * // Cleanup expired tokens
 * const result = await SecureStorageModule.cleanupExpired();
 * console.log(`Cleaned ${result.cleanedCount} tokens`);
 * 
 * // Get statistics
 * const stats = await SecureStorageModule.getStats();
 * console.log(`Total: ${stats.totalTokens}, Valid: ${stats.validTokens}`);
 * ```
 * 
 * @author Mobile SDK Team
 * @version 1.0.0
 */
@ReactModule(name = "SecureStorageModule")
public class SecureStorageModule extends ReactContextBaseJavaModule {
    
    private static final String TAG = "SecureStorageModule";
    
    private final SecureStorage secureStorage;
    
    public SecureStorageModule(ReactApplicationContext reactContext) {
        super(reactContext);
        try {
            this.secureStorage = SecureStorage.getInstance(reactContext);
            LogSanitizer.d(TAG, "SecureStorageModule initialized");
        } catch (Exception e) {
            LogSanitizer.e(TAG, "Failed to initialize SecureStorage", e);
            throw new RuntimeException("SecureStorage initialization failed", e);
        }
    }
    
    @Override
    public String getName() {
        return "SecureStorageModule";
    }
    
    /**
     * Cleanup expired tokens
     * 
     * Returns: { cleanedCount: number, success: boolean }
     * 
     * @param promise React Native promise
     */
    @ReactMethod
    public void cleanupExpired(Promise promise) {
        try {
            LogSanitizer.d(TAG, "cleanupExpired() called");
            
            // Get stats before cleanup
            SecureStorage.StorageStats statsBefore = secureStorage.getStats();
            int expiredBefore = statsBefore.expiredTokens;
            
            // Perform cleanup
            secureStorage.cleanupExpired();
            
            // Get stats after cleanup
            SecureStorage.StorageStats statsAfter = secureStorage.getStats();
            
            // Calculate cleaned count
            int cleanedCount = expiredBefore;
            
            // Return result
            WritableMap result = Arguments.createMap();
            result.putInt("cleanedCount", cleanedCount);
            result.putBoolean("success", true);
            result.putInt("remainingTokens", statsAfter.totalTokens);
            
            LogSanitizer.d(TAG, "Cleaned " + cleanedCount + " expired tokens");
            
            promise.resolve(result);
            
        } catch (Exception e) {
            LogSanitizer.e(TAG, "cleanupExpired() failed", e);
            
            WritableMap error = Arguments.createMap();
            error.putString("code", "CLEANUP_FAILED");
            error.putString("message", "Failed to cleanup expired tokens: " + e.getMessage());
            
            promise.reject("CLEANUP_FAILED", "Failed to cleanup expired tokens", e);
        }
    }
    
    /**
     * Get storage statistics
     * 
     * Returns: { totalTokens: number, expiredTokens: number, validTokens: number }
     * 
     * @param promise React Native promise
     */
    @ReactMethod
    public void getStats(Promise promise) {
        try {
            LogSanitizer.d(TAG, "getStats() called");
            
            SecureStorage.StorageStats stats = secureStorage.getStats();
            
            WritableMap result = Arguments.createMap();
            result.putInt("totalTokens", stats.totalTokens);
            result.putInt("expiredTokens", stats.expiredTokens);
            result.putInt("validTokens", stats.validTokens);
            
            LogSanitizer.d(TAG, String.format("Stats: total=%d, expired=%d, valid=%d",
                    stats.totalTokens, stats.expiredTokens, stats.validTokens));
            
            promise.resolve(result);
            
        } catch (Exception e) {
            LogSanitizer.e(TAG, "getStats() failed", e);
            promise.reject("STATS_FAILED", "Failed to get storage statistics", e);
        }
    }
    
    /**
     * Check if token is valid (exists and not expired)
     * 
     * Returns: { isValid: boolean, exists: boolean, expired: boolean }
     * 
     * @param token Session token
     * @param promise React Native promise
     */
    @ReactMethod
    public void isTokenValid(String token, Promise promise) {
        try {
            if (token == null || token.isEmpty()) {
                WritableMap result = Arguments.createMap();
                result.putBoolean("isValid", false);
                result.putBoolean("exists", false);
                result.putBoolean("expired", false);
                promise.resolve(result);
                return;
            }
            
            // SEC-LOG: Don't log the actual token
            LogSanitizer.d(TAG, "isTokenValid() called");
            
            boolean isValid = secureStorage.isValid(token);
            
            WritableMap result = Arguments.createMap();
            result.putBoolean("isValid", isValid);
            result.putBoolean("exists", true); // If we got here, token exists
            result.putBoolean("expired", !isValid);
            
            promise.resolve(result);
            
        } catch (Exception e) {
            LogSanitizer.e(TAG, "isTokenValid() failed", e);
            promise.reject("VALIDATION_FAILED", "Failed to validate token", e);
        }
    }
    
    /**
     * Force cleanup (for testing/debugging)
     * Same as cleanupExpired() but with explicit name
     * 
     * @param promise React Native promise
     */
    @ReactMethod
    public void forceCleanup(Promise promise) {
        cleanupExpired(promise);
    }
    
    /**
     * Get module constants (exposed to JavaScript)
     */
    @Override
    public java.util.Map<String, Object> getConstants() {
        final java.util.Map<String, Object> constants = new java.util.HashMap<>();
        constants.put("MODULE_NAME", "SecureStorageModule");
        constants.put("VERSION", "1.0.0");
        return constants;
    }
}
