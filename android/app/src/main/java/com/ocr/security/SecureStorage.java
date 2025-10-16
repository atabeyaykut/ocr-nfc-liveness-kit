package com.ocr.security;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import androidx.security.crypto.EncryptedSharedPreferences;
import androidx.security.crypto.MasterKey;

import com.google.gson.Gson;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Secure Storage - Java implementation
 * 
 * Thread-safe encrypted storage using EncryptedSharedPreferences with AES256-GCM
 * Implements TTL (Time-To-Live) and one-time token retrieval
 * 
 * Fixes: SEC-001 - PII leakage through React Native bridge
 * 
 * Kotlin→Java conversion notes:
 * - Replaced 'by lazy' with double-checked locking singleton
 * - Replaced Kotlin coroutines with synchronized methods
 * - Replaced data classes with POJOs
 * - Replaced companion object with static methods
 * - Used ConcurrentHashMap instead of mutableMapOf for thread safety
 */
public class SecureStorage {
    
    private static final String TAG = "SecureStorage";
    private static final String PREFS_NAME = "secure_storage_encrypted";
    private static final String EXPIRY_SUFFIX = "_expiry";
    
    private static volatile SecureStorage instance;
    
    private final SharedPreferences encryptedPrefs;
    private final Gson gson;
    private final Map<String, Long> expiryCache;
    
    /**
     * Private constructor - use getInstance()
     */
    private SecureStorage(Context context) throws GeneralSecurityException, IOException {
        // Create MasterKey for encryption
        MasterKey masterKey = new MasterKey.Builder(context)
                .setKeyScheme(MasterKey.KeyScheme.AES256_GCM)
                .build();
        
        // Create EncryptedSharedPreferences
        this.encryptedPrefs = EncryptedSharedPreferences.create(
                context,
                PREFS_NAME,
                masterKey,
                EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV,
                EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM
        );
        
        this.gson = new Gson();
        this.expiryCache = new ConcurrentHashMap<>();
        
        Log.d(TAG, "SecureStorage initialized with AES256-GCM encryption");
    }
    
    /**
     * Get singleton instance (thread-safe double-checked locking)
     */
    public static SecureStorage getInstance(Context context) {
        if (instance == null) {
            synchronized (SecureStorage.class) {
                if (instance == null) {
                    try {
                        instance = new SecureStorage(context.getApplicationContext());
                    } catch (GeneralSecurityException | IOException e) {
                        Log.e(TAG, "Failed to initialize SecureStorage", e);
                        throw new RuntimeException("SecureStorage initialization failed", e);
                    }
                }
            }
        }
        return instance;
    }
    
    /**
     * Generate cryptographically secure session token (UUID v4)
     */
    public String generateToken() {
        return UUID.randomUUID().toString();
    }
    
    /**
     * Save data with TTL (Time-To-Live)
     * 
     * @param token Session token
     * @param data Data to store (will be JSON serialized)
     * @param ttlMs Time-to-live in milliseconds
     */
    public synchronized <T> void save(String token, T data, long ttlMs) {
        if (token == null || token.isEmpty()) {
            throw new IllegalArgumentException("Token cannot be null or empty");
        }
        
        if (data == null) {
            throw new IllegalArgumentException("Data cannot be null");
        }
        
        try {
            // Serialize data to JSON
            String json = gson.toJson(data);
            
            // Calculate expiry time
            long expiryTime = System.currentTimeMillis() + ttlMs;
            
            // Save to encrypted storage
            SharedPreferences.Editor editor = encryptedPrefs.edit();
            editor.putString(token, json);
            editor.putLong(token + EXPIRY_SUFFIX, expiryTime);
            editor.apply();
            
            // Update expiry cache
            expiryCache.put(token, expiryTime);
            
            Log.d(TAG, "Data saved with token: " + token + ", TTL: " + ttlMs + "ms");
            
        } catch (Exception e) {
            Log.e(TAG, "Failed to save data", e);
            throw new RuntimeException("Save failed", e);
        }
    }
    
    /**
     * Retrieve data by token (ONE-TIME USE - token deleted after retrieval)
     * 
     * @param token Session token
     * @param clazz Class type for deserialization
     * @return Data or null if not found/expired
     */
    public synchronized <T> T get(String token, Class<T> clazz) {
        if (token == null || token.isEmpty()) {
            Log.w(TAG, "Token is null or empty");
            return null;
        }
        
        try {
            // Check if expired
            if (isExpired(token)) {
                Log.w(TAG, "Token expired: " + token);
                delete(token);
                return null;
            }
            
            // Retrieve JSON
            String json = encryptedPrefs.getString(token, null);
            if (json == null) {
                Log.w(TAG, "Token not found: " + token);
                return null;
            }
            
            // Deserialize
            T data = gson.fromJson(json, clazz);
            
            // ONE-TIME USE: Delete token after retrieval
            delete(token);
            
            Log.d(TAG, "Data retrieved and token deleted: " + token);
            
            return data;
            
        } catch (Exception e) {
            Log.e(TAG, "Failed to retrieve data", e);
            return null;
        }
    }
    
    /**
     * Check if token is valid (exists and not expired)
     */
    public synchronized boolean isValid(String token) {
        if (token == null || token.isEmpty()) {
            return false;
        }
        
        // Check if exists
        if (!encryptedPrefs.contains(token)) {
            return false;
        }
        
        // Check if expired
        return !isExpired(token);
    }
    
    /**
     * Delete token and associated data
     */
    public synchronized void delete(String token) {
        if (token == null || token.isEmpty()) {
            return;
        }
        
        SharedPreferences.Editor editor = encryptedPrefs.edit();
        editor.remove(token);
        editor.remove(token + EXPIRY_SUFFIX);
        editor.apply();
        
        expiryCache.remove(token);
        
        Log.d(TAG, "Token deleted: " + token);
    }
    
    /**
     * Cleanup all expired tokens
     */
    public synchronized void cleanupExpired() {
        int count = 0;
        Map<String, ?> allEntries = encryptedPrefs.getAll();
        
        for (String key : allEntries.keySet()) {
            // Skip expiry keys
            if (key.endsWith(EXPIRY_SUFFIX)) {
                continue;
            }
            
            if (isExpired(key)) {
                delete(key);
                count++;
            }
        }
        
        Log.d(TAG, "Cleaned up " + count + " expired tokens");
    }
    
    /**
     * Check if token is expired
     */
    private boolean isExpired(String token) {
        // Check cache first
        Long cachedExpiry = expiryCache.get(token);
        if (cachedExpiry != null) {
            return System.currentTimeMillis() > cachedExpiry;
        }
        
        // Check storage
        long expiryTime = encryptedPrefs.getLong(token + EXPIRY_SUFFIX, 0);
        if (expiryTime == 0) {
            return true; // No expiry time = expired
        }
        
        // Update cache
        expiryCache.put(token, expiryTime);
        
        return System.currentTimeMillis() > expiryTime;
    }
    
    /**
     * Get storage statistics (for debugging)
     */
    public synchronized StorageStats getStats() {
        Map<String, ?> allEntries = encryptedPrefs.getAll();
        int totalTokens = 0;
        int expiredTokens = 0;
        
        for (String key : allEntries.keySet()) {
            if (key.endsWith(EXPIRY_SUFFIX)) {
                continue;
            }
            totalTokens++;
            if (isExpired(key)) {
                expiredTokens++;
            }
        }
        
        return new StorageStats(totalTokens, expiredTokens, totalTokens - expiredTokens);
    }
    
    /**
     * Storage statistics POJO
     */
    public static class StorageStats {
        public final int totalTokens;
        public final int expiredTokens;
        public final int validTokens;
        
        public StorageStats(int totalTokens, int expiredTokens, int validTokens) {
            this.totalTokens = totalTokens;
            this.expiredTokens = expiredTokens;
            this.validTokens = validTokens;
        }
    }
}
