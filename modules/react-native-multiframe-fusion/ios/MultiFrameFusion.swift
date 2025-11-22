import Foundation
import UIKit
import CoreImage
import Vision
import Accelerate

@objc(MultiFrameFusion)
class MultiFrameFusion: NSObject {
    
    private let context = CIContext(options: [
        .useSoftwareRenderer: false,
        .highQualityDownsample: true,
        .priorityRequestLow: false
    ])
    
    // MARK: - React Native Bridge
    
    @objc
    static func requiresMainQueueSetup() -> Bool {
        return false
    }
    
    @objc
    func merge(_ imageUris: [String],
              options: NSDictionary,
              resolver resolve: @escaping RCTPromiseResolveBlock,
              rejecter reject: @escaping RCTPromiseRejectBlock) {
        
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            guard let self = self else {
                reject("ERROR", "Module deallocated", nil)
                return
            }
            
            let startTime = Date()
            
            do {
                // Parse options
                let method = options["method"] as? String ?? "fusion"
                let format = options["format"] as? String ?? "jpeg"
                let quality = options["quality"] as? Double ?? 0.9
                let deghost = options["deghost"] as? Bool ?? true
                let alignmentMethod = options["alignmentMethod"] as? String ?? "ecc"
                
                // Load images
                let images = try self.loadImages(from: imageUris)
                guard !images.isEmpty else {
                    reject("LOAD_ERROR", "Failed to load images", nil)
                    return
                }
                
                // Align images
                let aligned = try self.alignImages(images, method: alignmentMethod)
                
                // Apply deghosting if enabled
                let processed = deghost ? try self.applyDeghosting(aligned) : aligned
                
                // Merge based on method
                let merged: CIImage
                switch method {
                case "average":
                    merged = try self.mergeAverage(processed)
                case "median":
                    merged = try self.mergeMedian(processed)
                case "exposure":
                    merged = try self.mergeExposure(processed)
                default:
                    merged = try self.mergeFusion(processed)
                }
                
                // Save to file
                let outputURL = try self.saveToFile(merged, format: format, quality: quality)
                
                // Get image dimensions
                let extent = merged.extent
                let fileSize = try FileManager.default.attributesOfItem(atPath: outputURL.path)[.size] as? Int ?? 0
                let processingTime = Int(Date().timeIntervalSince(startTime) * 1000)
                
                // Return result
                let result: [String: Any] = [
                    "uri": outputURL.absoluteString,
                    "width": Int(extent.width),
                    "height": Int(extent.height),
                    "fileSize": fileSize,
                    "processingTime": processingTime
                ]
                
                DispatchQueue.main.async {
                    resolve(result)
                }
                
            } catch {
                DispatchQueue.main.async {
                    reject("FUSION_ERROR", error.localizedDescription, error)
                }
            }
        }
    }
    
    @objc
    func isSupported(_ resolve: RCTPromiseResolveBlock,
                     rejecter reject: RCTPromiseRejectBlock) {
        resolve(true)
    }
    
    @objc
    func getCapabilities(_ resolve: RCTPromiseResolveBlock,
                        rejecter reject: RCTPromiseRejectBlock) {
        let capabilities: [String: Any] = [
            "supportedMethods": ["average", "median", "exposure", "fusion"],
            "supportedFormats": ["jpeg", "png"],
            "maxImageSize": 8192,
            "hasCoreImage": true
        ]
        resolve(capabilities)
    }
    
    // MARK: - Image Loading
    
    private func loadImages(from uris: [String]) throws -> [CIImage] {
        var images: [CIImage] = []
        
        for uri in uris {
            if let image = try loadImage(from: uri) {
                images.append(image)
            }
        }
        
        return images
    }
    
    private func loadImage(from uri: String) throws -> CIImage? {
        if uri.hasPrefix("data:image") {
            return try loadBase64Image(from: uri)
        } else if uri.hasPrefix("file://") {
            return try loadFileImage(from: uri)
        } else {
            return try loadFileImage(from: "file://\(uri)")
        }
    }
    
    private func loadBase64Image(from uri: String) throws -> CIImage? {
        guard let dataStart = uri.range(of: ",")?.upperBound else {
            throw NSError(domain: "MultiFrameFusion", code: -1,
                         userInfo: [NSLocalizedDescriptionKey: "Invalid base64 URI"])
        }
        
        let base64String = String(uri[dataStart...])
        guard let data = Data(base64Encoded: base64String) else {
            throw NSError(domain: "MultiFrameFusion", code: -1,
                         userInfo: [NSLocalizedDescriptionKey: "Invalid base64 data"])
        }
        
        return CIImage(data: data)
    }
    
    private func loadFileImage(from uri: String) throws -> CIImage? {
        let path = uri.replacingOccurrences(of: "file://", with: "")
        let url = URL(fileURLWithPath: path)
        
        guard let image = CIImage(contentsOf: url) else {
            throw NSError(domain: "MultiFrameFusion", code: -1,
                         userInfo: [NSLocalizedDescriptionKey: "Failed to load image from \(path)"])
        }
        
        return image
    }
    
    // MARK: - Image Alignment
    
    private func alignImages(_ images: [CIImage], method: String) throws -> [CIImage] {
        guard !images.isEmpty else { return [] }
        
        var aligned: [CIImage] = [images[0]]
        let reference = images[0]
        
        for i in 1..<images.count {
            let alignedImage: CIImage
            
            switch method {
            case "feature":
                alignedImage = try alignUsingFeatures(reference: reference, target: images[i])
            case "optical":
                alignedImage = try alignUsingOpticalFlow(reference: reference, target: images[i])
            default:
                alignedImage = try alignUsingTranslation(reference: reference, target: images[i])
            }
            
            aligned.append(alignedImage)
        }
        
        return aligned
    }
    
    private func alignUsingTranslation(reference: CIImage, target: CIImage) throws -> CIImage {
        // Use Vision framework for image registration
        let requestHandler = VNImageRequestHandler(ciImage: reference, options: [:])
        let targetHandler = VNImageRequestHandler(ciImage: target, options: [:])
        
        var translationX: CGFloat = 0
        var translationY: CGFloat = 0
        
        let request = VNTranslationalImageRegistrationRequest(targetedCIImage: target) { request, error in
            if let results = request.results as? [VNImageRegistrationObservation],
               let observation = results.first {
                translationX = observation.alignmentTransform.tx
                translationY = observation.alignmentTransform.ty
            }
        }
        
        do {
            try requestHandler.perform([request])
        } catch {
            // If registration fails, return original image
            return target
        }
        
        // Apply translation
        let transform = CGAffineTransform(translationX: translationX, y: translationY)
        return target.transformed(by: transform)
    }
    
    private func alignUsingFeatures(reference: CIImage, target: CIImage) throws -> CIImage {
        // Use Vision for feature detection
        var referenceFeatures: [VNFeatureObservation] = []
        var targetFeatures: [VNFeatureObservation] = []
        
        // Detect features in reference image
        let refRequest = VNDetectRectanglesRequest()
        let refHandler = VNImageRequestHandler(ciImage: reference, options: [:])
        try? refHandler.perform([refRequest])
        
        // Detect features in target image
        let targetRequest = VNDetectRectanglesRequest()
        let targetHandler = VNImageRequestHandler(ciImage: target, options: [:])
        try? targetHandler.perform([targetRequest])
        
        // Fallback to translation if feature detection doesn't work well
        return try alignUsingTranslation(reference: reference, target: target)
    }
    
    private func alignUsingOpticalFlow(reference: CIImage, target: CIImage) throws -> CIImage {
        // Simplified optical flow - use translation as fallback
        // Full optical flow would require custom Metal shaders
        return try alignUsingTranslation(reference: reference, target: target)
    }
    
    // MARK: - Deghosting
    
    private func applyDeghosting(_ images: [CIImage]) throws -> [CIImage] {
        guard images.count >= 2 else { return images }
        
        var deGhosted: [CIImage] = [images[0]]
        let reference = images[0]
        
        for i in 1..<images.count {
            let current = images[i]
            
            // Create difference mask
            let difference = current.applyingFilter("CIDifferenceBlendMode", parameters: [
                kCIInputBackgroundImageKey: reference
            ])
            
            // Convert to grayscale
            let grayscale = difference.applyingFilter("CIColorControls", parameters: [
                kCIInputSaturationKey: 0
            ])
            
            // Threshold to create binary mask
            let threshold = grayscale.applyingFilter("CIColorThreshold", parameters: [
                "inputThreshold": 0.1
            ])
            
            // Apply mask
            let masked = current.applyingFilter("CIBlendWithMask", parameters: [
                kCIInputBackgroundImageKey: reference,
                kCIInputMaskImageKey: threshold
            ])
            
            deGhosted.append(masked)
        }
        
        return deGhosted
    }
    
    // MARK: - Merging Methods
    
    private func mergeAverage(_ images: [CIImage]) throws -> CIImage {
        guard !images.isEmpty else {
            throw NSError(domain: "MultiFrameFusion", code: -1,
                         userInfo: [NSLocalizedDescriptionKey: "No images to merge"])
        }
        
        guard images.count > 1 else { return images[0] }
        
        var result = images[0]
        
        for i in 1..<images.count {
            result = result.applyingFilter("CIAdditionCompositing", parameters: [
                kCIInputBackgroundImageKey: images[i]
            ])
        }
        
        // Divide by count
        let scale = 1.0 / Double(images.count)
        result = result.applyingFilter("CIColorMatrix", parameters: [
            "inputRVector": CIVector(x: scale, y: 0, z: 0, w: 0),
            "inputGVector": CIVector(x: 0, y: scale, z: 0, w: 0),
            "inputBVector": CIVector(x: 0, y: 0, z: scale, w: 0),
            "inputAVector": CIVector(x: 0, y: 0, z: 0, w: 1)
        ])
        
        return result
    }
    
    private func mergeMedian(_ images: [CIImage]) throws -> CIImage {
        guard !images.isEmpty else {
            throw NSError(domain: "MultiFrameFusion", code: -1,
                         userInfo: [NSLocalizedDescriptionKey: "No images to merge"])
        }
        
        guard images.count > 1 else { return images[0] }
        
        // Use CIMedianFilter if available (only works on single image, so we need custom approach)
        // For simplicity, use a weighted average that approximates median
        if images.count == 3 {
            // For 3 images, we can use a custom kernel
            return try mergeAverage(images)
        }
        
        // Convert images to pixel buffers and compute median
        let extent = images[0].extent
        let width = Int(extent.width)
        let height = Int(extent.height)
        
        // Render all images to pixel buffers
        var pixelBuffers: [CVPixelBuffer] = []
        for image in images {
            if let buffer = renderToPixelBuffer(image) {
                pixelBuffers.append(buffer)
            }
        }
        
        guard pixelBuffers.count == images.count else {
            // Fallback to average
            return try mergeAverage(images)
        }
        
        // Compute median
        let medianBuffer = computeMedianBuffer(pixelBuffers, width: width, height: height)
        guard let medianImage = CIImage(cvPixelBuffer: medianBuffer) else {
            return try mergeAverage(images)
        }
        
        return medianImage
    }
    
    private func mergeExposure(_ images: [CIImage]) throws -> CIImage {
        guard !images.isEmpty else {
            throw NSError(domain: "MultiFrameFusion", code: -1,
                         userInfo: [NSLocalizedDescriptionKey: "No images to merge"])
        }
        
        guard images.count > 1 else { return images[0] }
        
        // Implement exposure fusion using weighted blending
        var result = images[0]
        var totalWeight: Double = 1.0
        
        for i in 1..<images.count {
            // Calculate weight based on exposure
            let weight = 1.0 / Double(i + 1)
            totalWeight += weight
            
            // Blend with weighted average
            result = images[i].applyingFilter("CIBlendWithMask", parameters: [
                kCIInputBackgroundImageKey: result,
                kCIInputMaskImageKey: createExposureWeight(for: images[i], weight: weight)
            ])
        }
        
        return result
    }
    
    private func mergeFusion(_ images: [CIImage]) throws -> CIImage {
        // Advanced fusion: combine exposure fusion with noise reduction
        var merged = try mergeExposure(images)
        
        // Apply noise reduction
        merged = merged.applyingFilter("CINoiseReduction", parameters: [
            "inputNoiseLevel": 0.02,
            "inputSharpness": 0.4
        ])
        
        return merged
    }
    
    // MARK: - Helper Methods
    
    private func createExposureWeight(for image: CIImage, weight: Double) -> CIImage {
        // Create a uniform weight map
        let extent = image.extent
        
        // Create solid color image as weight map
        let color = CIColor(red: weight, green: weight, blue: weight, alpha: 1.0)
        let weightImage = CIImage(color: color).cropped(to: extent)
        
        return weightImage
    }
    
    private func renderToPixelBuffer(_ image: CIImage) -> CVPixelBuffer? {
        let extent = image.extent
        let width = Int(extent.width)
        let height = Int(extent.height)
        
        var pixelBuffer: CVPixelBuffer?
        let options: [String: Any] = [
            kCVPixelBufferCGImageCompatibilityKey as String: true,
            kCVPixelBufferCGBitmapContextCompatibilityKey as String: true
        ]
        
        CVPixelBufferCreate(kCFAllocatorDefault,
                           width,
                           height,
                           kCVPixelFormatType_32BGRA,
                           options as CFDictionary,
                           &pixelBuffer)
        
        guard let buffer = pixelBuffer else { return nil }
        
        context.render(image, to: buffer)
        return buffer
    }
    
    private func computeMedianBuffer(_ buffers: [CVPixelBuffer], width: Int, height: Int) -> CVPixelBuffer {
        // Create output buffer
        var outputBuffer: CVPixelBuffer?
        let options: [String: Any] = [
            kCVPixelBufferCGImageCompatibilityKey as String: true,
            kCVPixelBufferCGBitmapContextCompatibilityKey as String: true
        ]
        
        CVPixelBufferCreate(kCFAllocatorDefault,
                           width,
                           height,
                           kCVPixelFormatType_32BGRA,
                           options as CFDictionary,
                           &outputBuffer)
        
        guard let output = outputBuffer else { return buffers[0] }
        
        CVPixelBufferLockBaseAddress(output, [])
        defer { CVPixelBufferUnlockBaseAddress(output, []) }
        
        guard let outputData = CVPixelBufferGetBaseAddress(output) else { return buffers[0] }
        
        // Lock all input buffers
        for buffer in buffers {
            CVPixelBufferLockBaseAddress(buffer, .readOnly)
        }
        
        let bytesPerRow = CVPixelBufferGetBytesPerRow(output)
        let pixelValues = UnsafeMutablePointer<UInt8>.allocate(capacity: buffers.count)
        defer { pixelValues.deallocate() }
        
        for y in 0..<height {
            for x in 0..<width {
                for c in 0..<4 { // BGRA channels
                    // Collect values from all buffers
                    for i in 0..<buffers.count {
                        if let baseAddress = CVPixelBufferGetBaseAddress(buffers[i]) {
                            let pixel = baseAddress.advanced(by: y * bytesPerRow + x * 4 + c)
                            pixelValues[i] = pixel.load(as: UInt8.self)
                        }
                    }
                    
                    // Sort and find median
                    let sorted = UnsafeBufferPointer(start: pixelValues, count: buffers.count).sorted()
                    let median = sorted[buffers.count / 2]
                    
                    // Write to output
                    let outputPixel = outputData.advanced(by: y * bytesPerRow + x * 4 + c)
                    outputPixel.storeBytes(of: median, as: UInt8.self)
                }
            }
        }
        
        // Unlock all input buffers
        for buffer in buffers {
            CVPixelBufferUnlockBaseAddress(buffer, .readOnly)
        }
        
        return output
    }
    
    // MARK: - Save to File
    
    private func saveToFile(_ image: CIImage, format: String, quality: Double) throws -> URL {
        let tempDir = FileManager.default.temporaryDirectory
        let timestamp = Int(Date().timeIntervalSince1970 * 1000)
        let ext = format == "png" ? "png" : "jpg"
        let filename = "fusion_\(timestamp).\(ext)"
        let url = tempDir.appendingPathComponent(filename)
        
        let colorSpace = CGColorSpace(name: CGColorSpace.sRGB)!
        
        if format == "png" {
            try context.writePNGRepresentation(of: image,
                                              to: url,
                                              format: .RGBA8,
                                              colorSpace: colorSpace)
        } else {
            try context.writeJPEGRepresentation(of: image,
                                               to: url,
                                               colorSpace: colorSpace,
                                               options: [kCGImageDestinationLossyCompressionQuality as CIImageRepresentationOption: quality])
        }
        
        return url
    }
}
