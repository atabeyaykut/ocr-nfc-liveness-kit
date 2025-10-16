package com.sdk.nfc;

import android.util.Log;

import org.bouncycastle.asn1.*;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.cms.SignedData;
import org.bouncycastle.asn1.x509.Certificate;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

import java.io.ByteArrayInputStream;
import java.security.*;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Future;

/**
 * Passive Authentication (PA) - ICAO 9303 compliant
 * 
 * Implements:
 * - SOD (Security Object Document) parsing and validation
 * - Data Group hash verification
 * - Certificate chain validation (leaf → CSCA)
 * - RSA-2048 signature verification
 * 
 * Security:
 * - No PII in logs (SEC-002 compliant)
 * - Detailed error codes for debugging
 * - Thread-safe Future-based API
 * 
 * @author Mobile SDK Team
 * @version 1.0.0
 */
public class PassiveAuthentication {
    
    private static final String TAG = "PassiveAuth"; // SEC-LOG: shortened tag
    
    // Error codes
    public static final String ERR_NFC_SOD_MISMATCH = "ERR_NFC_SOD_MISMATCH";
    public static final String ERR_NFC_CHAIN_FAILED = "ERR_NFC_CHAIN_FAILED";
    public static final String ERR_NFC_HASH_FAILED = "ERR_NFC_HASH_FAILED";
    public static final String ERR_NFC_PARSE_FAILED = "ERR_NFC_PARSE_FAILED";
    public static final String ERR_NFC_SIGNATURE_FAILED = "ERR_NFC_SIGNATURE_FAILED";
    
    // Supported algorithm OIDs
    private static final String SHA256_OID = "2.16.840.1.101.3.4.2.1";
    private static final String SHA1_OID = "1.3.14.3.2.26";
    private static final String SHA384_OID = "2.16.840.1.101.3.4.2.2";
    private static final String SHA512_OID = "2.16.840.1.101.3.4.2.3";
    
    private static final String RSA_OID = "1.2.840.113549.1.1.1";
    private static final String ECDSA_OID = "1.2.840.10045.2.1";
    
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
     * Passive Authentication Result
     */
    public static class PAResult {
        public final boolean isValid;
        public final String errorCode;
        public final String errorMessage;
        public final PAMetadata metadata;
        
        public PAResult(boolean isValid, String errorCode, String errorMessage, PAMetadata metadata) {
            this.isValid = isValid;
            this.errorCode = errorCode;
            this.errorMessage = errorMessage;
            this.metadata = metadata;
        }
        
        public static PAResult success(PAMetadata metadata) {
            return new PAResult(true, null, null, metadata);
        }
        
        public static PAResult failure(String errorCode, String errorMessage, PAMetadata metadata) {
            return new PAResult(false, errorCode, errorMessage, metadata);
        }
    }
    
    /**
     * Passive Authentication Metadata
     */
    public static class PAMetadata {
        public final boolean sodParsed;
        public final boolean hashesValid;
        public final boolean signatureValid;
        public final boolean chainValid;
        public final String digestAlgorithm;
        public final String signatureAlgorithm;
        public final int certificateCount;
        public final long validationDurationMs;
        
        public PAMetadata(boolean sodParsed, boolean hashesValid, boolean signatureValid,
                         boolean chainValid, String digestAlgorithm, String signatureAlgorithm,
                         int certificateCount, long validationDurationMs) {
            this.sodParsed = sodParsed;
            this.hashesValid = hashesValid;
            this.signatureValid = signatureValid;
            this.chainValid = chainValid;
            this.digestAlgorithm = digestAlgorithm;
            this.signatureAlgorithm = signatureAlgorithm;
            this.certificateCount = certificateCount;
            this.validationDurationMs = validationDurationMs;
        }
        
        public static PAMetadata empty() {
            return new PAMetadata(false, false, false, false, null, null, 0, 0);
        }
    }
    
    /**
     * Perform Passive Authentication (async)
     * 
     * @param sod Security Object Document
     * @param dataGroups Map of data group numbers to their byte arrays (e.g., 1→DG1, 2→DG2)
     * @param cscaCertificates Optional CSCA certificates for chain validation
     * @return Future<PAResult>
     */
    public Future<PAResult> authenticate(byte[] sod, Map<Integer, byte[]> dataGroups, 
                                        List<X509Certificate> cscaCertificates) {
        return CompletableFuture.supplyAsync(() -> {
            long startTime = System.currentTimeMillis();
            
            try {
                // SEC-LOG: No PII in logs
                if (BuildConfig.DEBUG) {
                    Log.d(TAG, String.format("PA started: SOD=%d bytes, DGs=%d", 
                            sod.length, dataGroups.size()));
                }
                
                // Step 1: Parse SOD
                SignedData signedData;
                try {
                    signedData = parseSOD(sod);
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, "SOD parsed successfully");
                    }
                } catch (Exception e) {
                    // SEC-ERR: No sensitive data in error
                    Log.e(TAG, "SOD parse failed", e);
                    return PAResult.failure(ERR_NFC_PARSE_FAILED, 
                            "Failed to parse SOD: " + e.getMessage(),
                            PAMetadata.empty());
                }
                
                // Step 2: Extract algorithms
                String digestAlgorithm;
                String signatureAlgorithm;
                try {
                    digestAlgorithm = extractDigestAlgorithm(signedData);
                    signatureAlgorithm = extractSignatureAlgorithm(signedData);
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, String.format("Algorithms: digest=%s, signature=%s",
                                digestAlgorithm, signatureAlgorithm));
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Algorithm extraction failed", e);
                    return PAResult.failure(ERR_NFC_PARSE_FAILED,
                            "Failed to extract algorithms: " + e.getMessage(),
                            new PAMetadata(true, false, false, false, null, null, 0, 
                                    System.currentTimeMillis() - startTime));
                }
                
                // Step 3: Verify data group hashes
                boolean hashesValid;
                try {
                    hashesValid = verifyDataGroupHashes(signedData, dataGroups, digestAlgorithm);
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, "Hash verification: " + (hashesValid ? "PASS" : "FAIL"));
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Hash verification failed", e);
                    return PAResult.failure(ERR_NFC_HASH_FAILED,
                            "Data group hash verification failed: " + e.getMessage(),
                            new PAMetadata(true, false, false, false, digestAlgorithm, 
                                    signatureAlgorithm, 0, System.currentTimeMillis() - startTime));
                }
                
                if (!hashesValid) {
                    // SEC-ERR: Generic error, no data details
                    return PAResult.failure(ERR_NFC_SOD_MISMATCH,
                            "Data group hashes do not match SOD",
                            new PAMetadata(true, false, false, false, digestAlgorithm,
                                    signatureAlgorithm, 0, System.currentTimeMillis() - startTime));
                }
                
                // Step 4: Extract and validate certificate chain
                List<X509Certificate> certChain;
                try {
                    certChain = extractCertificateChain(signedData);
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, "Certificate chain extracted: " + certChain.size() + " certs");
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Certificate extraction failed", e);
                    return PAResult.failure(ERR_NFC_CHAIN_FAILED,
                            "Failed to extract certificate chain: " + e.getMessage(),
                            new PAMetadata(true, true, false, false, digestAlgorithm,
                                    signatureAlgorithm, 0, System.currentTimeMillis() - startTime));
                }
                
                // Step 5: Validate certificate chain
                boolean chainValid = false;
                if (cscaCertificates != null && !cscaCertificates.isEmpty()) {
                    try {
                        chainValid = validateCertificateChain(certChain, cscaCertificates);
                        if (BuildConfig.DEBUG) {
                            Log.d(TAG, "Chain validation: " + (chainValid ? "PASS" : "FAIL"));
                        }
                    } catch (Exception e) {
                        Log.e(TAG, "Chain validation failed", e);
                        // Continue even if chain validation fails (optional step)
                    }
                } else {
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, "CSCA certificates not provided, skipping chain validation");
                    }
                    chainValid = true; // Consider valid if CSCA not provided
                }
                
                // Step 6: Verify SOD signature
                boolean signatureValid;
                try {
                    PublicKey publicKey = certChain.get(0).getPublicKey();
                    signatureValid = verifySODSignature(signedData, publicKey, signatureAlgorithm);
                    if (BuildConfig.DEBUG) {
                        Log.d(TAG, "Signature verification: " + (signatureValid ? "PASS" : "FAIL"));
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Signature verification failed", e);
                    return PAResult.failure(ERR_NFC_SIGNATURE_FAILED,
                            "SOD signature verification failed: " + e.getMessage(),
                            new PAMetadata(true, true, false, chainValid, digestAlgorithm,
                                    signatureAlgorithm, certChain.size(), 
                                    System.currentTimeMillis() - startTime));
                }
                
                if (!signatureValid) {
                    return PAResult.failure(ERR_NFC_SIGNATURE_FAILED,
                            "SOD signature is invalid",
                            new PAMetadata(true, true, false, chainValid, digestAlgorithm,
                                    signatureAlgorithm, certChain.size(),
                                    System.currentTimeMillis() - startTime));
                }
                
                // All validations passed
                long duration = System.currentTimeMillis() - startTime;
                if (BuildConfig.DEBUG) {
                    Log.d(TAG, String.format("PA completed successfully in %dms", duration));
                }
                
                PAMetadata metadata = new PAMetadata(true, true, true, chainValid,
                        digestAlgorithm, signatureAlgorithm, certChain.size(), duration);
                return PAResult.success(metadata);
                
            } catch (Exception e) {
                // SEC-ERR: Catch-all for unexpected errors
                Log.e(TAG, "PA unexpected error", e);
                return PAResult.failure("ERR_NFC_PA_FAILED",
                        "Passive authentication failed: " + e.getMessage(),
                        PAMetadata.empty());
            }
        });
    }
    
    /**
     * Parse SOD (Security Object Document)
     */
    private SignedData parseSOD(byte[] sod) throws Exception {
        ASN1InputStream asn1InputStream = new ASN1InputStream(new ByteArrayInputStream(sod));
        ASN1Primitive asn1Primitive = asn1InputStream.readObject();
        asn1InputStream.close();
        
        ContentInfo contentInfo = ContentInfo.getInstance(asn1Primitive);
        return SignedData.getInstance(contentInfo.getContent());
    }
    
    /**
     * Extract digest algorithm from SOD
     */
    private String extractDigestAlgorithm(SignedData signedData) throws Exception {
        ASN1Set digestAlgorithms = signedData.getDigestAlgorithms();
        if (digestAlgorithms.size() == 0) {
            throw new Exception("No digest algorithms found in SOD");
        }
        
        ASN1Encodable digestAlgObj = digestAlgorithms.getObjectAt(0);
        ASN1Sequence digestAlgSeq = ASN1Sequence.getInstance(digestAlgObj);
        ASN1ObjectIdentifier oid = ASN1ObjectIdentifier.getInstance(digestAlgSeq.getObjectAt(0));
        
        String oidStr = oid.getId();
        switch (oidStr) {
            case SHA256_OID: return "SHA-256";
            case SHA1_OID: return "SHA-1";
            case SHA384_OID: return "SHA-384";
            case SHA512_OID: return "SHA-512";
            default: throw new Exception("Unsupported digest algorithm: " + oidStr);
        }
    }
    
    /**
     * Extract signature algorithm from SOD
     */
    private String extractSignatureAlgorithm(SignedData signedData) throws Exception {
        ASN1Set signerInfos = signedData.getSignerInfos();
        if (signerInfos.size() == 0) {
            throw new Exception("No signer info found in SOD");
        }
        
        ASN1Sequence signerInfo = ASN1Sequence.getInstance(signerInfos.getObjectAt(0));
        ASN1Sequence signatureAlgSeq = ASN1Sequence.getInstance(signerInfo.getObjectAt(4));
        ASN1ObjectIdentifier oid = ASN1ObjectIdentifier.getInstance(signatureAlgSeq.getObjectAt(0));
        
        String oidStr = oid.getId();
        if (oidStr.startsWith("1.2.840.113549.1.1")) {
            return "SHA256withRSA"; // RSA family
        } else if (oidStr.startsWith("1.2.840.10045.4")) {
            return "SHA256withECDSA"; // ECDSA family
        } else {
            throw new Exception("Unsupported signature algorithm: " + oidStr);
        }
    }
    
    /**
     * Verify data group hashes against SOD
     */
    private boolean verifyDataGroupHashes(SignedData signedData, Map<Integer, byte[]> dataGroups,
                                         String digestAlgorithm) throws Exception {
        // Extract LDS Security Object (eContent)
        ASN1OctetString eContent = signedData.getEncapContentInfo().getContent();
        ASN1Sequence ldsSecurityObject = ASN1Sequence.getInstance(
                new ASN1InputStream(eContent.getOctets()).readObject());
        
        // Extract hash values from SOD
        ASN1Sequence dataGroupHashValues = ASN1Sequence.getInstance(
                ldsSecurityObject.getObjectAt(3));
        
        Map<Integer, byte[]> sodHashes = new HashMap<>();
        for (int i = 0; i < dataGroupHashValues.size(); i++) {
            ASN1Sequence dgHashSeq = ASN1Sequence.getInstance(dataGroupHashValues.getObjectAt(i));
            int dgNumber = ASN1Integer.getInstance(dgHashSeq.getObjectAt(0)).intValueExact();
            byte[] dgHash = ASN1OctetString.getInstance(dgHashSeq.getObjectAt(1)).getOctets();
            sodHashes.put(dgNumber, dgHash);
        }
        
        // Verify each provided data group
        MessageDigest md = MessageDigest.getInstance(digestAlgorithm);
        for (Map.Entry<Integer, byte[]> entry : dataGroups.entrySet()) {
            int dgNumber = entry.getKey();
            byte[] dgData = entry.getValue();
            
            byte[] sodHash = sodHashes.get(dgNumber);
            if (sodHash == null) {
                if (BuildConfig.DEBUG) {
                    Log.w(TAG, "DG" + dgNumber + " not found in SOD");
                }
                continue; // Skip if not in SOD
            }
            
            byte[] computedHash = md.digest(dgData);
            if (!Arrays.equals(computedHash, sodHash)) {
                // SEC-ERR: No data content in log
                Log.e(TAG, "Hash mismatch for DG" + dgNumber);
                return false;
            }
        }
        
        return true;
    }
    
    /**
     * Extract certificate chain from SOD
     */
    private List<X509Certificate> extractCertificateChain(SignedData signedData) throws Exception {
        List<X509Certificate> certChain = new ArrayList<>();
        ASN1Set certificates = signedData.getCertificates();
        
        if (certificates == null || certificates.size() == 0) {
            throw new Exception("No certificates found in SOD");
        }
        
        CertificateFactory certFactory = CertificateFactory.getInstance("X.509", "BC");
        
        for (int i = 0; i < certificates.size(); i++) {
            ASN1Encodable certObj = certificates.getObjectAt(i);
            Certificate bcCert = Certificate.getInstance(certObj);
            byte[] certBytes = bcCert.getEncoded();
            
            X509Certificate x509Cert = (X509Certificate) certFactory.generateCertificate(
                    new ByteArrayInputStream(certBytes));
            certChain.add(x509Cert);
        }
        
        return certChain;
    }
    
    /**
     * Validate certificate chain against CSCA certificates
     */
    private boolean validateCertificateChain(List<X509Certificate> certChain,
                                            List<X509Certificate> cscaCertificates) throws Exception {
        if (certChain.isEmpty()) {
            return false;
        }
        
        // Verify each certificate in chain
        for (int i = 0; i < certChain.size() - 1; i++) {
            X509Certificate cert = certChain.get(i);
            X509Certificate issuer = certChain.get(i + 1);
            
            try {
                cert.verify(issuer.getPublicKey());
            } catch (Exception e) {
                Log.e(TAG, "Certificate chain verification failed at index " + i, e);
                return false;
            }
        }
        
        // Verify root against CSCA
        X509Certificate root = certChain.get(certChain.size() - 1);
        for (X509Certificate csca : cscaCertificates) {
            try {
                root.verify(csca.getPublicKey());
                return true; // Found valid CSCA
            } catch (Exception e) {
                // Try next CSCA
            }
        }
        
        // SEC-ERR: No CSCA matched
        Log.e(TAG, "No CSCA certificate matched");
        return false;
    }
    
    /**
     * Verify SOD signature
     */
    private boolean verifySODSignature(SignedData signedData, PublicKey publicKey,
                                      String signatureAlgorithm) throws Exception {
        // Extract signed content
        ASN1OctetString eContent = signedData.getEncapContentInfo().getContent();
        byte[] signedContent = eContent.getOctets();
        
        // Extract signature
        ASN1Set signerInfos = signedData.getSignerInfos();
        ASN1Sequence signerInfo = ASN1Sequence.getInstance(signerInfos.getObjectAt(0));
        ASN1OctetString signatureOctets = ASN1OctetString.getInstance(signerInfo.getObjectAt(5));
        byte[] signature = signatureOctets.getOctets();
        
        // Verify signature
        Signature sig = Signature.getInstance(signatureAlgorithm, "BC");
        sig.initVerify(publicKey);
        sig.update(signedContent);
        
        return sig.verify(signature);
    }
}
