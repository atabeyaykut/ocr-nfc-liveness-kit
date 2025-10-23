import Foundation
import UIKit
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
        let startTime = Date()
        
        // Initialize frame processor
        let frameProcessor = FrameProcessor()
        
        // Step 1: Analyze image quality
        let quality = frameProcessor.analyzeQuality(image)
        
        // Check if image quality is acceptable
        guard quality.overallScore > 0.5 else {
            throw OCRError.poorImageQuality
        }
        
        // Step 2: Preprocess image
        guard let preprocessedImage = frameProcessor.preprocessForOCR(image) else {
            throw OCRError.preprocessingFailed
        }
        
        // Step 3: Perform OCR using Vision framework
        guard let cgImage = preprocessedImage.cgImage else {
            throw OCRError.invalidImage
        }
        
        var extractedText = ""
        var recognitionConfidence: Float = 0.0
        
        let semaphore = DispatchSemaphore(value: 0)
        var ocrError: Error?
        
        // Create Vision request
        let request = VNRecognizeTextRequest { request, error in
            if let error = error {
                ocrError = error
                semaphore.signal()
                return
            }
            
            guard let observations = request.results as? [VNRecognizedTextObservation] else {
                semaphore.signal()
                return
            }
            
            // Extract text from observations
            var allText: [String] = []
            var confidenceSum: Float = 0.0
            
            for observation in observations {
                guard let topCandidate = observation.topCandidates(1).first else { continue }
                allText.append(topCandidate.string)
                confidenceSum += topCandidate.confidence
            }
            
            extractedText = allText.joined(separator: "\n")
            recognitionConfidence = observations.isEmpty ? 0.0 : confidenceSum / Float(observations.count)
            
            semaphore.signal()
        }
        
        // Configure request
        request.recognitionLevel = .accurate
        request.usesLanguageCorrection = true
        request.recognitionLanguages = ["tr-TR", "en-US"] // Turkish and English
        
        // Perform request
        let requestHandler = VNImageRequestHandler(cgImage: cgImage, options: [:])
        
        do {
            try requestHandler.perform([request])
        } catch {
            throw OCRError.visionRequestFailed
        }
        
        // Wait for completion
        semaphore.wait()
        
        if let error = ocrError {
            throw error
        }
        
        // Step 4: Parse extracted fields from text
        let fields = parseFields(from: extractedText, confidence: recognitionConfidence)
        
        let processingTime = Int(Date().timeIntervalSince(startTime) * 1000)
        
        // Calculate overall confidence
        let overallConfidence = (recognitionConfidence + Float(quality.overallScore)) / 2.0
        
        // Determine lighting condition
        let lightingCondition: String
        if quality.brightness < 0.3 {
            lightingCondition = "DARK"
        } else if quality.brightness > 0.8 {
            lightingCondition = "BRIGHT"
        } else {
            lightingCondition = "GOOD"
        }
        
        return OCRResult(
            status: "SUCCESS",
            confidence: overallConfidence,
            fields: fields,
            processingTime: processingTime,
            imageQuality: Float(quality.overallScore),
            hasGlare: quality.hasGlare,
            isBlurry: quality.isBlurry,
            lightingCondition: lightingCondition
        )
    }
    
    /**
     * Parse OCR fields from extracted text
     * This uses regex patterns to identify Turkish ID card fields
     */
    private func parseFields(from text: String, confidence: Float) -> OCRFields {
        var tcNo = ""
        var name = ""
        var surname = ""
        var birthDate = ""
        var documentNo = ""
        
        // Parse TC No (11 digits)
        if let tcMatch = text.range(of: "\\b\\d{11}\\b", options: .regularExpression) {
            tcNo = String(text[tcMatch])
        }
        
        // Parse Name (after "ADI" or "NAME" keyword)
        if let nameMatch = text.range(of: "(?:ADI|NAME)[:\\s]+([A-ZÇĞİÖŞÜ]+)", options: .regularExpression) {
            name = String(text[nameMatch]).replacingOccurrences(of: "ADI", with: "")
                .replacingOccurrences(of: "NAME", with: "")
                .trimmingCharacters(in: .whitespacesAndNewlines)
        }
        
        // Parse Surname (after "SOYADI" or "SURNAME" keyword)
        if let surnameMatch = text.range(of: "(?:SOYADI|SURNAME)[:\\s]+([A-ZÇĞİÖŞÜ]+)", options: .regularExpression) {
            surname = String(text[surnameMatch]).replacingOccurrences(of: "SOYADI", with: "")
                .replacingOccurrences(of: "SURNAME", with: "")
                .trimmingCharacters(in: .whitespacesAndNewlines)
        }
        
        // Parse Birth Date (DD.MM.YYYY format)
        if let dateMatch = text.range(of: "\\b\\d{2}\\.\\d{2}\\.\\d{4}\\b", options: .regularExpression) {
            birthDate = String(text[dateMatch])
        }
        
        // Parse Document No (letter + digits)
        if let docMatch = text.range(of: "\\b[A-Z]\\d{8}\\b", options: .regularExpression) {
            documentNo = String(text[docMatch])
        }
        
        return OCRFields(
            tcNo: FieldData(value: tcNo, confidence: confidence),
            name: FieldData(value: name, confidence: confidence * 0.95),
            surname: FieldData(value: surname, confidence: confidence * 0.95),
            birthDate: FieldData(value: birthDate, confidence: confidence * 0.93),
            documentNo: FieldData(value: documentNo, confidence: confidence * 0.94)
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

// MARK: - Error Types

enum OCRError: Error {
    case invalidImage
    case poorImageQuality
    case preprocessingFailed
    case visionRequestFailed
    case noTextDetected
    
    var localizedDescription: String {
        switch self {
        case .invalidImage:
            return "Invalid image format"
        case .poorImageQuality:
            return "Image quality too poor for OCR"
        case .preprocessingFailed:
            return "Failed to preprocess image"
        case .visionRequestFailed:
            return "Vision framework request failed"
        case .noTextDetected:
            return "No text detected in image"
        }
    }
}
