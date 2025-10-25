package com.ocr.modules

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import com.facebook.react.bridge.*
import com.facebook.react.modules.core.DeviceEventManagerModule
import com.ocr.security.SecureStorage
import kotlinx.coroutines.*
import java.io.File

/**
 * OCR Module - Secure implementation with token-based data exchange
 * 
 * Fixes: SEC-001 - PII leakage through React Native bridge
 * 
 * Changes:
 * - scan() now returns only { sessionToken, confidence, status }
 * - Actual PII data stored securely in native with 5-minute TTL
 * - New method getResult(token) retrieves the actual data
 */
@ReactModule(name = "OCRModule")
class OCRModule(reactContext: ReactApplicationContext) : 
    ReactContextBaseJavaModule(reactContext) {
    
    private val secureStorage: SecureStorage by lazy {
        SecureStorage.getInstance(reactApplicationContext)
    }
    
    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    
    override fun getName(): String = "OCRModule"
    
    /**
     * Scan document and extract text
     * Returns only sessionToken + metadata (no PII data)
     */
    @ReactMethod
    fun scan(imageUri: String, promise: Promise) {
        scope.launch {
            var bitmap: Bitmap? = null
            try {
                // Load image
                bitmap = BitmapFactory.decodeFile(imageUri)
                if (bitmap == null) {
                    promise.reject("OCR_INVALID_IMAGE", "Failed to load image")
                    return@launch
                }
                
                // Perform OCR (mock implementation - replace with actual OCR engine)
                val ocrResult = performOCR(bitmap)
                
                // Validate confidence threshold
                if (ocrResult.confidence < MIN_CONFIDENCE_THRESHOLD) {
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
                
                // Return only token + metadata (NO PII)
                val response = Arguments.createMap().apply {
                    putString("status", "SUCCESS")
                    putString("sessionToken", sessionToken)
                    putDouble("confidence", ocrResult.confidence)
                    putMap("metadata", createMetadata(ocrResult))
                }
                
                promise.resolve(response)
                
                // Emit event for analytics (no PII)
                sendEvent("OCR_SUCCESS", Arguments.createMap().apply {
                    putString("sessionToken", sessionToken)
                    putDouble("confidence", ocrResult.confidence)
                })
                
            } catch (e: Exception) {
                promise.reject("OCR_999", "Unexpected error: ${e.message}", e)
            } finally {
                bitmap?.recycle()
            }
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
                // Validate token format
                if (sessionToken.isBlank()) {
                    promise.reject("OCR_INVALID_TOKEN", "Session token is required")
                    return@launch
                }
                
                // Retrieve data from secure storage
                val ocrResult = secureStorage.get(sessionToken, OCRResult::class.java)
                
                if (ocrResult == null) {
                    promise.reject(
                        "OCR_TOKEN_EXPIRED",
                        "Session token expired or invalid",
                        createErrorMap(
                            "OCR_TOKEN_EXPIRED",
                            "Session token expired or invalid (5 minute TTL)",
                            0.0,
                            false
                        )
                    )
                    return@launch
                }
                
                // Delete token after retrieval (one-time use)
                secureStorage.delete(sessionToken)
                
                // Return full data including PII
                val response = Arguments.createMap().apply {
                    putString("status", ocrResult.status)
                    putDouble("confidence", ocrResult.confidence)
                    putMap("fields", createFieldsMap(ocrResult.fields))
                    putMap("metadata", createMetadata(ocrResult))
                }
                
                promise.resolve(response)
                
            } catch (e: Exception) {
                promise.reject("OCR_RETRIEVAL_ERROR", "Failed to retrieve result: ${e.message}", e)
            }
        }
    }
    
    /**
     * Validate if a session token is still valid
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
     * Manually cleanup expired tokens
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
    
    // ==================== Private Helper Methods ====================
    
    private fun performOCR(bitmap: Bitmap): OCRResult {
        // TODO: Replace with actual OCR engine (e.g., ML Kit, Tesseract)
        // This is a mock implementation
        
        val startTime = System.currentTimeMillis()
        
        // Simulate OCR processing
        Thread.sleep(1000)
        
        val processingTime = System.currentTimeMillis() - startTime
        
        // Mock extracted fields
        val fields = OCRFields(
            tcNo = FieldData("12345678901", 0.95),
            name = FieldData("AHMET", 0.92),
            surname = FieldData("YILMAZ", 0.93),
            birthDate = FieldData("01.01.1990", 0.91),
            documentNo = FieldData("A12345678", 0.94)
        )
        
        return OCRResult(
            status = "SUCCESS",
            confidence = 0.93,
            fields = fields,
            processingTime = processingTime,
            imageQuality = 0.88,
            hasGlare = false,
            isBlurry = false,
            lightingCondition = "GOOD"
        )
    }
    
    private fun createFieldsMap(fields: OCRFields): WritableMap {
        return Arguments.createMap().apply {
            putMap("tcNo", createFieldDataMap(fields.tcNo))
            putMap("name", createFieldDataMap(fields.name))
            putMap("surname", createFieldDataMap(fields.surname))
            putMap("birthDate", createFieldDataMap(fields.birthDate))
            putMap("documentNo", createFieldDataMap(fields.documentNo))
        }
    }
    
    private fun createFieldDataMap(fieldData: FieldData): WritableMap {
        return Arguments.createMap().apply {
            putString("value", fieldData.value)
            putDouble("confidence", fieldData.confidence)
        }
    }
    
    private fun createMetadata(ocrResult: OCRResult): WritableMap {
        return Arguments.createMap().apply {
            putInt("processingTime", ocrResult.processingTime.toInt())
            putDouble("imageQuality", ocrResult.imageQuality)
            putBoolean("hasGlare", ocrResult.hasGlare)
            putBoolean("isBlurry", ocrResult.isBlurry)
            putString("lightingCondition", ocrResult.lightingCondition)
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
        scope.cancel()
    }
    
    companion object {
        private const val MIN_CONFIDENCE_THRESHOLD = 0.85
    }
}

// ==================== Data Classes ====================

data class OCRResult(
    val status: String,
    val confidence: Double,
    val fields: OCRFields,
    val processingTime: Long,
    val imageQuality: Double,
    val hasGlare: Boolean,
    val isBlurry: Boolean,
    val lightingCondition: String
)

data class OCRFields(
    val tcNo: FieldData,
    val name: FieldData,
    val surname: FieldData,
    val birthDate: FieldData,
    val documentNo: FieldData
)

data class FieldData(
    val value: String,
    val confidence: Double
)
