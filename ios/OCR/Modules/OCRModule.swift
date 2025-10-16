import Foundation
import React
import Vision

/**
 * OCR Module - Secure implementation with token-based data exchange
 *
 * Fixes: SEC-001 - PII leakage through React Native bridge
 *
 * Changes:
 * - scan() now returns only { sessionToken, confidence, status }
 * - Actual PII data stored securely in native with 5-minute TTL
 * - New method getResult(token) retrieves the actual data
 */
@objc(OCRModule)
class OCRModule: RCTEventEmitter {
    
    private let secureStorage = SecureStorage.shared
    private let minConfidenceThreshold: Float = 0.85
    
    override static func moduleName() -> String! {
        return "OCRModule"
    }
    
    override func supportedEvents() -> [String]! {
        return ["OCR_SUCCESS", "OCR_ERROR", "OCR_PROGRESS"]
    }
    
    override static func requiresMainQueueSetup() -> Bool {
        return false
    }
    
    // MARK: - Public Methods
    
    /**
     * Scan document and extract text
     * Returns only sessionToken + metadata (no PII data)
     */
    @objc func scan(
        _ imageUri: String,
        resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            guard let self = self else { return }
            
            do {
                // Load image
                guard let image = self.loadImage(from: imageUri) else {
                    reject("OCR_INVALID_IMAGE", "Failed to load image", nil)
                    return
                }
                
                // Perform OCR
                let ocrResult = try self.performOCR(image: image)
                
                // Validate confidence threshold
                if ocrResult.confidence < self.minConfidenceThreshold {
                    let errorInfo: [String: Any] = [
                        "code": "OCR_001",
                        "message": "Low confidence score",
                        "confidence": ocrResult.confidence,
                        "retryable": true
                    ]
                    reject(
                        "OCR_001",
                        "Low confidence score: \(ocrResult.confidence)",
                        NSError(domain: "OCRModule", code: 1, userInfo: errorInfo)
                    )
                    return
                }
                
                // Generate session token
                let sessionToken = self.secureStorage.generateToken()
                
                // Store PII data securely (5 minute TTL)
                try self.secureStorage.save(sessionToken, data: ocrResult, ttl: 300)
                
                // Return only token + metadata (NO PII)
                let response: [String: Any] = [
                    "status": "SUCCESS",
                    "sessionToken": sessionToken,
                    "confidence": ocrResult.confidence,
                    "metadata": [
                        "processingTime": ocrResult.processingTime,
                        "imageQuality": ocrResult.imageQuality,
                        "hasGlare": ocrResult.hasGlare,
                        "isBlurry": ocrResult.isBlurry,
                        "lightingCondition": ocrResult.lightingCondition
                    ]
                ]
                
                resolve(response)
                
                // Emit event for analytics (no PII)
                self.sendEvent(
                    withName: "OCR_SUCCESS",
                    body: [
                        "sessionToken": sessionToken,
                        "confidence": ocrResult.confidence
                    ]
                )
                
            } catch {
                reject("OCR_999", "Unexpected error: \(error.localizedDescription)", error)
            }
        }
    }
    
    /**
     * Retrieve OCR result by session token
     * This is the ONLY method that returns PII data
     */
    @objc func getResult(
        _ sessionToken: String,
        resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            guard let self = self else { return }
            
            do {
                // Validate token format
                guard !sessionToken.isEmpty else {
                    reject("OCR_INVALID_TOKEN", "Session token is required", nil)
                    return
                }
                
                // Retrieve data from secure storage
                guard let ocrResult = try self.secureStorage.get(sessionToken, as: OCRResult.self) else {
                    let errorInfo: [String: Any] = [
                        "code": "OCR_TOKEN_EXPIRED",
                        "message": "Session token expired or invalid (5 minute TTL)",
                        "confidence": 0.0,
                        "retryable": false
                    ]
                    reject(
                        "OCR_TOKEN_EXPIRED",
                        "Session token expired or invalid",
                        NSError(domain: "OCRModule", code: 2, userInfo: errorInfo)
                    )
                    return
                }
                
                // Delete token after retrieval (one-time use)
                try self.secureStorage.delete(sessionToken)
                
                // Return full data including PII
                let response: [String: Any] = [
                    "status": ocrResult.status,
                    "confidence": ocrResult.confidence,
                    "fields": [
                        "tcNo": [
                            "value": ocrResult.fields.tcNo.value,
                            "confidence": ocrResult.fields.tcNo.confidence
                        ],
                        "name": [
                            "value": ocrResult.fields.name.value,
                            "confidence": ocrResult.fields.name.confidence
                        ],
                        "surname": [
                            "value": ocrResult.fields.surname.value,
                            "confidence": ocrResult.fields.surname.confidence
                        ],
                        "birthDate": [
                            "value": ocrResult.fields.birthDate.value,
                            "confidence": ocrResult.fields.birthDate.confidence
                        ],
                        "documentNo": [
                            "value": ocrResult.fields.documentNo.value,
                            "confidence": ocrResult.fields.documentNo.confidence
                        ]
                    ],
                    "metadata": [
                        "processingTime": ocrResult.processingTime,
                        "imageQuality": ocrResult.imageQuality,
                        "hasGlare": ocrResult.hasGlare,
                        "isBlurry": ocrResult.isBlurry,
                        "lightingCondition": ocrResult.lightingCondition
                    ]
                ]
                
                resolve(response)
                
            } catch {
                reject("OCR_RETRIEVAL_ERROR", "Failed to retrieve result: \(error.localizedDescription)", error)
            }
        }
    }
    
    /**
     * Validate if a session token is still valid
     */
    @objc func isTokenValid(
        _ sessionToken: String,
        resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        let isValid = secureStorage.isValid(sessionToken)
        resolve(isValid)
    }
    
    /**
     * Manually cleanup expired tokens
     */
    @objc func cleanupExpiredTokens(
        _ resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        secureStorage.cleanupExpired()
        resolve(true)
    }
    
    // MARK: - Private Helper Methods
    
    private func loadImage(from uri: String) -> UIImage? {
        // Handle file:// URIs
        let cleanUri = uri.replacingOccurrences(of: "file://", with: "")
        
        if let image = UIImage(contentsOfFile: cleanUri) {
            return image
        }
        
        // Try as regular path
        return UIImage(contentsOfFile: uri)
    }
    
    private func performOCR(image: UIImage) throws -> OCRResult {
        // TODO: Replace with actual OCR engine (e.g., Vision framework, ML Kit)
        // This is a mock implementation
        
        let startTime = Date()
        
        // Simulate OCR processing
        Thread.sleep(forTimeInterval: 1.0)
        
        let processingTime = Int(Date().timeIntervalSince(startTime) * 1000)
        
        // Mock extracted fields
        let fields = OCRFields(
            tcNo: FieldData(value: "12345678901", confidence: 0.95),
            name: FieldData(value: "AHMET", confidence: 0.92),
            surname: FieldData(value: "YILMAZ", confidence: 0.93),
            birthDate: FieldData(value: "01.01.1990", confidence: 0.91),
            documentNo: FieldData(value: "A12345678", confidence: 0.94)
        )
        
        return OCRResult(
            status: "SUCCESS",
            confidence: 0.93,
            fields: fields,
            processingTime: processingTime,
            imageQuality: 0.88,
            hasGlare: false,
            isBlurry: false,
            lightingCondition: "GOOD"
        )
    }
}

// MARK: - Data Models

struct OCRResult: Codable {
    let status: String
    let confidence: Float
    let fields: OCRFields
    let processingTime: Int
    let imageQuality: Float
    let hasGlare: Bool
    let isBlurry: Bool
    let lightingCondition: String
}

struct OCRFields: Codable {
    let tcNo: FieldData
    let name: FieldData
    let surname: FieldData
    let birthDate: FieldData
    let documentNo: FieldData
}

struct FieldData: Codable {
    let value: String
    let confidence: Float
}
