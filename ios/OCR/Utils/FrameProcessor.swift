import Foundation
import UIKit
import CoreImage
import Accelerate

/**
 * Frame Processor - Image preprocessing and enhancement for OCR
 *
 * Features:
 * - Perspective correction
 * - Glare detection and removal
 * - Blur detection
 * - Contrast enhancement
 * - Noise reduction
 * - Edge detection
 */
class FrameProcessor {
    
    private let context: CIContext
    
    init() {
        self.context = CIContext(options: [
            .workingColorSpace: NSNull(),
            .outputColorSpace: NSNull(),
            .useSoftwareRenderer: false
        ])
    }
    
    // MARK: - Public Methods
    
    /**
     * Preprocess image for OCR
     */
    func preprocessForOCR(_ image: UIImage) -> UIImage? {
        guard let ciImage = CIImage(image: image) else { return nil }
        
        var processedImage = ciImage
        
        // 1. Perspective correction (if document edges detected)
        if let corrected = correctPerspective(processedImage) {
            processedImage = corrected
        }
        
        // 2. Convert to grayscale
        processedImage = convertToGrayscale(processedImage)
        
        // 3. Enhance contrast
        processedImage = enhanceContrast(processedImage)
        
        // 4. Remove noise
        processedImage = reduceNoise(processedImage)
        
        // 5. Sharpen
        processedImage = sharpenImage(processedImage)
        
        // Convert back to UIImage
        return convertToUIImage(processedImage)
    }
    
    /**
     * Analyze image quality
     */
    func analyzeQuality(_ image: UIImage) -> ImageQuality {
        guard let ciImage = CIImage(image: image) else {
            return ImageQuality(
                overallScore: 0.0,
                hasGlare: false,
                isBlurry: true,
                brightness: 0.0,
                contrast: 0.0,
                sharpness: 0.0
            )
        }
        
        let hasGlare = detectGlare(ciImage)
        let blurScore = calculateBlurScore(ciImage)
        let brightness = calculateBrightness(ciImage)
        let contrast = calculateContrast(ciImage)
        let sharpness = calculateSharpness(ciImage)
        
        let isBlurry = blurScore < 100.0
        
        // Calculate overall quality score
        var overallScore = 1.0
        
        if hasGlare {
            overallScore -= 0.3
        }
        
        if isBlurry {
            overallScore -= 0.3
        }
        
        if brightness < 0.3 || brightness > 0.8 {
            overallScore -= 0.2
        }
        
        if contrast < 0.3 {
            overallScore -= 0.2
        }
        
        overallScore = max(0.0, overallScore)
        
        return ImageQuality(
            overallScore: overallScore,
            hasGlare: hasGlare,
            isBlurry: isBlurry,
            brightness: brightness,
            contrast: contrast,
            sharpness: sharpness
        )
    }
    
    /**
     * Detect and correct perspective distortion
     */
    func correctPerspective(_ image: CIImage) -> CIImage? {
        // Detect rectangle (document edges)
        guard let detector = CIDetector(
            ofType: CIDetectorTypeRectangle,
            context: context,
            options: [CIDetectorAccuracy: CIDetectorAccuracyHigh]
        ) else {
            return nil
        }
        
        guard let features = detector.features(in: image) as? [CIRectangleFeature],
              let rectangle = features.first else {
            return nil
        }
        
        // Apply perspective correction
        let perspectiveCorrection = CIFilter(name: "CIPerspectiveCorrection")
        perspectiveCorrection?.setValue(image, forKey: kCIInputImageKey)
        perspectiveCorrection?.setValue(CIVector(cgPoint: rectangle.topLeft), forKey: "inputTopLeft")
        perspectiveCorrection?.setValue(CIVector(cgPoint: rectangle.topRight), forKey: "inputTopRight")
        perspectiveCorrection?.setValue(CIVector(cgPoint: rectangle.bottomLeft), forKey: "inputBottomLeft")
        perspectiveCorrection?.setValue(CIVector(cgPoint: rectangle.bottomRight), forKey: "inputBottomRight")
        
        return perspectiveCorrection?.outputImage
    }
    
    /**
     * Remove glare from image
     */
    func removeGlare(_ image: CIImage) -> CIImage {
        // Use morphological operations to detect bright spots
        let threshold = CIFilter(name: "CIColorControls")
        threshold?.setValue(image, forKey: kCIInputImageKey)
        threshold?.setValue(1.5, forKey: kCIInputContrastKey)
        
        guard let output = threshold?.outputImage else { return image }
        
        // Apply median filter to smooth glare areas
        let medianFilter = CIFilter(name: "CIMedianFilter")
        medianFilter?.setValue(output, forKey: kCIInputImageKey)
        
        return medianFilter?.outputImage ?? image
    }
    
    // MARK: - Image Processing
    
    private func convertToGrayscale(_ image: CIImage) -> CIImage {
        let grayscale = CIFilter(name: "CIPhotoEffectMono")
        grayscale?.setValue(image, forKey: kCIInputImageKey)
        return grayscale?.outputImage ?? image
    }
    
    private func enhanceContrast(_ image: CIImage) -> CIImage {
        let contrast = CIFilter(name: "CIColorControls")
        contrast?.setValue(image, forKey: kCIInputImageKey)
        contrast?.setValue(1.3, forKey: kCIInputContrastKey)
        contrast?.setValue(1.1, forKey: kCIInputSaturationKey)
        return contrast?.outputImage ?? image
    }
    
    private func reduceNoise(_ image: CIImage) -> CIImage {
        let noiseReduction = CIFilter(name: "CINoiseReduction")
        noiseReduction?.setValue(image, forKey: kCIInputImageKey)
        noiseReduction?.setValue(0.02, forKey: "inputNoiseLevel")
        noiseReduction?.setValue(0.4, forKey: "inputSharpness")
        return noiseReduction?.outputImage ?? image
    }
    
    private func sharpenImage(_ image: CIImage) -> CIImage {
        let sharpen = CIFilter(name: "CISharpenLuminance")
        sharpen?.setValue(image, forKey: kCIInputImageKey)
        sharpen?.setValue(0.5, forKey: kCIInputSharpnessKey)
        return sharpen?.outputImage ?? image
    }
    
    // MARK: - Quality Analysis
    
    private func detectGlare(_ image: CIImage) -> Bool {
        // Detect bright spots that could be glare
        let extent = image.extent
        
        // Sample center region
        let sampleRect = CGRect(
            x: extent.midX - extent.width / 4,
            y: extent.midY - extent.height / 4,
            width: extent.width / 2,
            height: extent.height / 2
        )
        
        guard let cgImage = context.createCGImage(image, from: sampleRect) else {
            return false
        }
        
        // Analyze brightness distribution
        guard let dataProvider = cgImage.dataProvider,
              let data = dataProvider.data,
              let bytes = CFDataGetBytePtr(data) else {
            return false
        }
        
        let bytesPerPixel = cgImage.bitsPerPixel / 8
        let bytesPerRow = cgImage.bytesPerRow
        
        var brightPixelCount = 0
        let totalPixels = cgImage.width * cgImage.height
        let threshold: UInt8 = 240
        
        for y in 0..<cgImage.height {
            for x in 0..<cgImage.width {
                let offset = y * bytesPerRow + x * bytesPerPixel
                let brightness = bytes[offset]
                
                if brightness > threshold {
                    brightPixelCount += 1
                }
            }
        }
        
        let brightPixelRatio = Double(brightPixelCount) / Double(totalPixels)
        
        // Glare detected if more than 10% pixels are very bright
        return brightPixelRatio > 0.1
    }
    
    private func calculateBlurScore(_ image: CIImage) -> Double {
        // Use Laplacian variance to detect blur
        let extent = image.extent
        
        guard let cgImage = context.createCGImage(image, from: extent) else {
            return 0.0
        }
        
        guard let dataProvider = cgImage.dataProvider,
              let data = dataProvider.data,
              let bytes = CFDataGetBytePtr(data) else {
            return 0.0
        }
        
        let width = cgImage.width
        let height = cgImage.height
        let bytesPerPixel = cgImage.bitsPerPixel / 8
        let bytesPerRow = cgImage.bytesPerRow
        
        var laplacianSum = 0.0
        var pixelCount = 0
        
        // Apply Laplacian kernel
        for y in 1..<(height - 1) {
            for x in 1..<(width - 1) {
                let offset = y * bytesPerRow + x * bytesPerPixel
                
                let center = Double(bytes[offset])
                let top = Double(bytes[(y - 1) * bytesPerRow + x * bytesPerPixel])
                let bottom = Double(bytes[(y + 1) * bytesPerRow + x * bytesPerPixel])
                let left = Double(bytes[y * bytesPerRow + (x - 1) * bytesPerPixel])
                let right = Double(bytes[y * bytesPerRow + (x + 1) * bytesPerPixel])
                
                let laplacian = abs(4 * center - top - bottom - left - right)
                laplacianSum += laplacian
                pixelCount += 1
            }
        }
        
        let variance = laplacianSum / Double(pixelCount)
        
        // Higher variance = sharper image
        return variance
    }
    
    private func calculateBrightness(_ image: CIImage) -> Double {
        let extent = image.extent
        
        guard let cgImage = context.createCGImage(image, from: extent) else {
            return 0.5
        }
        
        guard let dataProvider = cgImage.dataProvider,
              let data = dataProvider.data,
              let bytes = CFDataGetBytePtr(data) else {
            return 0.5
        }
        
        let bytesPerPixel = cgImage.bitsPerPixel / 8
        let bytesPerRow = cgImage.bytesPerRow
        
        var brightnessSum = 0.0
        let totalPixels = cgImage.width * cgImage.height
        
        for y in 0..<cgImage.height {
            for x in 0..<cgImage.width {
                let offset = y * bytesPerRow + x * bytesPerPixel
                brightnessSum += Double(bytes[offset])
            }
        }
        
        let averageBrightness = brightnessSum / Double(totalPixels)
        
        return averageBrightness / 255.0
    }
    
    private func calculateContrast(_ image: CIImage) -> Double {
        let extent = image.extent
        
        guard let cgImage = context.createCGImage(image, from: extent) else {
            return 0.5
        }
        
        guard let dataProvider = cgImage.dataProvider,
              let data = dataProvider.data,
              let bytes = CFDataGetBytePtr(data) else {
            return 0.5
        }
        
        let bytesPerPixel = cgImage.bitsPerPixel / 8
        let bytesPerRow = cgImage.bytesPerRow
        
        var minBrightness: UInt8 = 255
        var maxBrightness: UInt8 = 0
        
        for y in 0..<cgImage.height {
            for x in 0..<cgImage.width {
                let offset = y * bytesPerRow + x * bytesPerPixel
                let brightness = bytes[offset]
                
                minBrightness = min(minBrightness, brightness)
                maxBrightness = max(maxBrightness, brightness)
            }
        }
        
        let contrast = Double(maxBrightness - minBrightness) / 255.0
        
        return contrast
    }
    
    private func calculateSharpness(_ image: CIImage) -> Double {
        // Use edge detection to measure sharpness
        let edges = CIFilter(name: "CIEdges")
        edges?.setValue(image, forKey: kCIInputImageKey)
        edges?.setValue(1.0, forKey: kCIInputIntensityKey)
        
        guard let edgeImage = edges?.outputImage,
              let cgImage = context.createCGImage(edgeImage, from: edgeImage.extent) else {
            return 0.0
        }
        
        guard let dataProvider = cgImage.dataProvider,
              let data = dataProvider.data,
              let bytes = CFDataGetBytePtr(data) else {
            return 0.0
        }
        
        let bytesPerPixel = cgImage.bitsPerPixel / 8
        let bytesPerRow = cgImage.bytesPerRow
        
        var edgeSum = 0.0
        let totalPixels = cgImage.width * cgImage.height
        
        for y in 0..<cgImage.height {
            for x in 0..<cgImage.width {
                let offset = y * bytesPerRow + x * bytesPerPixel
                edgeSum += Double(bytes[offset])
            }
        }
        
        let averageEdge = edgeSum / Double(totalPixels)
        
        return averageEdge / 255.0
    }
    
    // MARK: - Helper Methods
    
    private func convertToUIImage(_ ciImage: CIImage) -> UIImage? {
        guard let cgImage = context.createCGImage(ciImage, from: ciImage.extent) else {
            return nil
        }
        
        return UIImage(cgImage: cgImage)
    }
}

// MARK: - Data Models

struct ImageQuality: Codable {
    let overallScore: Double
    let hasGlare: Bool
    let isBlurry: Bool
    let brightness: Double
    let contrast: Double
    let sharpness: Double
}
