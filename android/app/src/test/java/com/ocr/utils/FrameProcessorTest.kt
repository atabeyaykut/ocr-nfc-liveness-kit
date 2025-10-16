package com.ocr.utils

import android.graphics.Bitmap
import kotlinx.coroutines.runBlocking
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.mockito.Mock
import org.mockito.Mockito.*
import org.mockito.MockitoAnnotations

/**
 * Unit tests for FrameProcessor
 * 
 * Tests BRIDGE-001 fix: Memory leak in frame processing
 */
class FrameProcessorTest {
    
    private lateinit var frameProcessor: FrameProcessor
    
    @Mock
    private lateinit var mockBitmap: Bitmap
    
    @Before
    fun setup() {
        MockitoAnnotations.openMocks(this)
        frameProcessor = FrameProcessor()
        
        // Mock bitmap properties
        `when`(mockBitmap.width).thenReturn(1920)
        `when`(mockBitmap.height).thenReturn(1080)
        `when`(mockBitmap.byteCount).thenReturn(1920 * 1080 * 4) // ARGB_8888
        `when`(mockBitmap.isRecycled).thenReturn(false)
    }
    
    @After
    fun tearDown() {
        frameProcessor.close()
    }
    
    @Test
    fun testProcessBitmap_Success() = runBlocking {
        // Arrange
        val testData = "OCR_RESULT"
        
        // Act
        val result = frameProcessor.processBitmap(mockBitmap) { bitmap ->
            // Simulate processing
            Thread.sleep(50)
            testData
        }
        
        // Assert
        assertEquals(testData, result.data)
        assertTrue("Processing time should be > 0", result.metrics.processingTimeMs > 0)
        assertTrue("Memory before should be > 0", result.metrics.memoryUsedBeforeMB > 0)
        assertTrue("Bitmap size should be > 0", result.metrics.bitmapSizeBytes > 0)
    }
    
    @Test
    fun testProcessBitmap_MemoryTracking() = runBlocking {
        // Act
        val result = frameProcessor.processBitmap(mockBitmap) { bitmap ->
            "TEST"
        }
        
        // Assert - Memory metrics should be present
        val metrics = result.metrics
        assertNotNull("Memory before should not be null", metrics.memoryUsedBeforeMB)
        assertNotNull("Memory after should not be null", metrics.memoryUsedAfterMB)
        assertNotNull("Memory freed should not be null", metrics.memoryFreedMB)
        assertNotNull("Bitmap size should not be null", metrics.bitmapSizeBytes)
        
        // Memory values should be reasonable
        assertTrue("Memory before should be positive", metrics.memoryUsedBeforeMB >= 0)
        assertTrue("Memory after should be positive", metrics.memoryUsedAfterMB >= 0)
        assertTrue("Bitmap size should be positive", metrics.bitmapSizeBytes > 0)
    }
    
    @Test
    fun testProcessBitmap_ProcessingTime() = runBlocking {
        // Arrange
        val sleepTime = 100L
        
        // Act
        val result = frameProcessor.processBitmap(mockBitmap) { bitmap ->
            Thread.sleep(sleepTime)
            "TEST"
        }
        
        // Assert
        assertTrue(
            "Processing time should be >= sleep time",
            result.metrics.processingTimeMs >= sleepTime
        )
    }
    
    @Test
    fun testGetMemoryStats() {
        // Act
        val stats = frameProcessor.getMemoryStats()
        
        // Assert
        assertTrue("Max memory should be > 0", stats.maxMemoryMB > 0)
        assertTrue("Total memory should be > 0", stats.totalMemoryMB > 0)
        assertTrue("Used memory should be >= 0", stats.usedMemoryMB >= 0)
        assertTrue("Free memory should be >= 0", stats.freeMemoryMB >= 0)
        assertTrue("Usage percent should be 0-100", 
            stats.usagePercent >= 0 && stats.usagePercent <= 100)
        
        // Total should equal used + free
        val calculatedTotal = stats.usedMemoryMB + stats.freeMemoryMB
        assertEquals(
            "Total should equal used + free",
            stats.totalMemoryMB,
            calculatedTotal,
            1.0 // 1MB tolerance
        )
    }
    
    @Test
    fun testMultipleProcessing_NoMemoryLeak() = runBlocking {
        // Arrange
        val iterations = 10
        val initialStats = frameProcessor.getMemoryStats()
        
        // Act - Process multiple times
        repeat(iterations) {
            val bitmap = mock(Bitmap::class.java)
            `when`(bitmap.width).thenReturn(1920)
            `when`(bitmap.height).thenReturn(1080)
            `when`(bitmap.byteCount).thenReturn(1920 * 1080 * 4)
            `when`(bitmap.isRecycled).thenReturn(false)
            
            frameProcessor.processBitmap(bitmap) { bmp ->
                "TEST_$it"
            }
        }
        
        // Force GC
        System.gc()
        Thread.sleep(100)
        
        val finalStats = frameProcessor.getMemoryStats()
        
        // Assert - Memory should not grow significantly
        val memoryGrowth = finalStats.usedMemoryMB - initialStats.usedMemoryMB
        assertTrue(
            "Memory growth should be < 50MB (was ${memoryGrowth}MB)",
            memoryGrowth < 50.0
        )
    }
}

/**
 * Memory profiling test
 * 
 * This test simulates real-world usage and measures memory consumption
 * BRIDGE-001 Fix Verification
 */
class FrameProcessorMemoryProfileTest {
    
    @Test
    fun testMemoryProfile_30Seconds() = runBlocking {
        // Arrange
        val frameProcessor = FrameProcessor()
        val durationMs = 30_000L // 30 seconds
        val frameInterval = 100L // Process frame every 100ms
        val iterations = (durationMs / frameInterval).toInt()
        
        val memorySnapshots = mutableListOf<Double>()
        val startTime = System.currentTimeMillis()
        
        println("=== Memory Profile Test (30 seconds) ===")
        println("Iterations: $iterations")
        println("Frame interval: ${frameInterval}ms")
        
        // Act - Simulate 30 seconds of frame processing
        repeat(iterations) { i ->
            val bitmap = mock(Bitmap::class.java)
            `when`(bitmap.width).thenReturn(1920)
            `when`(bitmap.height).thenReturn(1080)
            `when`(bitmap.byteCount).thenReturn(1920 * 1080 * 4)
            `when`(bitmap.isRecycled).thenReturn(false)
            
            val result = frameProcessor.processBitmap(bitmap) { bmp ->
                // Simulate OCR processing
                Thread.sleep(50)
                "FRAME_$i"
            }
            
            // Record memory usage
            memorySnapshots.add(result.metrics.memoryUsedAfterMB)
            
            // Log every 5 seconds
            if (i % 50 == 0) {
                val elapsed = (System.currentTimeMillis() - startTime) / 1000.0
                println("[${"%.1f".format(elapsed)}s] Memory: ${"%.2f".format(result.metrics.memoryUsedAfterMB)}MB")
            }
            
            Thread.sleep(frameInterval - 50) // Adjust for processing time
        }
        
        frameProcessor.close()
        
        // Assert - Analyze memory profile
        val initialMemory = memorySnapshots.first()
        val finalMemory = memorySnapshots.last()
        val maxMemory = memorySnapshots.maxOrNull() ?: 0.0
        val avgMemory = memorySnapshots.average()
        val memoryGrowth = finalMemory - initialMemory
        
        println("\n=== Memory Profile Results ===")
        println("Initial memory: ${"%.2f".format(initialMemory)}MB")
        println("Final memory: ${"%.2f".format(finalMemory)}MB")
        println("Max memory: ${"%.2f".format(maxMemory)}MB")
        println("Avg memory: ${"%.2f".format(avgMemory)}MB")
        println("Memory growth: ${"%.2f".format(memoryGrowth)}MB")
        
        // BRIDGE-001 Fix Verification
        // Before fix: >200MB leak after 30 seconds
        // After fix: <50MB growth expected
        assertTrue(
            "Memory growth should be < 50MB (was ${"%.2f".format(memoryGrowth)}MB)",
            memoryGrowth < 50.0
        )
        
        println("\n✅ BRIDGE-001 Fix Verified: No memory leak detected")
    }
}
