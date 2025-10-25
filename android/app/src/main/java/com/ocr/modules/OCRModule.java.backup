package com.ocr.modules;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import com.facebook.react.bridge.*;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.ocr.security.SecureStorage;
import com.ocr.utils.FrameProcessor;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/**
 * OCR Module - Java implementation with secure token-based data exchange
 * 
 * Fixes:
 * - SEC-001: PII leakage through React Native bridge
 * - BRIDGE-001: Memory leak in frame processing
 * 
 * Features:
 * - scan() returns only sessionToken + metadata (NO PII)
 * - getResult() retrieves PII securely (one-time use)
 * - Memory metrics tracking
 * - ExecutorService for async operations
 * 
 * Kotlin→Java conversion:
 * - Coroutines → ExecutorService
 * - Promise callbacks on UI thread
 * - Manual resource cleanup
 */
@ReactModule(name = "OCRModule")
public class OCRModule extends ReactContextBaseJavaModule {
    
    private static final String TAG = "OCRModule";
    private static final double MIN_CONFIDENCE_THRESHOLD = 0.85;
    
    private final SecureStorage secureStorage;
    private final FrameProcessor frameProcessor;
    private final ExecutorService executorService;
    private final Handler mainHandler;
    
    public OCRModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.secureStorage = SecureStorage.getInstance(reactContext);
        this.frameProcessor = new FrameProcessor();
        this.executorService = Executors.newFixedThreadPool(2);
        this.mainHandler = new Handler(Looper.getMainLooper());
    }
    
    @Override
    public String getName() {
        return "OCRModule";
    }
    
    /**
     * Scan document and extract text
     * Returns only sessionToken + metadata + memory metrics (NO PII)
     * 
     * @param imageUri Path to image file
     * @param promise React Native promise
     */
    @ReactMethod
    public void scan(String imageUri, Promise promise) {
        executorService.submit(() -> {
            try {
                Log.d(TAG, "Starting OCR scan for: " + imageUri);
                
                // Load image
                Bitmap bitmap = BitmapFactory.decodeFile(imageUri);
                if (bitmap == null) {
                    rejectOnUIThread(promise, "OCR_INVALID_IMAGE", "Failed to load image", 
                            createErrorMap("OCR_INVALID_IMAGE", "Invalid image file", 0.0, true));
                    return;
                }
                
                // Process with automatic cleanup and memory tracking
                Future<FrameProcessor.ProcessingResult<OCRResult>> future = 
                        frameProcessor.processBitmap(bitmap, this::performOCR);
                
                FrameProcessor.ProcessingResult<OCRResult> processingResult = future.get();
                OCRResult ocrResult = processingResult.data;
                FrameProcessor.ProcessingMetrics metrics = processingResult.metrics;
                
                Log.d(TAG, String.format("OCR completed: confidence=%.2f, time=%dms, memory=%.2fMB→%.2fMB",
                        ocrResult.confidence, metrics.processingTimeMs, 
                        metrics.memoryUsedBeforeMB, metrics.memoryUsedAfterMB));
                
                // Check confidence threshold
                if (ocrResult.confidence < MIN_CONFIDENCE_THRESHOLD) {
                    Log.w(TAG, "Low confidence: " + ocrResult.confidence);
                    rejectOnUIThread(promise, "OCR_001", 
                            "Low confidence score: " + ocrResult.confidence,
                            createErrorMap("OCR_001", "Low confidence score", ocrResult.confidence, true));
                    return;
                }
                
                // Generate session token
                String sessionToken = secureStorage.generateToken();
                
                // Store PII data securely (5 minute TTL)
                secureStorage.save(sessionToken, ocrResult, 300_000L);
                
                // Get current memory stats
                FrameProcessor.MemoryStats memoryStats = frameProcessor.getMemoryStats();
                
                // Return only token + metadata + memory metrics (NO PII)
                WritableMap response = Arguments.createMap();
                response.putString("status", "SUCCESS");
                response.putString("sessionToken", sessionToken);
                response.putDouble("confidence", ocrResult.confidence);
                
                WritableMap metadata = Arguments.createMap();
                metadata.putString("documentType", "ID_CARD");
                metadata.putInt("fieldCount", 5);
                
                // Memory metrics
                WritableMap performance = Arguments.createMap();
                performance.putDouble("processingTimeMs", (double) metrics.processingTimeMs);
                performance.putDouble("memoryUsedBeforeMB", metrics.memoryUsedBeforeMB);
                performance.putDouble("memoryUsedAfterMB", metrics.memoryUsedAfterMB);
                performance.putDouble("memoryFreedMB", metrics.memoryFreedMB);
                performance.putDouble("bitmapSizeMB", metrics.bitmapSizeBytes / (1024.0 * 1024.0));
                performance.putDouble("currentMemoryUsageMB", memoryStats.usedMemoryMB);
                performance.putDouble("memoryUsagePercent", memoryStats.usagePercent);
                
                metadata.putMap("performance", performance);
                response.putMap("metadata", metadata);
                
                Log.d(TAG, "OCR scan successful: token=" + sessionToken);
                resolveOnUIThread(promise, response);
                
                // Emit success event (no PII)
                WritableMap eventData = Arguments.createMap();
                eventData.putString("sessionToken", sessionToken);
                eventData.putDouble("confidence", ocrResult.confidence);
                eventData.putDouble("processingTimeMs", (double) metrics.processingTimeMs);
                sendEvent("OCR_SUCCESS", eventData);
                
            } catch (Exception e) {
                Log.e(TAG, "OCR scan error", e);
                rejectOnUIThread(promise, "OCR_999", "Unexpected error: " + e.getMessage(), null);
            }
        });
    }
    
    /**
     * Retrieve OCR result by session token
     * This is the ONLY method that returns PII data
     * 
     * @param sessionToken Session token from scan()
     * @param promise React Native promise
     */
    @ReactMethod
    public void getResult(String sessionToken, Promise promise) {
        executorService.submit(() -> {
            try {
                if (sessionToken == null || sessionToken.isEmpty()) {
                    rejectOnUIThread(promise, "OCR_INVALID_TOKEN", "Session token is required", null);
                    return;
                }
                
                // Retrieve from secure storage
                OCRResult ocrResult = secureStorage.get(sessionToken, OCRResult.class);
                
                if (ocrResult == null) {
                    rejectOnUIThread(promise, "OCR_TOKEN_EXPIRED",
                            "Session token expired or invalid",
                            createErrorMap("OCR_TOKEN_EXPIRED", "Token expired (5 minute TTL)", 0.0, false));
                    return;
                }
                
                // Delete token after retrieval (one-time use)
                secureStorage.delete(sessionToken);
                
                // Return full data including PII
                WritableMap response = Arguments.createMap();
                response.putString("status", ocrResult.status);
                response.putDouble("confidence", ocrResult.confidence);
                
                WritableMap fields = Arguments.createMap();
                fields.putMap("tcNo", createFieldDataMap(ocrResult.fields.tcNo));
                fields.putMap("name", createFieldDataMap(ocrResult.fields.name));
                fields.putMap("surname", createFieldDataMap(ocrResult.fields.surname));
                fields.putMap("birthDate", createFieldDataMap(ocrResult.fields.birthDate));
                fields.putMap("serialNumber", createFieldDataMap(ocrResult.fields.serialNumber));
                
                response.putMap("fields", fields);
                
                WritableMap metadata = Arguments.createMap();
                metadata.putString("documentType", "ID_CARD");
                metadata.putInt("fieldCount", 5);
                metadata.putString("processingMethod", "ML_KIT");
                response.putMap("metadata", metadata);
                
                resolveOnUIThread(promise, response);
                
            } catch (Exception e) {
                Log.e(TAG, "Failed to retrieve OCR result", e);
                rejectOnUIThread(promise, "OCR_RETRIEVAL_ERROR", 
                        "Failed to retrieve result: " + e.getMessage(), null);
            }
        });
    }
    
    /**
     * Check if session token is valid
     * 
     * @param sessionToken Session token to validate
     * @param promise React Native promise
     */
    @ReactMethod
    public void isTokenValid(String sessionToken, Promise promise) {
        try {
            boolean isValid = secureStorage.isValid(sessionToken);
            resolveOnUIThread(promise, isValid);
        } catch (Exception e) {
            rejectOnUIThread(promise, "OCR_VALIDATION_ERROR", 
                    "Failed to validate token: " + e.getMessage(), null);
        }
    }
    
    /**
     * Cleanup expired tokens
     * 
     * @param promise React Native promise
     */
    @ReactMethod
    public void cleanupExpiredTokens(Promise promise) {
        executorService.submit(() -> {
            try {
                secureStorage.cleanupExpired();
                resolveOnUIThread(promise, true);
            } catch (Exception e) {
                rejectOnUIThread(promise, "OCR_CLEANUP_ERROR", 
                        "Failed to cleanup: " + e.getMessage(), null);
            }
        });
    }
    
    /**
     * Get current memory statistics
     * 
     * @param promise React Native promise
     */
    @ReactMethod
    public void getMemoryStats(Promise promise) {
        try {
            FrameProcessor.MemoryStats stats = frameProcessor.getMemoryStats();
            
            WritableMap response = Arguments.createMap();
            response.putDouble("maxMemoryMB", stats.maxMemoryMB);
            response.putDouble("totalMemoryMB", stats.totalMemoryMB);
            response.putDouble("usedMemoryMB", stats.usedMemoryMB);
            response.putDouble("freeMemoryMB", stats.freeMemoryMB);
            response.putDouble("usagePercent", stats.usagePercent);
            
            resolveOnUIThread(promise, response);
        } catch (Exception e) {
            rejectOnUIThread(promise, "OCR_MEMORY_ERROR", 
                    "Failed to get memory stats: " + e.getMessage(), null);
        }
    }
    
    // ==================== Private Helper Methods ====================
    
    /**
     * Perform OCR on bitmap (mock implementation)
     * Replace with actual OCR engine (ML Kit, Tesseract, etc.)
     */
    private OCRResult performOCR(Bitmap bitmap) throws Exception {
        // Simulate OCR processing
        Thread.sleep(100);
        
        return new OCRResult(
                "SUCCESS",
                0.93,
                new OCRFields(
                        new FieldData("12345678901", 0.95),
                        new FieldData("AHMET", 0.92),
                        new FieldData("YILMAZ", 0.94),
                        new FieldData("01.01.1990", 0.91),
                        new FieldData("A12B34567", 0.93)
                )
        );
    }
    
    /**
     * Create field data map for React Native
     */
    private WritableMap createFieldDataMap(FieldData fieldData) {
        WritableMap map = Arguments.createMap();
        map.putString("value", fieldData.value);
        map.putDouble("confidence", fieldData.confidence);
        return map;
    }
    
    /**
     * Create error map for React Native
     */
    private WritableMap createErrorMap(String code, String message, double confidence, boolean retryable) {
        WritableMap map = Arguments.createMap();
        map.putString("code", code);
        map.putString("message", message);
        map.putDouble("confidence", confidence);
        map.putBoolean("retryable", retryable);
        return map;
    }
    
    /**
     * Send event to React Native (no PII)
     */
    private void sendEvent(String eventName, WritableMap params) {
        getReactApplicationContext()
                .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                .emit(eventName, params);
    }
    
    /**
     * Resolve promise on UI thread
     */
    private void resolveOnUIThread(Promise promise, Object value) {
        mainHandler.post(() -> promise.resolve(value));
    }
    
    /**
     * Reject promise on UI thread
     */
    private void rejectOnUIThread(Promise promise, String code, String message, WritableMap userInfo) {
        mainHandler.post(() -> {
            if (userInfo != null) {
                promise.reject(code, message, userInfo);
            } else {
                promise.reject(code, message);
            }
        });
    }
    
    /**
     * Cleanup resources
     */
    @Override
    public void onCatalystInstanceDestroy() {
        super.onCatalystInstanceDestroy();
        frameProcessor.close();
        executorService.shutdown();
        Log.d(TAG, "OCRModule destroyed and resources cleaned up");
    }
    
    // ==================== Data Classes ====================
    
    public static class OCRResult {
        public final String status;
        public final double confidence;
        public final OCRFields fields;
        
        public OCRResult(String status, double confidence, OCRFields fields) {
            this.status = status;
            this.confidence = confidence;
            this.fields = fields;
        }
    }
    
    public static class OCRFields {
        public final FieldData tcNo;
        public final FieldData name;
        public final FieldData surname;
        public final FieldData birthDate;
        public final FieldData serialNumber;
        
        public OCRFields(FieldData tcNo, FieldData name, FieldData surname, 
                        FieldData birthDate, FieldData serialNumber) {
            this.tcNo = tcNo;
            this.name = name;
            this.surname = surname;
            this.birthDate = birthDate;
            this.serialNumber = serialNumber;
        }
    }
    
    public static class FieldData {
        public final String value;
        public final double confidence;
        
        public FieldData(String value, double confidence) {
            this.value = value;
            this.confidence = confidence;
        }
    }
}
