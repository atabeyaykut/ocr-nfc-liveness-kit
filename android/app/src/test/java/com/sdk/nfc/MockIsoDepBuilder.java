package com.sdk.nfc;

import android.nfc.tech.IsoDep;

import org.mockito.Mockito;

import java.io.IOException;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

/**
 * Mock IsoDep Builder - Test utility for NFC testing
 * 
 * Provides:
 * - Easy mock IsoDep creation
 * - Configurable responses
 * - Timeout simulation
 * - Connection failure simulation
 * - Success/failure scenarios
 * 
 * Usage:
 * ```java
 * IsoDep mockIsoDep = MockIsoDepBuilder.create()
 *     .withSuccessfulConnection()
 *     .withSuccessfulChallenge()
 *     .build();
 * ```
 * 
 * @author Mobile SDK Team
 * @version 1.0.0
 */
public class MockIsoDepBuilder {
    
    private final IsoDep mockIsoDep;
    private boolean connected = false;
    private boolean shouldTimeout = false;
    private boolean shouldFailConnection = false;
    private byte[] challengeResponse = null;
    
    private MockIsoDepBuilder() {
        this.mockIsoDep = Mockito.mock(IsoDep.class);
    }
    
    /**
     * Create new builder
     */
    public static MockIsoDepBuilder create() {
        return new MockIsoDepBuilder();
    }
    
    /**
     * Configure successful connection
     */
    public MockIsoDepBuilder withSuccessfulConnection() {
        this.connected = true;
        this.shouldFailConnection = false;
        return this;
    }
    
    /**
     * Configure connection failure
     */
    public MockIsoDepBuilder withConnectionFailure() {
        this.shouldFailConnection = true;
        this.connected = false;
        return this;
    }
    
    /**
     * Configure timeout
     */
    public MockIsoDepBuilder withTimeout() {
        this.shouldTimeout = true;
        return this;
    }
    
    /**
     * Configure successful challenge-response
     */
    public MockIsoDepBuilder withSuccessfulChallenge() {
        // Success response: data + SW1=0x90, SW2=0x00
        this.challengeResponse = new byte[]{
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, // 8 bytes data
                (byte) 0x90, 0x00 // Success status
        };
        return this;
    }
    
    /**
     * Configure failed challenge-response
     */
    public MockIsoDepBuilder withFailedChallenge() {
        // Failure response: SW1=0x6A, SW2=0x82 (file not found)
        this.challengeResponse = new byte[]{
                (byte) 0x6A, (byte) 0x82
        };
        return this;
    }
    
    /**
     * Configure custom challenge response
     */
    public MockIsoDepBuilder withChallengeResponse(byte[] response) {
        this.challengeResponse = response;
        return this;
    }
    
    /**
     * Build mock IsoDep
     */
    public IsoDep build() throws IOException {
        // Configure isConnected()
        when(mockIsoDep.isConnected()).thenReturn(connected);
        
        // Configure connect()
        if (shouldFailConnection) {
            Mockito.doThrow(new IOException("Connection failed"))
                    .when(mockIsoDep).connect();
        } else {
            Mockito.doAnswer(invocation -> {
                connected = true;
                when(mockIsoDep.isConnected()).thenReturn(true);
                return null;
            }).when(mockIsoDep).connect();
        }
        
        // Configure setTimeout()
        Mockito.doNothing().when(mockIsoDep).setTimeout(any(Integer.class));
        
        // Configure transceive()
        if (shouldTimeout) {
            when(mockIsoDep.transceive(any(byte[].class)))
                    .thenThrow(new IOException("Timeout"));
        } else if (challengeResponse != null) {
            when(mockIsoDep.transceive(any(byte[].class)))
                    .thenReturn(challengeResponse);
        } else {
            // Default success response
            when(mockIsoDep.transceive(any(byte[].class)))
                    .thenReturn(new byte[]{(byte) 0x90, 0x00});
        }
        
        // Configure close()
        Mockito.doAnswer(invocation -> {
            connected = false;
            when(mockIsoDep.isConnected()).thenReturn(false);
            return null;
        }).when(mockIsoDep).close();
        
        return mockIsoDep;
    }
    
    /**
     * Create mock with successful scenario
     */
    public static IsoDep createSuccessful() throws IOException {
        return create()
                .withSuccessfulConnection()
                .withSuccessfulChallenge()
                .build();
    }
    
    /**
     * Create mock with connection failure
     */
    public static IsoDep createWithConnectionFailure() throws IOException {
        return create()
                .withConnectionFailure()
                .build();
    }
    
    /**
     * Create mock with timeout
     */
    public static IsoDep createWithTimeout() throws IOException {
        return create()
                .withSuccessfulConnection()
                .withTimeout()
                .build();
    }
    
    /**
     * Create mock with challenge failure
     */
    public static IsoDep createWithChallengeFailure() throws IOException {
        return create()
                .withSuccessfulConnection()
                .withFailedChallenge()
                .build();
    }
}
