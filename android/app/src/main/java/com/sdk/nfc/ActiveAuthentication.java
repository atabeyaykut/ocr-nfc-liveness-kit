package com.sdk.nfc;

import android.nfc.tech.IsoDep;
import android.util.Log;

import org.bouncycastle.asn1.*;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.*;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/**
 * Active Authentication (AA) - ICAO 9303 compliant
 * 
 * Implements:
 * - DG15 public key extraction
 * - Challenge-response protocol with chip
 * - RSA-2048/ECDSA signature verification
 * - Timeout and retry mechanisms
 * 
 * Security:
 * - No PII in logs (SEC-002 compliant)
 * - 10-second timeout per operation
 * - 2 automatic retries on transient failures
 * - Thread-safe Future-based API
 * 
 * @author Mobile SDK Team
 * @version 1.0.0
 */
public class ActiveAuthentication {
    
    private static final String TAG = "ActiveAuth"; // SEC-LOG: shortened tag
    
    // Error codes
    public static final String ERR_NFC_AA_TIMEOUT = "ERR_NFC_AA_TIMEOUT";
    public static final String ERR_NFC_AA_CHALLENGE_FAILED = "ERR_NFC_AA_CHALLENGE_FAILED";
    public static final String ERR_NFC_AA_SIGNATURE_INVALID = "ERR_NFC_AA_SIGNATURE_INVALID";
    public static final String ERR_NFC_AA_DG15_PARSE_FAILED = "ERR_NFC_AA_DG15_PARSE_FAILED";
    public static final String ERR_NFC_AA_UNSUPPORTED_KEY = "ERR_NFC_AA_UNSUPPORTED_KEY";
    public static final String ERR_NFC_AA_CHIP_ERROR = "ERR_NFC_AA_CHIP_ERROR";
    
    // APDU commands for Active Authentication
    private static final byte[] SELECT_MRTD_APP = {
        (byte) 0x00, (byte) 0xA4, (byte) 0x04, (byte) 0x0C, (byte) 0x07,
        (byte) 0xA0, (byte) 0x00, (byte) 0x00, (byte) 0x02, (byte) 0x47,
        (byte) 0x10, (byte) 0x01
    };
    
    private static final byte CLA_INTERNAL_AUTHENTICATE = (byte) 0x00;
    private static final byte INS_INTERNAL_AUTHENTICATE = (byte) 0x88;
    
    // Timeouts and retries
    private static final int OPERATION_TIMEOUT_MS = 10000; // 10 seconds
    private static final int MAX_RETRIES = 2;
    private static final int CHALLENGE_SIZE = 8; // 8 bytes for challenge
    
    static {
        // Register BouncyCastle provider
        if (Security.getProvider(BouncyCastleProvider.PROVIDER_NAME) == null) {
            Security.addProvider(new BouncyCastleProvider());
            if (BuildConfig.DEBUG) {
                Log.d(TAG, "BouncyCastle provider registered");
            }
        }
    }
    
    /**
     * Active Authentication Result
     */
    public static class AAResult {
        public final boolean isValid;
        public final String errorCode;
        public final String errorMessage;
        public final AAMetadata metadata;
        
        public AAResult(boolean isValid, String errorCode, String errorMessage, AAMetadata metadata) {
            this.isValid = isValid;
            this.errorCode = errorCode;
            this.errorMessage = errorMessage;
            this.metadata = metadata;
        }
        
        public static AAResult success(AAMetadata metadata) {
            return new AAResult(true, null, null, metadata);
        }
        
        public static AAResult failure(String errorCode, String errorMessage, AAMetadata metadata) {
            return new AAResult(false, errorCode, errorMessage, metadata);
        }
    }
    
    /**
     * Active Authentication Metadata
     */
    public static class AAMetadata {
        public final boolean dg15Parsed;
        public final boolean challengeSent;
        public final boolean responseReceived;
        public final boolean signatureValid;
        public final String keyAlgorithm;
        public final int keySize;
        public final int retryCount;
        public final long validationDurationMs;
        
        public AAMetadata(boolean dg15Parsed, boolean challengeSent, boolean responseReceived,
                         boolean signatureValid, String keyAlgorithm, int keySize,
                         int retryCount, long validationDurationMs) {
            this.dg15Parsed = dg15Parsed;
            this.challengeSent = challengeSent;
            this.responseReceived = responseReceived;
            this.signatureValid = signatureValid;
            this.keyAlgorithm = keyAlgorithm;
            this.keySize = keySize;
            this.retryCount = retryCount;
            this.validationDurationMs = validationDurationMs;
        }
        
        public static AAMetadata empty() {
            return new AAMetadata(false, false, false, false, null, 0, 0, 0);
        }
    }
    
    /**
     * Perform Active Authentication (async)
     * 
     * @param isoDep IsoDep tag for communication
     * @param dg15 Data Group 15 containing public key
     * @return Future<AAResult>
     */
    public Future<AAResult> authenticate(IsoDep isoDep, byte[] dg15) {
        return CompletableFuture.supplyAsync(() -> {
            long startTime = System.currentTimeMillis();
            int retryCount = 0;
            
            try {
                // SEC-LOG: No PII in logs
                if (BuildConfig.DEBUG) {
                    Log.d(TAG, String.format("AA started: DG15=%d bytes", dg15.length));
                }
                
                // Step 1: Extract public key from DG15
                PublicKey publicKey;
                String keyAlgorithm;
                int keySize;
                try {
                    publicKey = extractPublicKeyFromDG15(dg15);
                    keyAlgorithm = publicKey.getAlgorithm();
                    keySize = getKeySize(publicKey);
                    
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, String.format("Public key extracted: %s-%d", 
                                keyAlgorithm, keySize));
                    }
                } catch (Exception e) {
                    Log.e(TAG, "DG15 parse failed", e);
                    return AAResult.failure(ERR_NFC_AA_DG15_PARSE_FAILED,
                            "Failed to extract public key from DG15: " + e.getMessage(),
                            AAMetadata.empty());
                }
                
                // Step 2: Connect to chip
                try {
                    if (!isoDep.isConnected()) {
                        isoDep.connect();
                        isoDep.setTimeout(OPERATION_TIMEOUT_MS);
                    }
                    
                    // Select MRTD application
                    byte[] response = isoDep.transceive(SELECT_MRTD_APP);
                    if (!isSuccess(response)) {
                        Log.e(TAG, "Failed to select MRTD application");
                        return AAResult.failure(ERR_NFC_AA_CHIP_ERROR,
                                "Failed to select MRTD application",
                                new AAMetadata(true, false, false, false, keyAlgorithm,
                                        keySize, retryCount, System.currentTimeMillis() - startTime));
                    }
                    
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, "MRTD application selected");
                    }
                } catch (IOException e) {
                    Log.e(TAG, "Chip connection failed", e);
                    return AAResult.failure(ERR_NFC_AA_CHIP_ERROR,
                            "Failed to connect to chip: " + e.getMessage(),
                            new AAMetadata(true, false, false, false, keyAlgorithm,
                                    keySize, retryCount, System.currentTimeMillis() - startTime));
                }
                
                // Step 3: Perform challenge-response with retries
                byte[] challenge = generateChallenge();
                byte[] signedResponse = null;
                boolean challengeSent = false;
                boolean responseReceived = false;
                
                for (retryCount = 0; retryCount <= MAX_RETRIES; retryCount++) {
                    try {
                        if (BuildConfig.DEBUG && retryCount > 0) {
                            Log.d(TAG, "Retry attempt: " + retryCount);
                        }
                        
                        // Send INTERNAL AUTHENTICATE command
                        byte[] apdu = buildInternalAuthenticateAPDU(challenge);
                        signedResponse = isoDep.transceive(apdu);
                        challengeSent = true;
                        
                        if (isSuccess(signedResponse)) {
                            responseReceived = true;
                            if (BuildConfig.DEBUG) {
                                Log.d(TAG, "Challenge-response successful");
                            }
                            break; // Success, exit retry loop
                        } else {
                            Log.w(TAG, "Challenge-response failed, status: " + 
                                    getStatusWord(signedResponse));
                        }
                        
                    } catch (IOException e) {
                        Log.w(TAG, "Challenge-response IO error (attempt " + (retryCount + 1) + ")", e);
                        if (retryCount == MAX_RETRIES) {
                            return AAResult.failure(ERR_NFC_AA_CHALLENGE_FAILED,
                                    "Challenge-response failed after " + (retryCount + 1) + " attempts",
                                    new AAMetadata(true, challengeSent, false, false, keyAlgorithm,
                                            keySize, retryCount, System.currentTimeMillis() - startTime));
                        }
                        // Wait before retry
                        try {
                            Thread.sleep(500);
                        } catch (InterruptedException ie) {
                            Thread.currentThread().interrupt();
                        }
                    }
                }
                
                if (!responseReceived || signedResponse == null) {
                    return AAResult.failure(ERR_NFC_AA_CHALLENGE_FAILED,
                            "Failed to receive valid response from chip",
                            new AAMetadata(true, challengeSent, false, false, keyAlgorithm,
                                    keySize, retryCount, System.currentTimeMillis() - startTime));
                }
                
                // Step 4: Verify signature
                boolean signatureValid;
                try {
                    // Remove status word (last 2 bytes)
                    byte[] signature = Arrays.copyOf(signedResponse, signedResponse.length - 2);
                    signatureValid = verifySignature(publicKey, challenge, signature, keyAlgorithm);
                    
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, "Signature verification: " + (signatureValid ? "PASS" : "FAIL"));
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Signature verification failed", e);
                    return AAResult.failure(ERR_NFC_AA_SIGNATURE_INVALID,
                            "Signature verification failed: " + e.getMessage(),
                            new AAMetadata(true, true, true, false, keyAlgorithm,
                                    keySize, retryCount, System.currentTimeMillis() - startTime));
                }
                
                if (!signatureValid) {
                    return AAResult.failure(ERR_NFC_AA_SIGNATURE_INVALID,
                            "Chip signature is invalid",
                            new AAMetadata(true, true, true, false, keyAlgorithm,
                                    keySize, retryCount, System.currentTimeMillis() - startTime));
                }
                
                // All validations passed
                long duration = System.currentTimeMillis() - startTime;
                if (BuildConfig.DEBUG) {
                    Log.d(TAG, String.format("AA completed successfully in %dms (retries: %d)",
                            duration, retryCount));
                }
                
                AAMetadata metadata = new AAMetadata(true, true, true, true, keyAlgorithm,
                        keySize, retryCount, duration);
                return AAResult.success(metadata);
                
            } catch (Exception e) {
                // SEC-ERR: Catch-all for unexpected errors
                Log.e(TAG, "AA unexpected error", e);
                return AAResult.failure("ERR_NFC_AA_FAILED",
                        "Active authentication failed: " + e.getMessage(),
                        AAMetadata.empty());
            } finally {
                // Cleanup
                try {
                    if (isoDep != null && isoDep.isConnected()) {
                        isoDep.close();
                    }
                } catch (IOException e) {
                    Log.w(TAG, "Failed to close IsoDep", e);
                }
            }
        });
    }
    
    /**
     * Extract public key from DG15
     */
    private PublicKey extractPublicKeyFromDG15(byte[] dg15) throws Exception {
        // Parse DG15 ASN.1 structure
        ASN1InputStream asn1InputStream = new ASN1InputStream(new ByteArrayInputStream(dg15));
        ASN1Primitive asn1Primitive = asn1InputStream.readObject();
        asn1InputStream.close();
        
        if (!(asn1Primitive instanceof ASN1Sequence)) {
            throw new Exception("DG15 is not a valid ASN.1 sequence");
        }
        
        ASN1Sequence sequence = (ASN1Sequence) asn1Primitive;
        
        // Extract SubjectPublicKeyInfo
        SubjectPublicKeyInfo spki = SubjectPublicKeyInfo.getInstance(sequence.getObjectAt(0));
        byte[] publicKeyBytes = spki.getEncoded();
        
        // Generate PublicKey
        X509EncodedKeySpec keySpec = new X509EncodedKeySpec(publicKeyBytes);
        
        // Try RSA first
        try {
            KeyFactory keyFactory = KeyFactory.getInstance("RSA", "BC");
            return keyFactory.generatePublic(keySpec);
        } catch (Exception e) {
            // Try ECDSA
            try {
                KeyFactory keyFactory = KeyFactory.getInstance("EC", "BC");
                return keyFactory.generatePublic(keySpec);
            } catch (Exception e2) {
                throw new Exception("Unsupported key type in DG15");
            }
        }
    }
    
    /**
     * Get key size in bits
     */
    private int getKeySize(PublicKey publicKey) {
        if (publicKey instanceof java.security.interfaces.RSAPublicKey) {
            return ((java.security.interfaces.RSAPublicKey) publicKey).getModulus().bitLength();
        } else if (publicKey instanceof java.security.interfaces.ECPublicKey) {
            return ((java.security.interfaces.ECPublicKey) publicKey).getParams().getCurve().getField().getFieldSize();
        }
        return 0;
    }
    
    /**
     * Generate random challenge (8 bytes)
     */
    private byte[] generateChallenge() {
        byte[] challenge = new byte[CHALLENGE_SIZE];
        new SecureRandom().nextBytes(challenge);
        
        if (BuildConfig.DEBUG) {
            // SEC-LOG: Challenge is not PII, but still be careful
            Log.d(TAG, "Challenge generated: " + challenge.length + " bytes");
        }
        
        return challenge;
    }
    
    /**
     * Build INTERNAL AUTHENTICATE APDU
     */
    private byte[] buildInternalAuthenticateAPDU(byte[] challenge) {
        byte[] apdu = new byte[5 + challenge.length + 1];
        apdu[0] = CLA_INTERNAL_AUTHENTICATE;
        apdu[1] = INS_INTERNAL_AUTHENTICATE;
        apdu[2] = 0x00; // P1
        apdu[3] = 0x00; // P2
        apdu[4] = (byte) challenge.length; // Lc
        System.arraycopy(challenge, 0, apdu, 5, challenge.length);
        apdu[5 + challenge.length] = 0x00; // Le (expect response)
        
        return apdu;
    }
    
    /**
     * Verify signature using public key
     */
    private boolean verifySignature(PublicKey publicKey, byte[] challenge, byte[] signature,
                                   String keyAlgorithm) throws Exception {
        String signatureAlgorithm;
        
        if ("RSA".equals(keyAlgorithm)) {
            signatureAlgorithm = "SHA256withRSA";
        } else if ("EC".equals(keyAlgorithm)) {
            signatureAlgorithm = "SHA256withECDSA";
        } else {
            throw new Exception("Unsupported key algorithm: " + keyAlgorithm);
        }
        
        Signature sig = Signature.getInstance(signatureAlgorithm, "BC");
        sig.initVerify(publicKey);
        sig.update(challenge);
        
        return sig.verify(signature);
    }
    
    /**
     * Check if APDU response indicates success (SW1=0x90, SW2=0x00)
     */
    private boolean isSuccess(byte[] response) {
        if (response == null || response.length < 2) {
            return false;
        }
        return response[response.length - 2] == (byte) 0x90 &&
               response[response.length - 1] == (byte) 0x00;
    }
    
    /**
     * Get status word from APDU response
     */
    private String getStatusWord(byte[] response) {
        if (response == null || response.length < 2) {
            return "UNKNOWN";
        }
        return String.format("%02X%02X", 
                response[response.length - 2] & 0xFF,
                response[response.length - 1] & 0xFF);
    }
}
