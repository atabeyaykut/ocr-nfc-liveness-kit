package com.sdk.nfc;

import android.nfc.tech.IsoDep;
import android.util.Log;

import org.bouncycastle.asn1.*;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.cms.SignedData;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

import java.security.*;
import java.security.cert.X509Certificate;
import java.security.spec.X509EncodedKeySpec;
import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/**
 * NFC Chip Signature Validator - Java implementation with PA/AA
 * 
 * Implements ICAO 9303 compliant digital signature validation for eID/passport chips
 * 
 * Fixes: SEC-002 - NFC chip signature validation missing
 * 
 * Validation Steps:
 * 1. Passive Authentication (PA) - SOD and data group hash verification
 * 2. Active Authentication (AA) - Challenge-response with chip (optional)
 * 3. Certificate chain validation (optional)
 * 
 * Features:
 * - Future-based async API
 * - Comprehensive error codes
 * - No PII in logs (SEC-002 compliant)
 * - Timeout and retry mechanisms
 * 
 * @version 2.0.0 - PA/AA integrated
 */
public class NfcSignatureValidator {
    
    private static final String TAG = "NfcSigValidator"; // SEC-LOG: shortened
    
    // Supported algorithm OIDs
    private static final String SHA256_OID = "2.16.840.1.101.3.4.2.1";
    private static final String SHA1_OID = "1.3.14.3.2.26";
    private static final String RSA_OID = "1.2.840.113549.1.1.1";
    
    // Validation timeout (10 seconds)
    private static final int VALIDATION_TIMEOUT_MS = 10000;
    
    // PA and AA instances
    private final PassiveAuthentication passiveAuth;
    private final ActiveAuthentication activeAuth;
    
    static {
        // Register BouncyCastle security provider
        if (Security.getProvider(BouncyCastleProvider.PROVIDER_NAME) == null) {
            Security.addProvider(new BouncyCastleProvider());
            if (BuildConfig.DEBUG) {
                Log.d(TAG, "BouncyCastle provider registered");
            }
        }
    }
    
    /**
     * Constructor
     */
    public NfcSignatureValidator() {
        this.passiveAuth = new PassiveAuthentication();
        this.activeAuth = new ActiveAuthentication();
    }
    
    /**
     * Validation result (enhanced with PA/AA)
     */
    public static class ValidationResult {
        public final boolean isValid;
        public final String errorCode;
        public final String errorMessage;
        public final ValidationMetadata metadata;
        
        public ValidationResult(boolean isValid, String errorCode, String errorMessage, 
                               ValidationMetadata metadata) {
            this.isValid = isValid;
            this.errorCode = errorCode;
            this.errorMessage = errorMessage;
            this.metadata = metadata;
        }
        
        public static ValidationResult success(ValidationMetadata metadata) {
            return new ValidationResult(true, null, null, metadata);
        }
        
        public static ValidationResult failure(String errorCode, String errorMessage, 
                                              ValidationMetadata metadata) {
            return new ValidationResult(false, errorCode, errorMessage, metadata);
        }
    }
    
    /**
     * Validation metadata (enhanced with PA/AA)
     */
    public static class ValidationMetadata {
        public final boolean signatureValid;
        public final boolean hashesValid;
        public final boolean certificateValid;
        public final boolean passiveAuthValid;
        public final boolean activeAuthValid;
        public final String digestAlgorithm;
        public final String signatureAlgorithm;
        public final long validationDurationMs;
        
        public ValidationMetadata(boolean signatureValid, boolean hashesValid, 
                                 boolean certificateValid, boolean passiveAuthValid,
                                 boolean activeAuthValid, String digestAlgorithm, 
                                 String signatureAlgorithm, long validationDurationMs) {
            this.signatureValid = signatureValid;
            this.hashesValid = hashesValid;
            this.certificateValid = certificateValid;
            this.passiveAuthValid = passiveAuthValid;
            this.activeAuthValid = activeAuthValid;
            this.digestAlgorithm = digestAlgorithm;
            this.signatureAlgorithm = signatureAlgorithm;
            this.validationDurationMs = validationDurationMs;
        }
        
        public static ValidationMetadata empty() {
            return new ValidationMetadata(false, false, false, false, false, null, null, 0);
        }
        
        // Legacy constructor for backward compatibility
        public ValidationMetadata(boolean signatureValid, boolean hashesValid, 
                                 boolean certificateValid, String digestAlgorithm, 
                                 String signatureAlgorithm) {
            this(signatureValid, hashesValid, certificateValid, false, false, 
                 digestAlgorithm, signatureAlgorithm, 0);
        }
    }
    
    /**
     * Validate NFC chip signature with Passive Authentication (PA)
     * Future-based async API with timeout
     * 
     * @param sod Security Object Document
     * @param dg1 Data Group 1 (MRZ data)
     * @param dg2 Data Group 2 (Photo)
     * @param cscaCertificates Optional CSCA certificates for chain validation
     * @return Future<ValidationResult>
     */
    public Future<ValidationResult> validateWithPA(byte[] sod, byte[] dg1, byte[] dg2,
                                                   List<X509Certificate> cscaCertificates) {
        return CompletableFuture.supplyAsync(() -> {
            long startTime = System.currentTimeMillis();
            
            try {
                // SEC-LOG: No PII in logs
                if (BuildConfig.DEBUG) {
                    Log.d(TAG, "Starting PA validation");
                }
                
                // Prepare data groups map
                Map<Integer, byte[]> dataGroups = new HashMap<>();
                dataGroups.put(1, dg1);
                dataGroups.put(2, dg2);
                
                // Perform Passive Authentication
                Future<PassiveAuthentication.PAResult> paFuture = 
                        passiveAuth.authenticate(sod, dataGroups, cscaCertificates);
                
                PassiveAuthentication.PAResult paResult;
                try {
                    paResult = paFuture.get(VALIDATION_TIMEOUT_MS, TimeUnit.MILLISECONDS);
                } catch (TimeoutException e) {
                    Log.e(TAG, "PA timeout", e);
                    return ValidationResult.failure("ERR_NFC_PA_TIMEOUT",
                            "Passive authentication timed out",
                            ValidationMetadata.empty());
                } catch (InterruptedException | ExecutionException e) {
                    Log.e(TAG, "PA execution error", e);
                    return ValidationResult.failure("ERR_NFC_PA_FAILED",
                            "Passive authentication failed: " + e.getMessage(),
                            ValidationMetadata.empty());
                }
                
                if (!paResult.isValid) {
                    // SEC-ERR: Return PA error
                    return ValidationResult.failure(paResult.errorCode, paResult.errorMessage,
                            new ValidationMetadata(false, paResult.metadata.hashesValid,
                                    paResult.metadata.chainValid, false, false,
                                    paResult.metadata.digestAlgorithm,
                                    paResult.metadata.signatureAlgorithm,
                                    System.currentTimeMillis() - startTime));
                }
                
                // PA successful
                if (BuildConfig.DEBUG) {
                    Log.d(TAG, String.format("PA completed in %dms",
                            System.currentTimeMillis() - startTime));
                }
                
                ValidationMetadata metadata = new ValidationMetadata(
                        paResult.metadata.signatureValid,
                        paResult.metadata.hashesValid,
                        paResult.metadata.chainValid,
                        true, // passiveAuthValid
                        false, // activeAuthValid (not performed)
                        paResult.metadata.digestAlgorithm,
                        paResult.metadata.signatureAlgorithm,
                        System.currentTimeMillis() - startTime
                );
                
                return ValidationResult.success(metadata);
                
            } catch (Exception e) {
                // SEC-ERR: Catch-all
                Log.e(TAG, "PA validation error", e);
                return ValidationResult.failure("ERR_NFC_VALIDATION_FAILED",
                        "Validation failed: " + e.getMessage(),
                        ValidationMetadata.empty());
            }
        });
    }
    
    /**
     * Validate NFC chip with both Passive and Active Authentication (PA + AA)
     * Future-based async API with timeout
     * 
     * @param isoDep IsoDep tag for AA communication
     * @param sod Security Object Document
     * @param dg1 Data Group 1 (MRZ data)
     * @param dg2 Data Group 2 (Photo)
     * @param dg15 Data Group 15 (Public Key for AA)
     * @param cscaCertificates Optional CSCA certificates for chain validation
     * @return Future<ValidationResult>
     */
    public Future<ValidationResult> validateWithPAandAA(IsoDep isoDep, byte[] sod,
                                                        byte[] dg1, byte[] dg2, byte[] dg15,
                                                        List<X509Certificate> cscaCertificates) {
        return CompletableFuture.supplyAsync(() -> {
            long startTime = System.currentTimeMillis();
            
            try {
                // SEC-LOG: No PII in logs
                if (BuildConfig.DEBUG) {
                    Log.d(TAG, "Starting PA+AA validation");
                }
                
                // Step 1: Perform Passive Authentication
                Map<Integer, byte[]> dataGroups = new HashMap<>();
                dataGroups.put(1, dg1);
                dataGroups.put(2, dg2);
                
                Future<PassiveAuthentication.PAResult> paFuture = 
                        passiveAuth.authenticate(sod, dataGroups, cscaCertificates);
                
                PassiveAuthentication.PAResult paResult;
                try {
                    paResult = paFuture.get(VALIDATION_TIMEOUT_MS, TimeUnit.MILLISECONDS);
                } catch (TimeoutException e) {
                    Log.e(TAG, "PA timeout", e);
                    return ValidationResult.failure("ERR_NFC_PA_TIMEOUT",
                            "Passive authentication timed out",
                            ValidationMetadata.empty());
                } catch (InterruptedException | ExecutionException e) {
                    Log.e(TAG, "PA execution error", e);
                    return ValidationResult.failure("ERR_NFC_PA_FAILED",
                            "Passive authentication failed: " + e.getMessage(),
                            ValidationMetadata.empty());
                }
                
                if (!paResult.isValid) {
                    // SEC-ERR: PA failed, return without AA
                    Log.w(TAG, "PA failed, skipping AA");
                    return ValidationResult.failure(paResult.errorCode, paResult.errorMessage,
                            new ValidationMetadata(false, paResult.metadata.hashesValid,
                                    paResult.metadata.chainValid, false, false,
                                    paResult.metadata.digestAlgorithm,
                                    paResult.metadata.signatureAlgorithm,
                                    System.currentTimeMillis() - startTime));
                }
                
                if (BuildConfig.DEBUG) {
                    Log.d(TAG, "PA passed, starting AA");
                }
                
                // Step 2: Perform Active Authentication
                Future<ActiveAuthentication.AAResult> aaFuture = 
                        activeAuth.authenticate(isoDep, dg15);
                
                ActiveAuthentication.AAResult aaResult;
                try {
                    aaResult = aaFuture.get(VALIDATION_TIMEOUT_MS, TimeUnit.MILLISECONDS);
                } catch (TimeoutException e) {
                    Log.e(TAG, "AA timeout", e);
                    // WARN: PA passed but AA timed out
                    return ValidationResult.failure(ActiveAuthentication.ERR_NFC_AA_TIMEOUT,
                            "Active authentication timed out (PA passed)",
                            new ValidationMetadata(paResult.metadata.signatureValid,
                                    paResult.metadata.hashesValid,
                                    paResult.metadata.chainValid,
                                    true, // PA passed
                                    false, // AA failed
                                    paResult.metadata.digestAlgorithm,
                                    paResult.metadata.signatureAlgorithm,
                                    System.currentTimeMillis() - startTime));
                } catch (InterruptedException | ExecutionException e) {
                    Log.e(TAG, "AA execution error", e);
                    // WARN: PA passed but AA failed
                    return ValidationResult.failure("ERR_NFC_AA_FAILED",
                            "Active authentication failed (PA passed): " + e.getMessage(),
                            new ValidationMetadata(paResult.metadata.signatureValid,
                                    paResult.metadata.hashesValid,
                                    paResult.metadata.chainValid,
                                    true, // PA passed
                                    false, // AA failed
                                    paResult.metadata.digestAlgorithm,
                                    paResult.metadata.signatureAlgorithm,
                                    System.currentTimeMillis() - startTime));
                }
                
                if (!aaResult.isValid) {
                    // SEC-ERR: PA passed but AA failed
                    Log.w(TAG, "AA failed: " + aaResult.errorMessage);
                    return ValidationResult.failure(aaResult.errorCode, aaResult.errorMessage,
                            new ValidationMetadata(paResult.metadata.signatureValid,
                                    paResult.metadata.hashesValid,
                                    paResult.metadata.chainValid,
                                    true, // PA passed
                                    false, // AA failed
                                    paResult.metadata.digestAlgorithm,
                                    paResult.metadata.signatureAlgorithm,
                                    System.currentTimeMillis() - startTime));
                }
                
                // Both PA and AA successful
                if (BuildConfig.DEBUG) {
                    Log.d(TAG, String.format("PA+AA completed in %dms",
                            System.currentTimeMillis() - startTime));
                }
                
                ValidationMetadata metadata = new ValidationMetadata(
                        true, // signatureValid
                        true, // hashesValid
                        paResult.metadata.chainValid,
                        true, // passiveAuthValid
                        true, // activeAuthValid
                        paResult.metadata.digestAlgorithm,
                        paResult.metadata.signatureAlgorithm,
                        System.currentTimeMillis() - startTime
                );
                
                return ValidationResult.success(metadata);
                
            } catch (Exception e) {
                // SEC-ERR: Catch-all
                Log.e(TAG, "PA+AA validation error", e);
                return ValidationResult.failure("ERR_NFC_VALIDATION_FAILED",
                        "Validation failed: " + e.getMessage(),
                        ValidationMetadata.empty());
            }
        });
    }
    
    /**
     * Legacy: Validate NFC chip signature (synchronous, backward compatible)
     * 
     * @deprecated Use validateWithPA() or validateWithPAandAA() for better security
     * @param dg1 Data Group 1 (MRZ data)
     * @param dg2 Data Group 2 (Photo)
     * @param sod Security Object Document
     * @param dg15 Data Group 15 (Public Key)
     * @return ValidationResult
     */
    @Deprecated
    public ValidationResult validateSignature(byte[] dg1, byte[] dg2, byte[] sod, byte[] dg15) {
        try {
            Log.d(TAG, "Starting signature validation");
            Log.d(TAG, String.format("DG1 size: %d, DG2 size: %d, SOD size: %d, DG15 size: %d",
                    dg1.length, dg2.length, sod.length, dg15.length));
            
            // Step 1: Parse SOD
            SignedData signedData;
            try {
                signedData = parseSOD(sod);
                Log.d(TAG, "SOD parsed successfully");
            } catch (Exception e) {
                Log.e(TAG, "Failed to parse SOD", e);
                return ValidationResult.failure("NFC_004", 
                        "Chip signature invalid: Failed to parse SOD - " + e.getMessage(),
                        ValidationMetadata.empty());
            }
            
            // Step 2: Extract hash algorithm
            String digestAlgorithm;
            try {
                digestAlgorithm = extractDigestAlgorithm(signedData);
                Log.d(TAG, "Digest algorithm: " + digestAlgorithm);
            } catch (Exception e) {
                Log.e(TAG, "Failed to extract digest algorithm", e);
                return ValidationResult.failure("NFC_004",
                        "Chip signature invalid: Unsupported digest algorithm - " + e.getMessage(),
                        ValidationMetadata.empty());
            }
            
            // Step 3: Verify data group hashes
            boolean hashesValid;
            try {
                hashesValid = verifyDataGroupHashes(signedData, dg1, dg2, digestAlgorithm);
            } catch (Exception e) {
                Log.e(TAG, "Failed to verify data group hashes", e);
                return ValidationResult.failure("NFC_004",
                        "Chip signature invalid: Hash verification failed - " + e.getMessage(),
                        new ValidationMetadata(false, false, false, digestAlgorithm, null));
            }
            
            if (!hashesValid) {
                Log.e(TAG, "Data group hashes validation failed");
                return ValidationResult.failure("NFC_004",
                        "Chip signature invalid: Data group hashes do not match",
                        new ValidationMetadata(false, false, false, digestAlgorithm, null));
            }
            Log.d(TAG, "Data group hashes validated successfully");
            
            // Step 4: Extract public key from DG15
            PublicKey publicKey;
            try {
                publicKey = extractPublicKeyFromDG15(dg15);
                Log.d(TAG, "Public key extracted from DG15");
            } catch (Exception e) {
                Log.e(TAG, "Failed to extract public key", e);
                return ValidationResult.failure("NFC_004",
                        "Chip signature invalid: Failed to extract public key - " + e.getMessage(),
                        new ValidationMetadata(false, true, false, digestAlgorithm, null));
            }
            
            // Step 5: Verify SOD signature
            String signatureAlgorithm;
            boolean signatureValid;
            try {
                signatureAlgorithm = extractSignatureAlgorithm(signedData);
                Log.d(TAG, "Signature algorithm: " + signatureAlgorithm);
                
                signatureValid = verifySODSignature(signedData, publicKey, signatureAlgorithm);
            } catch (Exception e) {
                Log.e(TAG, "Failed to verify SOD signature", e);
                return ValidationResult.failure("NFC_004",
                        "Chip signature invalid: Signature verification failed - " + e.getMessage(),
                        new ValidationMetadata(false, true, false, digestAlgorithm, null));
            }
            
            if (!signatureValid) {
                Log.e(TAG, "SOD signature validation failed");
                return ValidationResult.failure("NFC_004",
                        "Chip signature invalid: SOD signature verification failed",
                        new ValidationMetadata(false, true, false, digestAlgorithm, signatureAlgorithm));
            }
            Log.d(TAG, "SOD signature validated successfully");
            
            // All validations passed
            ValidationMetadata metadata = new ValidationMetadata(
                    true, true, true, digestAlgorithm, signatureAlgorithm);
            return ValidationResult.success(metadata);
            
        } catch (Exception e) {
            Log.e(TAG, "Signature validation error", e);
            return ValidationResult.failure("NFC_004",
                    "Chip signature validation error: " + e.getMessage(),
                    ValidationMetadata.empty());
        }
    }
    
    /**
     * Parse SOD (Security Object Document) using ASN.1
     * Enhanced error handling for AUDIT-010
     */
    private SignedData parseSOD(byte[] sod) throws Exception {
        ASN1InputStream asn1InputStream = null;
        try {
            asn1InputStream = new ASN1InputStream(sod);
            ASN1Primitive asn1Primitive = asn1InputStream.readObject();
            
            if (asn1Primitive == null) {
                throw new IllegalArgumentException("ASN.1 parsing returned null");
            }
            
            ContentInfo contentInfo = ContentInfo.getInstance(asn1Primitive);
            if (contentInfo == null || contentInfo.getContent() == null) {
                throw new IllegalArgumentException("Invalid ContentInfo structure");
            }
            
            return SignedData.getInstance(contentInfo.getContent());
            
        } catch (IOException e) {
            throw new IllegalArgumentException("ASN.1 parsing failed: " + e.getMessage(), e);
        } finally {
            if (asn1InputStream != null) {
                try {
                    asn1InputStream.close();
                } catch (IOException e) {
                    Log.w(TAG, "Failed to close ASN1InputStream", e);
                }
            }
        }
    }
    
    /**
     * Extract digest algorithm from SignedData
     */
    private String extractDigestAlgorithm(SignedData signedData) throws Exception {
        ASN1Set digestAlgorithms = signedData.getDigestAlgorithms();
        if (digestAlgorithms == null || digestAlgorithms.size() == 0) {
            throw new IllegalArgumentException("No digest algorithms found in SOD");
        }
        
        ASN1Sequence algorithmIdentifier = (ASN1Sequence) digestAlgorithms.getObjectAt(0);
        if (algorithmIdentifier == null || algorithmIdentifier.size() == 0) {
            throw new IllegalArgumentException("Invalid algorithm identifier");
        }
        
        ASN1ObjectIdentifier oid = (ASN1ObjectIdentifier) algorithmIdentifier.getObjectAt(0);
        String oidStr = oid.getId();
        
        if (SHA256_OID.equals(oidStr)) {
            return "SHA-256";
        } else if (SHA1_OID.equals(oidStr)) {
            return "SHA-1";
        } else {
            throw new IllegalArgumentException("Unsupported digest algorithm OID: " + oidStr);
        }
    }
    
    /**
     * Extract signature algorithm from SignedData
     */
    private String extractSignatureAlgorithm(SignedData signedData) throws Exception {
        ASN1Set signerInfos = signedData.getSignerInfos();
        if (signerInfos == null || signerInfos.size() == 0) {
            throw new IllegalArgumentException("No signer info found in SOD");
        }
        
        ASN1Sequence signerInfo = (ASN1Sequence) signerInfos.getObjectAt(0);
        if (signerInfo == null || signerInfo.size() < 5) {
            throw new IllegalArgumentException("Invalid signer info structure");
        }
        
        ASN1Sequence signatureAlgorithm = (ASN1Sequence) signerInfo.getObjectAt(4);
        ASN1ObjectIdentifier oid = (ASN1ObjectIdentifier) signatureAlgorithm.getObjectAt(0);
        String oidStr = oid.getId();
        
        if (oidStr.startsWith("1.2.840.113549.1.1")) {
            return "SHA256withRSA";
        } else {
            throw new IllegalArgumentException("Unsupported signature algorithm OID: " + oidStr);
        }
    }
    
    /**
     * Verify data group hashes match those in SOD
     */
    private boolean verifyDataGroupHashes(SignedData signedData, byte[] dg1, byte[] dg2, 
                                         String digestAlgorithm) throws Exception {
        // Extract encapContentInfo
        ContentInfo encapContentInfo = signedData.getEncapContentInfo();
        if (encapContentInfo == null || encapContentInfo.getContent() == null) {
            throw new IllegalArgumentException("No content in encapContentInfo");
        }
        
        ASN1OctetString contentOctets = (ASN1OctetString) encapContentInfo.getContent();
        byte[] content = contentOctets.getOctets();
        
        // Parse LDSSecurityObject
        ASN1InputStream ldsStream = new ASN1InputStream(content);
        ASN1Sequence ldsSecurityObject = (ASN1Sequence) ldsStream.readObject();
        ldsStream.close();
        
        if (ldsSecurityObject == null || ldsSecurityObject.size() < 2) {
            throw new IllegalArgumentException("Invalid LDSSecurityObject structure");
        }
        
        ASN1Sequence dataGroupHashValues = (ASN1Sequence) ldsSecurityObject.getObjectAt(1);
        
        // Create message digest
        MessageDigest messageDigest = MessageDigest.getInstance(digestAlgorithm, 
                BouncyCastleProvider.PROVIDER_NAME);
        
        // Calculate actual hashes
        byte[] dg1Hash = messageDigest.digest(dg1);
        messageDigest.reset();
        byte[] dg2Hash = messageDigest.digest(dg2);
        
        // Extract expected hashes from SOD
        byte[] dg1HashFromSOD = null;
        byte[] dg2HashFromSOD = null;
        
        for (int i = 0; i < dataGroupHashValues.size(); i++) {
            ASN1Sequence dataGroupHash = (ASN1Sequence) dataGroupHashValues.getObjectAt(i);
            if (dataGroupHash == null || dataGroupHash.size() < 2) {
                continue;
            }
            
            ASN1Integer dataGroupNumber = (ASN1Integer) dataGroupHash.getObjectAt(0);
            ASN1OctetString hashValue = (ASN1OctetString) dataGroupHash.getObjectAt(1);
            
            int dgNum = dataGroupNumber.getValue().intValue();
            if (dgNum == 1) {
                dg1HashFromSOD = hashValue.getOctets();
            } else if (dgNum == 2) {
                dg2HashFromSOD = hashValue.getOctets();
            }
        }
        
        // Verify hashes
        if (dg1HashFromSOD == null || dg2HashFromSOD == null) {
            Log.e(TAG, "Required data group hashes not found in SOD");
            return false;
        }
        
        boolean dg1Valid = MessageDigest.isEqual(dg1Hash, dg1HashFromSOD);
        boolean dg2Valid = MessageDigest.isEqual(dg2Hash, dg2HashFromSOD);
        
        Log.d(TAG, "DG1 hash valid: " + dg1Valid);
        Log.d(TAG, "DG2 hash valid: " + dg2Valid);
        
        return dg1Valid && dg2Valid;
    }
    
    /**
     * Extract public key from DG15
     */
    private PublicKey extractPublicKeyFromDG15(byte[] dg15) throws Exception {
        ASN1InputStream asn1InputStream = null;
        try {
            asn1InputStream = new ASN1InputStream(dg15);
            ASN1Primitive asn1Primitive = asn1InputStream.readObject();
            
            if (asn1Primitive == null) {
                throw new IllegalArgumentException("DG15 ASN.1 parsing returned null");
            }
            
            // DG15 contains SubjectPublicKeyInfo
            SubjectPublicKeyInfo subjectPublicKeyInfo = SubjectPublicKeyInfo.getInstance(asn1Primitive);
            if (subjectPublicKeyInfo == null) {
                throw new IllegalArgumentException("Invalid SubjectPublicKeyInfo in DG15");
            }
            
            // Create public key
            KeyFactory keyFactory = KeyFactory.getInstance("RSA", BouncyCastleProvider.PROVIDER_NAME);
            X509EncodedKeySpec keySpec = new X509EncodedKeySpec(subjectPublicKeyInfo.getEncoded());
            
            return keyFactory.generatePublic(keySpec);
            
        } catch (IOException e) {
            throw new IllegalArgumentException("Failed to parse DG15: " + e.getMessage(), e);
        } finally {
            if (asn1InputStream != null) {
                try {
                    asn1InputStream.close();
                } catch (IOException e) {
                    Log.w(TAG, "Failed to close ASN1InputStream", e);
                }
            }
        }
    }
    
    /**
     * Verify SOD signature using public key
     */
    private boolean verifySODSignature(SignedData signedData, PublicKey publicKey, 
                                      String signatureAlgorithm) throws Exception {
        // Extract signature from SignerInfo
        ASN1Set signerInfos = signedData.getSignerInfos();
        ASN1Sequence signerInfo = (ASN1Sequence) signerInfos.getObjectAt(0);
        
        if (signerInfo.size() < 6) {
            throw new IllegalArgumentException("Invalid signer info structure");
        }
        
        ASN1OctetString encryptedDigest = (ASN1OctetString) signerInfo.getObjectAt(5);
        byte[] signatureBytes = encryptedDigest.getOctets();
        
        // Get signed content
        ContentInfo encapContentInfo = signedData.getEncapContentInfo();
        ASN1OctetString contentOctets = (ASN1OctetString) encapContentInfo.getContent();
        byte[] content = contentOctets.getOctets();
        
        // Verify signature
        Signature signature = Signature.getInstance(signatureAlgorithm, 
                BouncyCastleProvider.PROVIDER_NAME);
        signature.initVerify(publicKey);
        signature.update(content);
        
        return signature.verify(signatureBytes);
    }
}
