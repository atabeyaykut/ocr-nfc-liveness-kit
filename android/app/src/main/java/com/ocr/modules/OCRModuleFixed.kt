package com.ocr.modules

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.util.Log
import com.facebook.react.bridge.*
import com.facebook.react.modules.core.DeviceEventManagerModule
import com.ocr.security.SecureStorage
import com.ocr.utils.FrameProcessor
import com.ocr.utils.use
import kotlinx.coroutines.*
import java.io.File
import java.lang.ref.WeakReference

/**
 * OCR Module - Secure implementation with token-based data exchange
 * 
 * Fixes:
 * - SEC-001: PII leakage through React Native bridge
 * - BRIDGE-001: Memory leak in frame processing
 * 
 * Changes:
 * - scan() now returns only { sessionToken, confidence, status, memoryMetrics }
 * - Actual PII data stored securely in native with 5-minute TTL
 * - New method getResult(token) retrieves the actual data
 * - Proper bitmap cleanup with FrameProcessor
 * - Memory metrics tracking
 * - Processing moved to Dispatchers.IO
 */
@ReactModule(name = "OCRModule")
class OCRModule(reactContext: ReactApplicationContext) : 
    ReactContextBaseJavaModule(reactContext) {
    
    companion object {
        private const val TAG = "OCRModule"
        private const val MIN_CONFIDENCE_THRESHOLD = 0.85
    }
    
    private val secureStorage: SecureStorage by lazy {
        SecureStorage.getInstance(reactApplicationContext)
    }
    
    private val frameProcessor = FrameProcessor()
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    
    // Use weak reference to prevent memory leaks
    private var lastBitmapRef: WeakReference<Bitmap>? = null
    
    override fun getName(): String = "OCRModule"
    
    /**
     * Scan document and extract text
     * Returns only sessionToken + metadata + memory metrics (no PII data)
     * 
     * BRIDGE-001 Fix: Proper bitmap cleanup and memory tracking
     */
    @ReactMethod
    fun scan(imageUri: String, promise: Promise) {
        scope.launch {
            try {
                Log.d(TAG, "Starting OCR scan for: $imageUri")
                
                // Load image with proper cleanup
                val bitmap = BitmapFactory.decodeFile(imageUri)
                if (bitmap == null) {
                    promise.reject(
                        "OCR_INVALID_IMAGE",
                        "Failed to load image",
                        createErrorMap(
                            "OCR_INVALID_IMAGE",
                            "Invalid image file",
                            0.0,
                            true
                        )
                    )
                    return@launch
                }
                
                // Process with automatic cleanup and memory tracking
                val processingResult = frameProcessor.processBitmap(bitmap) { bmp ->
                    performOCR(bmp)
                }
                
                val ocrResult = processingResult.data
                val metrics = processingResult.metrics
                
                Log.d(TAG, "OCR completed: confidence=${ocrResult.confidence}, " +
                          "time=${metrics.processingTimeMs}ms, " +
                          "memory=${metrics.memoryUsedBeforeMB}MB→${metrics.memoryUsedAfterMB}MB")
                
                // Validate confidence threshold
                if (ocrResult.confidence < MIN_CONFIDENCE_THRESHOLD) {
                    Log.w(TAG, "Low confidence: ${ocrResult.confidence}")
                    promise.reject(
                        "OCR_001",
                        "Low confidence score: ${ocrResult.confidence}",
                        createErrorMap(
                            "OCR_001",
                            "Low confidence score",
                            ocrResult.confidence,
                            true
                        )
                    )
                    return@launch
                }
                
                // Generate session token
                val sessionToken = secureStorage.generateToken()
                
                // Store PII data securely (5 minute TTL)
                secureStorage.save(sessionToken, ocrResult, ttlMs = 300_000L)
                
                // Get current memory stats
                val memoryStats = frameProcessor.getMemoryStats()
                
                // Return only token + metadata + memory metrics (NO PII)
                val response = Arguments.createMap().apply {
                    putString("status", "SUCCESS")
                    putString("sessionToken", sessionToken)
                    putDouble("confidence", ocrResult.confidence)
                    putMap("metadata", Arguments.createMap().apply {
                        putString("documentType", "ID_CARD")
                        putInt("fieldCount", 5)
                        
                        // BRIDGE-001: Memory metrics
                        putMap("performance", Arguments.createMap().apply {
                            putDouble("processingTimeMs", metrics.processingTimeMs.toDouble())
                            putDouble("memoryUsedBeforeMB", metrics.memoryUsedBeforeMB)
                            putDouble("memoryUsedAfterMB", metrics.memoryUsedAfterMB)
                            putDouble("memoryFreedMB", metrics.memoryFreedMB)
                            putDouble("bitmapSizeMB", metrics.bitmapSizeBytes / (1024.0 * 1024.0))
                            putDouble("currentMemoryUsageMB", memoryStats.usedMemoryMB)
                            putDouble("memoryUsagePercent", memoryStats.usagePercent)
                        })
                    })
                }
                
                Log.d(TAG, "OCR scan successful: token=$sessionToken")
                promise.resolve(response)
                
                // Emit success event (no PII)
                sendEvent("OCR_SUCCESS", Arguments.createMap().apply {
                    putString("sessionToken", sessionToken)
                    putDouble("confidence", ocrResult.confidence)
                    putDouble("processingTimeMs", metrics.processingTimeMs.toDouble())
                })
                
            } catch (e: Exception) {
                Log.e(TAG, "OCR scan error", e)
                promise.reject("OCR_999", "Unexpected error: ${e.message}", e)
            }
            // Note: No finally block needed - FrameProcessor handles cleanup automatically
        }
    }
    
    /**
     * Retrieve OCR result by session token
     * This is the ONLY method that returns PII data
     */
    @ReactMethod
    fun getResult(sessionToken: String, promise: Promise) {
        scope.launch {
            try {
                if (sessionToken.isBlank()) {
                    promise.reject("OCR_INVALID_TOKEN", "Session token is required")
                    return@launch
                }
                
                // Retrieve from secure storage
                val ocrResult = secureStorage.get(sessionToken, OCRResult::class.java)
                
                if (ocrResult == null) {
                    promise.reject(
                        "OCR_TOKEN_EXPIRED",
                        "Session token expired or invalid",
                        createErrorMap("OCR_TOKEN_EXPIRED", "Token expired (5 minute TTL)", 0.0, false)
                    )
                    return@launch
                }
                
                // Delete token after retrieval (one-time use)
                secureStorage.delete(sessionToken)
                
                // Return full data including PII
                val response = Arguments.createMap().apply {
                    putString("status", ocrResult.status)
                    putDouble("confidence", ocrResult.confidence)
                    putMap("fields", Arguments.createMap().apply {
                        putMap("tcNo", createFieldData(ocrResult.fields.tcNo))
                        putMap("name", createFieldData(ocrResult.fields.name))
                        putMap("surname", createFieldData(ocrResult.fields.surname))
                        putMap("birthDate", createFieldData(ocrResult.fields.birthDate))
                        putMap("serialNumber", createFieldData(ocrResult.fields.serialNumber))
                    })
                    putMap("metadata", createMetadata(ocrResult))
                }
                
                promise.resolve(response)
                
            } catch (e: Exception) {
                Log.e(TAG, "Failed to retrieve OCR result", e)
                promise.reject("OCR_RETRIEVAL_ERROR", "Failed to retrieve result: ${e.message}", e)
            }
        }
    }
    
    /**
     * Check if session token is valid
     */
    @ReactMethod
    fun isTokenValid(sessionToken: String, promise: Promise) {
        try {
            val isValid = secureStorage.isValid(sessionToken)
            promise.resolve(isValid)
        } catch (e: Exception) {
            promise.reject("OCR_VALIDATION_ERROR", "Failed to validate token: ${e.message}", e)
        }
    }
    
    /**
     * Cleanup expired tokens
     */
    @ReactMethod
    fun cleanupExpiredTokens(promise: Promise) {
        try {
            secureStorage.cleanupExpired()
            promise.resolve(true)
        } catch (e: Exception) {
            promise.reject("OCR_CLEANUP_ERROR", "Failed to cleanup: ${e.message}", e)
        }
    }
    
    /**
     * Get current memory statistics
     * BRIDGE-001: Memory monitoring
     */
    @ReactMethod
    fun getMemoryStats(promise: Promise) {
        try {
            val stats = frameProcessor.getMemoryStats()
            val response = Arguments.createMap().apply {
                putDouble("maxMemoryMB", stats.maxMemoryMB)
                putDouble("totalMemoryMB", stats.totalMemoryMB)
                putDouble("usedMemoryMB", stats.usedMemoryMB)
                putDouble("freeMemoryMB", stats.freeMemoryMB)
                putDouble("usagePercent", stats.usagePercent)
            }
            promise.resolve(response)
        } catch (e: Exception) {
            promise.reject("OCR_MEMORY_ERROR", "Failed to get memory stats: ${e.message}", e)
        }
    }
    
    // ==================== Private Helper Methods ====================
    
    /**
     * Perform OCR on bitmap
     * Mock implementation - replace with actual OCR engine
     */
    private fun performOCR(bitmap: Bitmap): OCRResult {
        // Simulate OCR processing
        Thread.sleep(100)
        
        return OCRResult(
            status = "SUCCESS",
            confidence = 0.93,
            fields = OCRFields(
                tcNo = FieldData("12345678901", 0.95),
                name = FieldData("AHMET", 0.92),
                surname = FieldData("YILMAZ", 0.94),
                birthDate = FieldData("01.01.1990", 0.91),
                serialNumber = FieldData("A12B34567", 0.93)
            )
        )
    }
    
    private fun createFieldData(fieldData: FieldData): WritableMap {
        return Arguments.createMap().apply {
            putString("value", fieldData.value)
            putDouble("confidence", fieldData.confidence)
        }
    }
    
    private fun createMetadata(ocrResult: OCRResult): WritableMap {
        return Arguments.createMap().apply {
            putString("documentType", "ID_CARD")
            putInt("fieldCount", 5)
            putString("processingMethod", "ML_KIT")
        }
    }
    
    private fun createErrorMap(
        code: String,
        message: String,
        confidence: Double,
        retryable: Boolean
    ): WritableMap {
        return Arguments.createMap().apply {
            putString("code", code)
            putString("message", message)
            putDouble("confidence", confidence)
            putBoolean("retryable", retryable)
        }
    }
    
    private fun sendEvent(eventName: String, params: WritableMap) {
        reactApplicationContext
            .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter::class.java)
            .emit(eventName, params)
    }
    
    override fun onCatalystInstanceDestroy() {
        super.onCatalystInstanceDestroy()
        
        // Cleanup resources
        frameProcessor.close()
        lastBitmapRef?.clear()
        lastBitmapRef = null
        scope.cancel()
        
        Log.d(TAG, "OCRModule destroyed and resources cleaned up")
    }
}

// ==================== Data Classes ====================

data class OCRResult(
    val status: String,
    val confidence: Double,
    val fields: OCRFields
)

data class OCRFields(
    val tcNo: FieldData,
    val name: FieldData,
    val surname: FieldData,
    val birthDate: FieldData,
    val serialNumber: FieldData
)

data class FieldData(
    val value: String,
    val confidence: Double
)
