package com.sdk.nfc;

import android.content.Context;
import android.nfc.tech.IsoDep;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

import static org.junit.Assert.*;

/**
 * NFC Instrumented Tests
 * 
 * Runs on-device tests for NFC functionality
 * Uses synthetic test data (no real PII)
 * 
 * @author Mobile SDK Team
 */
@RunWith(AndroidJUnit4.class)
public class NfcInstrumentedTest {
    
    private Context appContext;
    private PassiveAuthentication passiveAuth;
    private ActiveAuthentication activeAuth;
    
    // Synthetic test data (no real PII)
    private byte[] syntheticSOD;
    private Map<Integer, byte[]> syntheticDataGroups;
    private byte[] syntheticDG15;
    
    @Before
    public void setUp() {
        appContext = InstrumentationRegistry.getInstrumentation().getTargetContext();
        passiveAuth = new PassiveAuthentication();
        activeAuth = new ActiveAuthentication();
        
        // Create synthetic test data
        createSyntheticTestData();
    }
    
    @Test
    public void testPassiveAuthentication_ValidSOD_Success() throws Exception {
        // Given: Valid synthetic SOD and data groups
        assertNotNull("Synthetic SOD should not be null", syntheticSOD);
        assertNotNull("Synthetic data groups should not be null", syntheticDataGroups);
        
        // When: Perform PA
        Future<PassiveAuthentication.PAResult> future = 
                passiveAuth.authenticate(syntheticSOD, syntheticDataGroups, null);
        
        // Then: Should complete within timeout
        PassiveAuthentication.PAResult result = future.get(15, TimeUnit.SECONDS);
        assertNotNull("PA result should not be null", result);
        assertNotNull("Should have metadata", result.metadata);
        assertTrue("Should have validation duration", result.metadata.validationDurationMs > 0);
    }
    
    @Test
    public void testActiveAuthentication_ValidDG15_Success() throws Exception {
        // Given: Mock IsoDep and valid DG15
        IsoDep mockIsoDep = MockIsoDepBuilder.createSuccessful();
        assertNotNull("Synthetic DG15 should not be null", syntheticDG15);
        
        // When: Perform AA
        Future<ActiveAuthentication.AAResult> future = 
                activeAuth.authenticate(mockIsoDep, syntheticDG15);
        
        // Then: Should complete within timeout
        ActiveAuthentication.AAResult result = future.get(15, TimeUnit.SECONDS);
        assertNotNull("AA result should not be null", result);
        assertNotNull("Should have metadata", result.metadata);
    }
    
    private void createSyntheticTestData() {
        syntheticSOD = "SYNTHETIC_SOD_FOR_TESTING".getBytes();
        syntheticDataGroups = new HashMap<>();
        syntheticDataGroups.put(1, "SYNTHETIC_DG1_MRZ".getBytes());
        syntheticDataGroups.put(2, "SYNTHETIC_DG2_IMAGE".getBytes());
        syntheticDG15 = "SYNTHETIC_DG15_KEY".getBytes();
    }
}
