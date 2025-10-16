package com.ocr.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.media.Image;
import android.util.Log;

import androidx.camera.core.ImageProxy;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/**
 * Frame Processor - Java implementation with proper YUV420 to RGB conversion
 * 
 * Fixes: BRIDGE-001 - Memory leak in frame processing
 * 
 * Features:
 * - Automatic bitmap cleanup
 * - Memory tracking
 * - Thread-safe processing via ExecutorService
 * - Weak references to prevent leaks
 * - Performance metrics
 * - CORRECT YUV420 to RGB conversion (fixes AUDIT-004)
 * 
 * Kotlin→Java conversion notes:
 * - Replaced coroutines with ExecutorService
 * - Replaced suspend functions with Future<T>
 * - Replaced inline functions with regular methods
 * - Added explicit null checks for WeakReference (fixes AUDIT-006)
 * - Added double-recycle protection (fixes AUDIT-005)
 */
public class FrameProcessor implements Closeable {
    
    private static final String TAG = "FrameProcessor";
    private static final int MAX_BITMAP_SIZE = 2048;
    
    private final ExecutorService executorService;
    private final Runtime runtime;
    private WeakReference<Bitmap> bitmapRef;
    
    public FrameProcessor() {
        this.executorService = Executors.newSingleThreadExecutor();
        this.runtime = Runtime.getRuntime();
        Log.d(TAG, "FrameProcessor initialized");
    }
    
    /**
     * Processing result with memory metrics
     */
    public static class ProcessingResult<T> {
        public final T data;
        public final ProcessingMetrics metrics;
        
        public ProcessingResult(T data, ProcessingMetrics metrics) {
            this.data = data;
            this.metrics = metrics;
        }
    }
    
    /**
     * Processing metrics
     */
    public static class ProcessingMetrics {
        public final long processingTimeMs;
        public final double memoryUsedBeforeMB;
        public final double memoryUsedAfterMB;
        public final double memoryFreedMB;
        public final long bitmapSizeBytes;
        
        public ProcessingMetrics(long processingTimeMs, double memoryUsedBeforeMB,
                                double memoryUsedAfterMB, double memoryFreedMB,
                                long bitmapSizeBytes) {
            this.processingTimeMs = processingTimeMs;
            this.memoryUsedBeforeMB = memoryUsedBeforeMB;
            this.memoryUsedAfterMB = memoryUsedAfterMB;
            this.memoryFreedMB = memoryFreedMB;
            this.bitmapSizeBytes = bitmapSizeBytes;
        }
    }
    
    /**
     * Processor callback interface
     */
    public interface Processor<T> {
        T process(Bitmap bitmap) throws Exception;
    }
    
    /**
     * Process ImageProxy with automatic cleanup and memory tracking
     * FIXES AUDIT-004: Proper YUV420 to RGB conversion
     */
    public <T> Future<ProcessingResult<T>> processFrame(ImageProxy imageProxy, Processor<T> processor) {
        return executorService.submit(() -> {
            long startTime = System.currentTimeMillis();
            double memoryBefore = getUsedMemoryMB();
            
            Bitmap bitmap = null;
            Bitmap resizedBitmap = null;
            T result = null;
            
            try {
                // Convert ImageProxy to Bitmap (CORRECT YUV420 conversion)
                bitmap = imageProxyToBitmap(imageProxy);
                
                if (bitmap == null) {
                    throw new IllegalStateException("Failed to convert ImageProxy to Bitmap");
                }
                
                // Resize if too large to prevent OOM
                if (bitmap.getWidth() > MAX_BITMAP_SIZE || bitmap.getHeight() > MAX_BITMAP_SIZE) {
                    resizedBitmap = resizeBitmap(bitmap, MAX_BITMAP_SIZE);
                    
                    // AUDIT-005 FIX: Safe recycle with null check
                    if (bitmap != null && !bitmap.isRecycled()) {
                        bitmap.recycle();
                        bitmap = null; // Prevent double-recycle
                    }
                } else {
                    resizedBitmap = bitmap;
                    bitmap = null; // Transfer ownership
                }
                
                // Store weak reference (AUDIT-006 FIX: will check for null later)
                bitmapRef = new WeakReference<>(resizedBitmap);
                
                // Process frame
                result = processor.process(resizedBitmap);
                
                // Calculate metrics
                long endTime = System.currentTimeMillis();
                double memoryAfter = getUsedMemoryMB();
                long bitmapSize = (long) resizedBitmap.getByteCount();
                
                ProcessingMetrics metrics = new ProcessingMetrics(
                        endTime - startTime,
                        memoryBefore,
                        memoryAfter,
                        memoryBefore - memoryAfter,
                        bitmapSize
                );
                
                Log.d(TAG, String.format("Frame processed: %dms, Memory: %.2fMB → %.2fMB",
                        metrics.processingTimeMs, metrics.memoryUsedBeforeMB, metrics.memoryUsedAfterMB));
                
                return new ProcessingResult<>(result, metrics);
                
            } catch (Exception e) {
                Log.e(TAG, "Frame processing error", e);
                throw e;
            } finally {
                // CRITICAL: Always cleanup resources
                cleanup(bitmap);
                cleanup(resizedBitmap);
                
                if (imageProxy != null) {
                    imageProxy.close();
                }
                
                // Force GC if memory is high
                double memoryAfterCleanup = getUsedMemoryMB();
                if (memoryAfterCleanup > 150.0) {
                    Log.w(TAG, String.format("High memory usage: %.2fMB, suggesting GC", memoryAfterCleanup));
                    System.gc();
                }
            }
        });
    }
    
    /**
     * Process Bitmap with automatic cleanup and memory tracking
     */
    public <T> Future<ProcessingResult<T>> processBitmap(Bitmap bitmap, Processor<T> processor) {
        return executorService.submit(() -> {
            long startTime = System.currentTimeMillis();
            double memoryBefore = getUsedMemoryMB();
            
            Bitmap resizedBitmap = null;
            T result = null;
            
            try {
                // Resize if too large
                if (bitmap.getWidth() > MAX_BITMAP_SIZE || bitmap.getHeight() > MAX_BITMAP_SIZE) {
                    resizedBitmap = resizeBitmap(bitmap, MAX_BITMAP_SIZE);
                    
                    // AUDIT-005 FIX: Safe recycle
                    if (bitmap != null && !bitmap.isRecycled()) {
                        bitmap.recycle();
                    }
                } else {
                    resizedBitmap = bitmap;
                }
                
                // Store weak reference
                bitmapRef = new WeakReference<>(resizedBitmap);
                
                // Process
                result = processor.process(resizedBitmap);
                
                // Calculate metrics
                long endTime = System.currentTimeMillis();
                double memoryAfter = getUsedMemoryMB();
                long bitmapSize = (long) resizedBitmap.getByteCount();
                
                ProcessingMetrics metrics = new ProcessingMetrics(
                        endTime - startTime,
                        memoryBefore,
                        memoryAfter,
                        memoryBefore - memoryAfter,
                        bitmapSize
                );
                
                return new ProcessingResult<>(result, metrics);
                
            } catch (Exception e) {
                Log.e(TAG, "Bitmap processing error", e);
                throw e;
            } finally {
                // CRITICAL: Always cleanup
                cleanup(resizedBitmap);
            }
        });
    }
    
    /**
     * Convert ImageProxy to Bitmap with CORRECT YUV420 to RGB conversion
     * FIXES AUDIT-004: Previous implementation only read Y plane (grayscale)
     * 
     * This implementation properly converts YUV420 to RGB using all 3 planes
     */
    private Bitmap imageProxyToBitmap(ImageProxy imageProxy) {
        try {
            Image image = imageProxy.getImage();
            if (image == null) {
                throw new IllegalStateException("ImageProxy.getImage() returned null");
            }
            
            // Get image dimensions
            int width = image.getWidth();
            int height = image.getHeight();
            
            // YUV420 format has 3 planes: Y, U, V
            Image.Plane[] planes = image.getPlanes();
            if (planes.length < 3) {
                throw new IllegalStateException("Expected 3 planes for YUV420, got " + planes.length);
            }
            
            // Get plane buffers
            ByteBuffer yBuffer = planes[0].getBuffer();
            ByteBuffer uBuffer = planes[1].getBuffer();
            ByteBuffer vBuffer = planes[2].getBuffer();
            
            // Get strides and pixel strides
            int yRowStride = planes[0].getRowStride();
            int uvRowStride = planes[1].getRowStride();
            int uvPixelStride = planes[1].getPixelStride();
            
            // Convert YUV420 to NV21 format (which YuvImage supports)
            byte[] nv21 = yuv420ToNv21(yBuffer, uBuffer, vBuffer, width, height,
                    yRowStride, uvRowStride, uvPixelStride);
            
            // Create YuvImage from NV21 data
            YuvImage yuvImage = new YuvImage(nv21, ImageFormat.NV21, width, height, null);
            
            // Convert YuvImage to Bitmap
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            yuvImage.compressToJpeg(new Rect(0, 0, width, height), 100, out);
            byte[] jpegData = out.toByteArray();
            
            Bitmap bitmap = BitmapFactory.decodeByteArray(jpegData, 0, jpegData.length);
            
            if (bitmap == null) {
                throw new IllegalStateException("Failed to decode YUV to Bitmap");
            }
            
            Log.d(TAG, String.format("ImageProxy converted to Bitmap: %dx%d", width, height));
            
            return bitmap;
            
        } catch (Exception e) {
            Log.e(TAG, "Failed to convert ImageProxy to Bitmap", e);
            throw new RuntimeException("ImageProxy conversion failed", e);
        }
    }
    
    /**
     * Convert YUV420 to NV21 format
     * This is the CORRECT way to handle YUV420 from ImageProxy
     */
    private byte[] yuv420ToNv21(ByteBuffer yBuffer, ByteBuffer uBuffer, ByteBuffer vBuffer,
                                int width, int height, int yRowStride, int uvRowStride,
                                int uvPixelStride) {
        int ySize = width * height;
        int uvSize = width * height / 4;
        
        byte[] nv21 = new byte[ySize + uvSize * 2];
        
        // Copy Y plane
        if (yRowStride == width) {
            yBuffer.get(nv21, 0, ySize);
        } else {
            int pos = 0;
            for (int row = 0; row < height; row++) {
                yBuffer.position(row * yRowStride);
                yBuffer.get(nv21, pos, width);
                pos += width;
            }
        }
        
        // Copy UV planes (interleaved as VU for NV21)
        int pos = ySize;
        for (int row = 0; row < height / 2; row++) {
            for (int col = 0; col < width / 2; col++) {
                int uvIndex = row * uvRowStride + col * uvPixelStride;
                nv21[pos++] = vBuffer.get(uvIndex);
                nv21[pos++] = uBuffer.get(uvIndex);
            }
        }
        
        return nv21;
    }
    
    /**
     * Resize bitmap to max dimension while maintaining aspect ratio
     */
    private Bitmap resizeBitmap(Bitmap bitmap, int maxDimension) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        
        float scale = (width > height)
                ? (float) maxDimension / width
                : (float) maxDimension / height;
        
        int newWidth = Math.round(width * scale);
        int newHeight = Math.round(height * scale);
        
        Log.d(TAG, String.format("Resizing bitmap: %dx%d → %dx%d", width, height, newWidth, newHeight));
        
        return Bitmap.createScaledBitmap(bitmap, newWidth, newHeight, true);
    }
    
    /**
     * Get current memory usage in MB
     */
    private double getUsedMemoryMB() {
        long usedMemory = runtime.totalMemory() - runtime.freeMemory();
        return usedMemory / (1024.0 * 1024.0);
    }
    
    /**
     * Cleanup bitmap resources with AUDIT-005 and AUDIT-006 fixes
     */
    private void cleanup(Bitmap bitmap) {
        try {
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.recycle();
                Log.d(TAG, "Bitmap recycled");
            }
        } catch (Exception e) {
            Log.e(TAG, "Error during bitmap cleanup", e);
        }
    }
    
    /**
     * Close and cleanup all resources
     */
    @Override
    public void close() {
        // AUDIT-006 FIX: Null-check WeakReference.get()
        if (bitmapRef != null) {
            Bitmap bitmap = bitmapRef.get();
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
            bitmapRef.clear();
            bitmapRef = null;
        }
        
        executorService.shutdown();
        Log.d(TAG, "FrameProcessor closed");
    }
    
    /**
     * Get current memory statistics
     */
    public MemoryStats getMemoryStats() {
        double maxMemory = runtime.maxMemory() / (1024.0 * 1024.0);
        double totalMemory = runtime.totalMemory() / (1024.0 * 1024.0);
        double freeMemory = runtime.freeMemory() / (1024.0 * 1024.0);
        double usedMemory = totalMemory - freeMemory;
        
        return new MemoryStats(maxMemory, totalMemory, usedMemory, freeMemory,
                (usedMemory / maxMemory) * 100);
    }
    
    /**
     * Memory statistics POJO
     */
    public static class MemoryStats {
        public final double maxMemoryMB;
        public final double totalMemoryMB;
        public final double usedMemoryMB;
        public final double freeMemoryMB;
        public final double usagePercent;
        
        public MemoryStats(double maxMemoryMB, double totalMemoryMB, double usedMemoryMB,
                          double freeMemoryMB, double usagePercent) {
            this.maxMemoryMB = maxMemoryMB;
            this.totalMemoryMB = totalMemoryMB;
            this.usedMemoryMB = usedMemoryMB;
            this.freeMemoryMB = freeMemoryMB;
            this.usagePercent = usagePercent;
        }
    }
}
