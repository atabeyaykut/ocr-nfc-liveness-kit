package com.sdk.network;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

import okhttp3.OkHttpClient;

import static org.junit.Assert.*;

/**
 * Unit tests for SecureNetworkClient
 * 
 * Tests:
 * - Singleton pattern
 * - Certificate pin management
 * - Certificate rotation
 * - Pin validation
 * - Thread safety
 * 
 * Coverage target: >= 80%
 * 
 * @author Mobile SDK Team
 */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 28, manifest = Config.NONE)
public class SecureNetworkClientTest {
    
    private SecureNetworkClient client;
    
    private static final String TEST_DOMAIN = "api.example.com";
    private static final String TEST_HASH = "sha256/AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
    private static final String TEST_HASH_2 = "sha256/BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB=";
    
    @Before
    public void setUp() {
        client = SecureNetworkClient.getInstance();
        // Clear all pins before each test
        client.clearAllPins();
    }
    
    // ========== Singleton Tests ==========
    
    @Test
    public void testGetInstance_ReturnsSameInstance() {
        // When: Get instance multiple times
        SecureNetworkClient instance1 = SecureNetworkClient.getInstance();
        SecureNetworkClient instance2 = SecureNetworkClient.getInstance();
        
        // Then: Should return same instance
        assertSame(instance1, instance2);
    }
    
    @Test
    public void testGetInstance_NotNull() {
        // When: Get instance
        SecureNetworkClient instance = SecureNetworkClient.getInstance();
        
        // Then: Should not be null
        assertNotNull(instance);
    }
    
    // ========== Certificate Pin Management Tests ==========
    
    @Test
    public void testAddCertificatePin_Success() {
        // When: Add certificate pin
        client.addCertificatePin(TEST_DOMAIN, TEST_HASH);
        
        // Then: Pin should exist
        assertTrue(client.hasCertificatePin(TEST_DOMAIN));
        assertEquals(1, client.getPinCount());
    }
    
    @Test(expected = IllegalArgumentException.class)
    public void testAddCertificatePin_NullDomain_ThrowsException() {
        // When: Add pin with null domain
        client.addCertificatePin(null, TEST_HASH);
        
        // Then: Should throw IllegalArgumentException
    }
    
    @Test(expected = IllegalArgumentException.class)
    public void testAddCertificatePin_EmptyDomain_ThrowsException() {
        // When: Add pin with empty domain
        client.addCertificatePin("", TEST_HASH);
        
        // Then: Should throw IllegalArgumentException
    }
    
    @Test(expected = IllegalArgumentException.class)
    public void testAddCertificatePin_NullHash_ThrowsException() {
        // When: Add pin with null hash
        client.addCertificatePin(TEST_DOMAIN, null);
        
        // Then: Should throw IllegalArgumentException
    }
    
    @Test(expected = IllegalArgumentException.class)
    public void testAddCertificatePin_InvalidHashFormat_ThrowsException() {
        // When: Add pin with invalid hash format (missing sha256/ prefix)
        client.addCertificatePin(TEST_DOMAIN, "AAAAAAAAAA");
        
        // Then: Should throw IllegalArgumentException
    }
    
    @Test
    public void testAddCertificatePin_MultipleDomains_Success() {
        // When: Add pins for multiple domains
        client.addCertificatePin("api1.example.com", TEST_HASH);
        client.addCertificatePin("api2.example.com", TEST_HASH_2);
        
        // Then: Both pins should exist
        assertTrue(client.hasCertificatePin("api1.example.com"));
        assertTrue(client.hasCertificatePin("api2.example.com"));
        assertEquals(2, client.getPinCount());
    }
    
    @Test
    public void testRemoveCertificatePin_Success() {
        // Given: Pin exists
        client.addCertificatePin(TEST_DOMAIN, TEST_HASH);
        assertTrue(client.hasCertificatePin(TEST_DOMAIN));
        
        // When: Remove pin
        client.removeCertificatePin(TEST_DOMAIN);
        
        // Then: Pin should not exist
        assertFalse(client.hasCertificatePin(TEST_DOMAIN));
        assertEquals(0, client.getPinCount());
    }
    
    @Test
    public void testRemoveCertificatePin_NonExistentDomain_NoError() {
        // When: Remove pin for non-existent domain
        client.removeCertificatePin("nonexistent.com");
        
        // Then: Should not throw error
        assertEquals(0, client.getPinCount());
    }
    
    @Test
    public void testClearAllPins_Success() {
        // Given: Multiple pins exist
        client.addCertificatePin("api1.example.com", TEST_HASH);
        client.addCertificatePin("api2.example.com", TEST_HASH_2);
        assertEquals(2, client.getPinCount());
        
        // When: Clear all pins
        client.clearAllPins();
        
        // Then: No pins should exist
        assertEquals(0, client.getPinCount());
        assertFalse(client.hasCertificatePin("api1.example.com"));
        assertFalse(client.hasCertificatePin("api2.example.com"));
    }
    
    // ========== Certificate Rotation Tests ==========
    
    @Test
    public void testUpdatePinnedCertificate_Success() {
        // Given: Pin exists
        client.addCertificatePin(TEST_DOMAIN, TEST_HASH);
        
        // When: Update pin
        client.updatePinnedCertificate(TEST_DOMAIN, TEST_HASH_2);
        
        // Then: Pin should be updated
        assertTrue(client.hasCertificatePin(TEST_DOMAIN));
        assertEquals(1, client.getPinCount());
    }
    
    @Test(expected = IllegalStateException.class)
    public void testUpdatePinnedCertificate_NonExistentDomain_ThrowsException() {
        // When: Update pin for non-existent domain
        client.updatePinnedCertificate("nonexistent.com", TEST_HASH);
        
        // Then: Should throw IllegalStateException
    }
    
    // ========== Pin Validation Tests ==========
    
    @Test
    public void testHasCertificatePin_ExistingDomain_ReturnsTrue() {
        // Given: Pin exists
        client.addCertificatePin(TEST_DOMAIN, TEST_HASH);
        
        // When: Check if pin exists
        boolean hasPin = client.hasCertificatePin(TEST_DOMAIN);
        
        // Then: Should return true
        assertTrue(hasPin);
    }
    
    @Test
    public void testHasCertificatePin_NonExistentDomain_ReturnsFalse() {
        // When: Check if pin exists for non-existent domain
        boolean hasPin = client.hasCertificatePin("nonexistent.com");
        
        // Then: Should return false
        assertFalse(hasPin);
    }
    
    @Test
    public void testGetPinCount_NoPins_ReturnsZero() {
        // When: Get pin count with no pins
        int count = client.getPinCount();
        
        // Then: Should return 0
        assertEquals(0, count);
    }
    
    @Test
    public void testGetPinCount_MultiplePins_ReturnsCorrectCount() {
        // Given: Multiple pins exist
        client.addCertificatePin("api1.example.com", TEST_HASH);
        client.addCertificatePin("api2.example.com", TEST_HASH_2);
        client.addCertificatePin("api3.example.com", TEST_HASH);
        
        // When: Get pin count
        int count = client.getPinCount();
        
        // Then: Should return correct count
        assertEquals(3, count);
    }
    
    // ========== OkHttpClient Tests ==========
    
    @Test
    public void testGetClient_NotNull() {
        // When: Get OkHttpClient
        OkHttpClient okHttpClient = client.getClient();
        
        // Then: Should not be null
        assertNotNull(okHttpClient);
    }
    
    @Test
    public void testGetClient_ReturnsSameInstance() {
        // When: Get client multiple times without pin changes
        OkHttpClient client1 = client.getClient();
        OkHttpClient client2 = client.getClient();
        
        // Then: Should return same instance
        assertSame(client1, client2);
    }
    
    @Test
    public void testGetClient_RebuildsAfterPinChange() {
        // Given: Get initial client
        OkHttpClient client1 = client.getClient();
        
        // When: Add pin (triggers rebuild)
        client.addCertificatePin(TEST_DOMAIN, TEST_HASH);
        OkHttpClient client2 = client.getClient();
        
        // Then: Should return different instance (rebuilt)
        assertNotSame(client1, client2);
    }
    
    // ========== NetworkResponse Tests ==========
    
    @Test
    public void testNetworkResponse_Success() {
        // When: Create success response
        SecureNetworkClient.NetworkResponse response = 
                SecureNetworkClient.NetworkResponse.success(200, "{\"status\":\"ok\"}");
        
        // Then: Should be successful
        assertTrue(response.isSuccessful);
        assertEquals(200, response.statusCode);
        assertEquals("{\"status\":\"ok\"}", response.body);
        assertNull(response.errorMessage);
    }
    
    @Test
    public void testNetworkResponse_Error() {
        // When: Create error response
        SecureNetworkClient.NetworkResponse response = 
                SecureNetworkClient.NetworkResponse.error(404, "Not Found");
        
        // Then: Should not be successful
        assertFalse(response.isSuccessful);
        assertEquals(404, response.statusCode);
        assertNull(response.body);
        assertEquals("Not Found", response.errorMessage);
    }
    
    // ========== Thread Safety Tests ==========
    
    @Test
    public void testConcurrentPinAddition_ThreadSafe() throws InterruptedException {
        // Given: Multiple threads adding pins
        Thread[] threads = new Thread[10];
        
        for (int i = 0; i < threads.length; i++) {
            final int index = i;
            threads[i] = new Thread(() -> {
                client.addCertificatePin("api" + index + ".example.com", TEST_HASH);
            });
        }
        
        // When: Start all threads
        for (Thread thread : threads) {
            thread.start();
        }
        
        // Wait for all threads to complete
        for (Thread thread : threads) {
            thread.join();
        }
        
        // Then: All pins should be added
        assertEquals(10, client.getPinCount());
    }
    
    @Test
    public void testConcurrentPinRemoval_ThreadSafe() throws InterruptedException {
        // Given: Pins exist
        for (int i = 0; i < 10; i++) {
            client.addCertificatePin("api" + i + ".example.com", TEST_HASH);
        }
        assertEquals(10, client.getPinCount());
        
        // When: Multiple threads removing pins
        Thread[] threads = new Thread[10];
        for (int i = 0; i < threads.length; i++) {
            final int index = i;
            threads[i] = new Thread(() -> {
                client.removeCertificatePin("api" + index + ".example.com");
            });
        }
        
        for (Thread thread : threads) {
            thread.start();
        }
        
        for (Thread thread : threads) {
            thread.join();
        }
        
        // Then: All pins should be removed
        assertEquals(0, client.getPinCount());
    }
}
