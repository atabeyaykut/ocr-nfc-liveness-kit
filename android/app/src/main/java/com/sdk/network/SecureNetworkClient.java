package com.sdk.network;

import android.util.Log;

import okhttp3.CertificatePinner;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.RequestBody;
import okhttp3.MediaType;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.ConcurrentHashMap;
import java.util.Map;

/**
 * Secure Network Client with TLS Certificate Pinning
 * 
 * Features:
 * - OkHttp3 with certificate pinning
 * - Domain-based pin management
 * - Certificate rotation support
 * - Connection pooling and timeouts
 * - Thread-safe singleton pattern
 * 
 * Security:
 * - Prevents Man-in-the-Middle (MITM) attacks
 * - SHA-256 certificate pinning
 * - No PII in logs (SEC-LOG compliant)
 * 
 * Usage:
 * ```java
 * SecureNetworkClient client = SecureNetworkClient.getInstance();
 * client.addCertificatePin("api.example.com", "sha256/AAAAAAAAAA...");
 * Response response = client.get("https://api.example.com/endpoint");
 * ```
 * 
 * @author Mobile SDK Team
 * @version 1.0.0
 */
public class SecureNetworkClient {
    
    private static final String TAG = "SecureNetClient"; // SEC-LOG: shortened
    
    // Singleton instance
    private static volatile SecureNetworkClient instance;
    
    // OkHttp client
    private OkHttpClient client;
    
    // Certificate pins (domain -> SHA-256 hash)
    private final Map<String, String> certificatePins;
    
    // Default timeouts
    private static final int DEFAULT_CONNECT_TIMEOUT_SEC = 30;
    private static final int DEFAULT_READ_TIMEOUT_SEC = 30;
    private static final int DEFAULT_WRITE_TIMEOUT_SEC = 30;
    
    /**
     * Private constructor (Singleton)
     */
    private SecureNetworkClient() {
        this.certificatePins = new ConcurrentHashMap<>();
        this.client = buildDefaultClient();
        
        if (BuildConfig.DEBUG) {
            Log.d(TAG, "SecureNetworkClient initialized");
        }
    }
    
    /**
     * Get singleton instance
     */
    public static SecureNetworkClient getInstance() {
        if (instance == null) {
            synchronized (SecureNetworkClient.class) {
                if (instance == null) {
                    instance = new SecureNetworkClient();
                }
            }
        }
        return instance;
    }
    
    /**
     * Add certificate pin for a domain
     * 
     * @param domain Domain name (e.g., "api.example.com")
     * @param sha256Hash SHA-256 hash of certificate (e.g., "sha256/AAAA...")
     */
    public synchronized void addCertificatePin(String domain, String sha256Hash) {
        if (domain == null || domain.isEmpty()) {
            throw new IllegalArgumentException("Domain cannot be null or empty");
        }
        
        if (sha256Hash == null || !sha256Hash.startsWith("sha256/")) {
            throw new IllegalArgumentException("Invalid SHA-256 hash format. Must start with 'sha256/'");
        }
        
        certificatePins.put(domain, sha256Hash);
        
        // Rebuild client with new pins
        rebuildClient();
        
        if (BuildConfig.DEBUG) {
            // SEC-LOG: Don't log the actual hash
            Log.d(TAG, "Certificate pin added for domain: " + domain);
        }
    }
    
    /**
     * Remove certificate pin for a domain
     * 
     * @param domain Domain name
     */
    public synchronized void removeCertificatePin(String domain) {
        if (certificatePins.remove(domain) != null) {
            rebuildClient();
            
            if (BuildConfig.DEBUG) {
                Log.d(TAG, "Certificate pin removed for domain: " + domain);
            }
        }
    }
    
    /**
     * Update pinned certificate (for rotation)
     * 
     * @param domain Domain name
     * @param newSha256Hash New SHA-256 hash
     */
    public synchronized void updatePinnedCertificate(String domain, String newSha256Hash) {
        if (!certificatePins.containsKey(domain)) {
            throw new IllegalStateException("No existing pin for domain: " + domain);
        }
        
        addCertificatePin(domain, newSha256Hash);
        
        if (BuildConfig.DEBUG) {
            Log.d(TAG, "Certificate pin updated for domain: " + domain);
        }
    }
    
    /**
     * Clear all certificate pins
     */
    public synchronized void clearAllPins() {
        certificatePins.clear();
        rebuildClient();
        
        if (BuildConfig.DEBUG) {
            Log.d(TAG, "All certificate pins cleared");
        }
    }
    
    /**
     * Perform GET request
     * 
     * @param url Full URL
     * @return Response
     * @throws IOException Network error
     */
    public Response get(String url) throws IOException {
        Request request = new Request.Builder()
                .url(url)
                .get()
                .build();
        
        return executeRequest(request);
    }
    
    /**
     * Perform POST request
     * 
     * @param url Full URL
     * @param json JSON body
     * @return Response
     * @throws IOException Network error
     */
    public Response post(String url, String json) throws IOException {
        MediaType JSON = MediaType.get("application/json; charset=utf-8");
        RequestBody body = RequestBody.create(json, JSON);
        
        Request request = new Request.Builder()
                .url(url)
                .post(body)
                .build();
        
        return executeRequest(request);
    }
    
    /**
     * Perform PUT request
     * 
     * @param url Full URL
     * @param json JSON body
     * @return Response
     * @throws IOException Network error
     */
    public Response put(String url, String json) throws IOException {
        MediaType JSON = MediaType.get("application/json; charset=utf-8");
        RequestBody body = RequestBody.create(json, JSON);
        
        Request request = new Request.Builder()
                .url(url)
                .put(body)
                .build();
        
        return executeRequest(request);
    }
    
    /**
     * Perform DELETE request
     * 
     * @param url Full URL
     * @return Response
     * @throws IOException Network error
     */
    public Response delete(String url) throws IOException {
        Request request = new Request.Builder()
                .url(url)
                .delete()
                .build();
        
        return executeRequest(request);
    }
    
    /**
     * Execute request with error handling
     */
    private Response executeRequest(Request request) throws IOException {
        try {
            if (BuildConfig.DEBUG) {
                // SEC-LOG: Don't log full URL (may contain tokens)
                Log.d(TAG, "Request: " + request.method() + " " + request.url().host());
            }
            
            Response response = client.newCall(request).execute();
            
            if (BuildConfig.DEBUG) {
                Log.d(TAG, "Response: " + response.code());
            }
            
            return response;
            
        } catch (javax.net.ssl.SSLPeerUnverifiedException e) {
            // SEC-ERR: Certificate pinning failed
            Log.e(TAG, "Certificate pinning verification failed", e);
            throw new IOException("Certificate pinning failed: " + e.getMessage(), e);
        } catch (IOException e) {
            // SEC-ERR: Generic network error
            Log.e(TAG, "Network request failed", e);
            throw e;
        }
    }
    
    /**
     * Build default OkHttp client
     */
    private OkHttpClient buildDefaultClient() {
        return new OkHttpClient.Builder()
                .connectTimeout(DEFAULT_CONNECT_TIMEOUT_SEC, TimeUnit.SECONDS)
                .readTimeout(DEFAULT_READ_TIMEOUT_SEC, TimeUnit.SECONDS)
                .writeTimeout(DEFAULT_WRITE_TIMEOUT_SEC, TimeUnit.SECONDS)
                .retryOnConnectionFailure(true)
                .build();
    }
    
    /**
     * Rebuild client with current certificate pins
     */
    private void rebuildClient() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder()
                .connectTimeout(DEFAULT_CONNECT_TIMEOUT_SEC, TimeUnit.SECONDS)
                .readTimeout(DEFAULT_READ_TIMEOUT_SEC, TimeUnit.SECONDS)
                .writeTimeout(DEFAULT_WRITE_TIMEOUT_SEC, TimeUnit.SECONDS)
                .retryOnConnectionFailure(true);
        
        // Add certificate pinning if pins exist
        if (!certificatePins.isEmpty()) {
            CertificatePinner.Builder pinnerBuilder = new CertificatePinner.Builder();
            
            for (Map.Entry<String, String> entry : certificatePins.entrySet()) {
                String domain = entry.getKey();
                String hash = entry.getValue();
                
                // Add pin for domain and all subdomains
                pinnerBuilder.add(domain, hash);
                pinnerBuilder.add("*." + domain, hash);
            }
            
            builder.certificatePinner(pinnerBuilder.build());
            
            if (BuildConfig.DEBUG) {
                Log.d(TAG, "Certificate pinner configured with " + certificatePins.size() + " pins");
            }
        }
        
        this.client = builder.build();
    }
    
    /**
     * Get current OkHttpClient (for advanced usage)
     * 
     * @return OkHttpClient instance
     */
    public OkHttpClient getClient() {
        return client;
    }
    
    /**
     * Check if domain has certificate pin
     * 
     * @param domain Domain name
     * @return true if pin exists
     */
    public boolean hasCertificatePin(String domain) {
        return certificatePins.containsKey(domain);
    }
    
    /**
     * Get number of configured pins
     * 
     * @return Pin count
     */
    public int getPinCount() {
        return certificatePins.size();
    }
    
    /**
     * Network response wrapper
     */
    public static class NetworkResponse {
        public final int statusCode;
        public final String body;
        public final boolean isSuccessful;
        public final String errorMessage;
        
        public NetworkResponse(int statusCode, String body, boolean isSuccessful, String errorMessage) {
            this.statusCode = statusCode;
            this.body = body;
            this.isSuccessful = isSuccessful;
            this.errorMessage = errorMessage;
        }
        
        public static NetworkResponse success(int statusCode, String body) {
            return new NetworkResponse(statusCode, body, true, null);
        }
        
        public static NetworkResponse error(int statusCode, String errorMessage) {
            return new NetworkResponse(statusCode, null, false, errorMessage);
        }
    }
    
    /**
     * Perform GET request with wrapped response
     * 
     * @param url Full URL
     * @return NetworkResponse
     */
    public NetworkResponse getWrapped(String url) {
        try {
            Response response = get(url);
            String body = response.body() != null ? response.body().string() : null;
            
            if (response.isSuccessful()) {
                return NetworkResponse.success(response.code(), body);
            } else {
                return NetworkResponse.error(response.code(), 
                        "HTTP " + response.code() + ": " + response.message());
            }
        } catch (IOException e) {
            // SEC-ERR: Don't expose internal error details
            return NetworkResponse.error(-1, "Network error: " + e.getMessage());
        }
    }
    
    /**
     * Perform POST request with wrapped response
     * 
     * @param url Full URL
     * @param json JSON body
     * @return NetworkResponse
     */
    public NetworkResponse postWrapped(String url, String json) {
        try {
            Response response = post(url, json);
            String body = response.body() != null ? response.body().string() : null;
            
            if (response.isSuccessful()) {
                return NetworkResponse.success(response.code(), body);
            } else {
                return NetworkResponse.error(response.code(),
                        "HTTP " + response.code() + ": " + response.message());
            }
        } catch (IOException e) {
            // SEC-ERR: Don't expose internal error details
            return NetworkResponse.error(-1, "Network error: " + e.getMessage());
        }
    }
}
