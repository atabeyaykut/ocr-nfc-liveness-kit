package com.ocr.security

import android.content.Context
import android.content.SharedPreferences
import androidx.security.crypto.EncryptedSharedPreferences
import androidx.security.crypto.MasterKey
import com.google.gson.Gson
import java.util.UUID
import java.util.concurrent.ConcurrentHashMap

/**
 * Secure storage implementation for PII data
 * Uses AES256-GCM encryption via Android Security Crypto library
 * 
 * Fixes: SEC-001 - PII leakage through React Native bridge
 */
class SecureStorage private constructor(private val context: Context) {
    
    private val masterKey: MasterKey by lazy {
        MasterKey.Builder(context)
            .setKeyScheme(MasterKey.KeyScheme.AES256_GCM)
            .build()
    }
    
    private val sharedPreferences: SharedPreferences by lazy {
        EncryptedSharedPreferences.create(
            context,
            PREFS_NAME,
            masterKey,
            EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV,
            EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM
        )
    }
    
    // In-memory cache for expiry times to avoid frequent SharedPreferences reads
    private val expiryCache = ConcurrentHashMap<String, Long>()
    
    companion object {
        private const val PREFS_NAME = "secure_pii_storage"
        private const val EXPIRY_SUFFIX = "_expiry"
        private const val DEFAULT_TTL_MS = 300_000L // 5 minutes
        
        @Volatile
        private var instance: SecureStorage? = null
        
        fun getInstance(context: Context): SecureStorage {
            return instance ?: synchronized(this) {
                instance ?: SecureStorage(context.applicationContext).also { instance = it }
            }
        }
    }
    
    /**
     * Generate a secure session token
     */
    fun generateToken(): String {
        return UUID.randomUUID().toString()
    }
    
    /**
     * Store data securely with TTL
     * @param key Session token
     * @param data Data to store (will be serialized to JSON)
     * @param ttlMs Time-to-live in milliseconds (default: 5 minutes)
     */
    fun <T> save(key: String, data: T, ttlMs: Long = DEFAULT_TTL_MS) {
        try {
            val json = Gson().toJson(data)
            val expiryTime = System.currentTimeMillis() + ttlMs
            
            sharedPreferences.edit()
                .putString(key, json)
                .putLong(key + EXPIRY_SUFFIX, expiryTime)
                .apply()
            
            // Update cache
            expiryCache[key] = expiryTime
            
            Logger.debug("SecureStorage", "Saved data with token: $key (expires in ${ttlMs}ms)")
        } catch (e: Exception) {
            Logger.error("SecureStorage", "Failed to save data", e)
            throw SecurityException("Failed to save secure data: ${e.message}")
        }
    }
    
    /**
     * Retrieve data by token
     * @param key Session token
     * @param clazz Class type for deserialization
     * @return Data or null if expired/not found
     */
    fun <T> get(key: String, clazz: Class<T>): T? {
        try {
            // Check expiry first (from cache or SharedPreferences)
            val expiryTime = expiryCache[key] 
                ?: sharedPreferences.getLong(key + EXPIRY_SUFFIX, 0L)
            
            if (expiryTime == 0L) {
                Logger.debug("SecureStorage", "Token not found: $key")
                return null
            }
            
            if (System.currentTimeMillis() > expiryTime) {
                Logger.debug("SecureStorage", "Token expired: $key")
                delete(key)
                return null
            }
            
            val json = sharedPreferences.getString(key, null)
            if (json == null) {
                Logger.warn("SecureStorage", "Data not found for token: $key")
                return null
            }
            
            Logger.debug("SecureStorage", "Retrieved data for token: $key")
            return Gson().fromJson(json, clazz)
            
        } catch (e: Exception) {
            Logger.error("SecureStorage", "Failed to retrieve data", e)
            return null
        }
    }
    
    /**
     * Delete data by token
     */
    fun delete(key: String) {
        try {
            sharedPreferences.edit()
                .remove(key)
                .remove(key + EXPIRY_SUFFIX)
                .apply()
            
            expiryCache.remove(key)
            
            Logger.debug("SecureStorage", "Deleted token: $key")
        } catch (e: Exception) {
            Logger.error("SecureStorage", "Failed to delete data", e)
        }
    }
    
    /**
     * Check if token exists and is valid
     */
    fun isValid(key: String): Boolean {
        val expiryTime = expiryCache[key] 
            ?: sharedPreferences.getLong(key + EXPIRY_SUFFIX, 0L)
        
        return expiryTime > 0L && System.currentTimeMillis() <= expiryTime
    }
    
    /**
     * Clean up expired tokens (should be called periodically)
     */
    fun cleanupExpired() {
        try {
            val currentTime = System.currentTimeMillis()
            val allKeys = sharedPreferences.all.keys
            var cleanedCount = 0
            
            allKeys.forEach { key ->
                if (!key.endsWith(EXPIRY_SUFFIX)) {
                    val expiryTime = sharedPreferences.getLong(key + EXPIRY_SUFFIX, 0L)
                    if (expiryTime > 0L && currentTime > expiryTime) {
                        delete(key)
                        cleanedCount++
                    }
                }
            }
            
            if (cleanedCount > 0) {
                Logger.info("SecureStorage", "Cleaned up $cleanedCount expired tokens")
            }
        } catch (e: Exception) {
            Logger.error("SecureStorage", "Failed to cleanup expired tokens", e)
        }
    }
    
    /**
     * Clear all stored data (use with caution)
     */
    fun clearAll() {
        try {
            sharedPreferences.edit().clear().apply()
            expiryCache.clear()
            Logger.info("SecureStorage", "Cleared all secure storage")
        } catch (e: Exception) {
            Logger.error("SecureStorage", "Failed to clear storage", e)
        }
    }
}

/**
 * Simple logger for SecureStorage
 */
private object Logger {
    fun debug(tag: String, message: String) {
        android.util.Log.d(tag, message)
    }
    
    fun info(tag: String, message: String) {
        android.util.Log.i(tag, message)
    }
    
    fun warn(tag: String, message: String) {
        android.util.Log.w(tag, message)
    }
    
    fun error(tag: String, message: String, throwable: Throwable? = null) {
        if (throwable != null) {
            android.util.Log.e(tag, message, throwable)
        } else {
            android.util.Log.e(tag, message)
        }
    }
}
