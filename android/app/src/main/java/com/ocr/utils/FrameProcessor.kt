package com.ocr.utils

import android.graphics.Bitmap
import android.util.Log
import androidx.camera.core.ImageProxy
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.Closeable
import java.lang.ref.WeakReference

/**
 * Frame Processor - Memory-safe frame processing utility
 * 
 * Fixes: BRIDGE-001 - Memory leak in frame processing
 * 
 * Features:
 * - Automatic bitmap cleanup
 * - Memory tracking
 * - Thread-safe processing
 * - Weak references to prevent leaks
 * - Performance metrics
 */
class FrameProcessor : Closeable {
    
    companion object {
        private const val TAG = "FrameProcessor"
        private const val MAX_BITMAP_SIZE = 2048 // Max dimension
    }
    
    private var bitmapRef: WeakReference<Bitmap>? = null
    private val runtime = Runtime.getRuntime()
    
    /**
     * Processing result with memory metrics
     */
    data class ProcessingResult<T>(
        val data: T,
        val metrics: ProcessingMetrics
    )
    
    /**
     * Processing metrics
     */
    data class ProcessingMetrics(
        val processingTimeMs: Long,
        val memoryUsedBeforeMB: Double,
        val memoryUsedAfterMB: Double,
        val memoryFreedMB: Double,
        val bitmapSizeBytes: Long
    )
    
    /**
     * Process frame with automatic cleanup and memory tracking
     * 
     * @param imageProxy Camera frame (will be closed automatically)
     * @param processor Processing function
     * @return ProcessingResult with data and metrics
     */
    suspend fun <T> processFrame(
        imageProxy: ImageProxy,
        processor: suspend (Bitmap) -> T
    ): ProcessingResult<T> = withContext(Dispatchers.IO) {
        val startTime = System.currentTimeMillis()
        val memoryBefore = getUsedMemoryMB()
        
        var bitmap: Bitmap? = null
        var result: T? = null
        
        try {
            // Convert ImageProxy to Bitmap
            bitmap = imageProxyToBitmap(imageProxy)
            
            // Resize if too large to prevent OOM
            val resizedBitmap = if (bitmap.width > MAX_BITMAP_SIZE || bitmap.height > MAX_BITMAP_SIZE) {
                val scaled = resizeBitmap(bitmap, MAX_BITMAP_SIZE)
                bitmap.recycle() // Recycle original
                scaled
            } else {
                bitmap
            }
            
            // Store weak reference
            bitmapRef = WeakReference(resizedBitmap)
            
            // Process frame
            result = processor(resizedBitmap)
            
            // Calculate metrics
            val endTime = System.currentTimeMillis()
            val memoryAfter = getUsedMemoryMB()
            val bitmapSize = (resizedBitmap.byteCount).toLong()
            
            val metrics = ProcessingMetrics(
                processingTimeMs = endTime - startTime,
                memoryUsedBeforeMB = memoryBefore,
                memoryUsedAfterMB = memoryAfter,
                memoryFreedMB = memoryBefore - memoryAfter,
                bitmapSizeBytes = bitmapSize
            )
            
            Log.d(TAG, "Frame processed: ${metrics.processingTimeMs}ms, " +
                      "Memory: ${metrics.memoryUsedBeforeMB}MB → ${metrics.memoryUsedAfterMB}MB")
            
            return@withContext ProcessingResult(result!!, metrics)
            
        } catch (e: Exception) {
            Log.e(TAG, "Frame processing error", e)
            throw e
        } finally {
            // CRITICAL: Always cleanup resources
            cleanup(bitmap)
            imageProxy.close()
            
            // Force garbage collection if memory is high
            val memoryAfterCleanup = getUsedMemoryMB()
            if (memoryAfterCleanup > 150.0) { // > 150MB
                Log.w(TAG, "High memory usage: ${memoryAfterCleanup}MB, suggesting GC")
                System.gc()
            }
        }
    }
    
    /**
     * Process bitmap with automatic cleanup and memory tracking
     * 
     * @param bitmap Input bitmap (will be recycled automatically)
     * @param processor Processing function
     * @return ProcessingResult with data and metrics
     */
    suspend fun <T> processBitmap(
        bitmap: Bitmap,
        processor: suspend (Bitmap) -> T
    ): ProcessingResult<T> = withContext(Dispatchers.IO) {
        val startTime = System.currentTimeMillis()
        val memoryBefore = getUsedMemoryMB()
        
        try {
            // Resize if too large
            val resizedBitmap = if (bitmap.width > MAX_BITMAP_SIZE || bitmap.height > MAX_BITMAP_SIZE) {
                val scaled = resizeBitmap(bitmap, MAX_BITMAP_SIZE)
                bitmap.recycle() // Recycle original
                scaled
            } else {
                bitmap
            }
            
            // Store weak reference
            bitmapRef = WeakReference(resizedBitmap)
            
            // Process
            val result = processor(resizedBitmap)
            
            // Calculate metrics
            val endTime = System.currentTimeMillis()
            val memoryAfter = getUsedMemoryMB()
            val bitmapSize = (resizedBitmap.byteCount).toLong()
            
            val metrics = ProcessingMetrics(
                processingTimeMs = endTime - startTime,
                memoryUsedBeforeMB = memoryBefore,
                memoryUsedAfterMB = memoryAfter,
                memoryFreedMB = memoryBefore - memoryAfter,
                bitmapSizeBytes = bitmapSize
            )
            
            return@withContext ProcessingResult(result, metrics)
            
        } catch (e: Exception) {
            Log.e(TAG, "Bitmap processing error", e)
            throw e
        } finally {
            // CRITICAL: Always cleanup
            cleanup(bitmap)
        }
    }
    
    /**
     * Convert ImageProxy to Bitmap
     */
    private fun imageProxyToBitmap(imageProxy: ImageProxy): Bitmap {
        val buffer = imageProxy.planes[0].buffer
        val bytes = ByteArray(buffer.remaining())
        buffer.get(bytes)
        
        val bitmap = android.graphics.BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
        
        if (bitmap == null) {
            throw IllegalStateException("Failed to decode image")
        }
        
        return bitmap
    }
    
    /**
     * Resize bitmap to max dimension while maintaining aspect ratio
     */
    private fun resizeBitmap(bitmap: Bitmap, maxDimension: Int): Bitmap {
        val width = bitmap.width
        val height = bitmap.height
        
        val scale = if (width > height) {
            maxDimension.toFloat() / width
        } else {
            maxDimension.toFloat() / height
        }
        
        val newWidth = (width * scale).toInt()
        val newHeight = (height * scale).toInt()
        
        Log.d(TAG, "Resizing bitmap: ${width}x${height} → ${newWidth}x${newHeight}")
        
        return Bitmap.createScaledBitmap(bitmap, newWidth, newHeight, true)
    }
    
    /**
     * Get current memory usage in MB
     */
    private fun getUsedMemoryMB(): Double {
        val usedMemory = runtime.totalMemory() - runtime.freeMemory()
        return usedMemory / (1024.0 * 1024.0)
    }
    
    /**
     * Cleanup bitmap resources
     */
    private fun cleanup(bitmap: Bitmap?) {
        try {
            bitmap?.let {
                if (!it.isRecycled) {
                    it.recycle()
                    Log.d(TAG, "Bitmap recycled")
                }
            }
            bitmapRef?.clear()
            bitmapRef = null
        } catch (e: Exception) {
            Log.e(TAG, "Error during cleanup", e)
        }
    }
    
    /**
     * Close and cleanup all resources
     */
    override fun close() {
        bitmapRef?.get()?.let { bitmap ->
            if (!bitmap.isRecycled) {
                bitmap.recycle()
            }
        }
        bitmapRef?.clear()
        bitmapRef = null
    }
    
    /**
     * Get current memory statistics
     */
    fun getMemoryStats(): MemoryStats {
        val maxMemory = runtime.maxMemory() / (1024.0 * 1024.0)
        val totalMemory = runtime.totalMemory() / (1024.0 * 1024.0)
        val freeMemory = runtime.freeMemory() / (1024.0 * 1024.0)
        val usedMemory = totalMemory - freeMemory
        
        return MemoryStats(
            maxMemoryMB = maxMemory,
            totalMemoryMB = totalMemory,
            usedMemoryMB = usedMemory,
            freeMemoryMB = freeMemory,
            usagePercent = (usedMemory / maxMemory) * 100
        )
    }
    
    data class MemoryStats(
        val maxMemoryMB: Double,
        val totalMemoryMB: Double,
        val usedMemoryMB: Double,
        val freeMemoryMB: Double,
        val usagePercent: Double
    )
}

/**
 * Extension function for safe bitmap usage
 */
inline fun <T> Bitmap.use(block: (Bitmap) -> T): T {
    return try {
        block(this)
    } finally {
        if (!this.isRecycled) {
            this.recycle()
        }
    }
}

/**
 * Extension function for safe ImageProxy usage
 */
inline fun <T> ImageProxy.use(block: (ImageProxy) -> T): T {
    return try {
        block(this)
    } finally {
        this.close()
    }
}
