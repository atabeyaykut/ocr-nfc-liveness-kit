import Foundation
import Vision
import CoreMedia
import UIKit
import react_native_vision_camera

/**
 * OCRFrameProcessorPlugin - Vision tabanlı gerçek zamanlı OCR için Swift frame processor plug-in'i
 */
@objc(OCRFrameProcessorPlugin)
public final class OCRFrameProcessorPlugin: FrameProcessorPlugin {
  private let textRequest: VNRecognizeTextRequest
  private let throttleInterval: TimeInterval
  private var lastProcessTime: CFAbsoluteTime = 0
  private let processingQueue = DispatchQueue(label: "com.ocr.vision.ocr", qos: .userInitiated)

  public override init(proxy: VisionCameraProxyHolder, options: [AnyHashable: Any]?) {
    self.throttleInterval = (options?["throttleMs"] as? Double ?? 350.0) / 1000.0

    self.textRequest = VNRecognizeTextRequest()
    self.textRequest.recognitionLevel = .accurate
    self.textRequest.usesLanguageCorrection = true

    if let languages = options?["languages"] as? [String], !languages.isEmpty {
      self.textRequest.recognitionLanguages = languages
    } else {
      self.textRequest.recognitionLanguages = ["tr-TR", "en-US"]
    }

    super.init(proxy: proxy, options: options)
  }

  public override func callback(_ frame: Frame, withArguments arguments: [AnyHashable: Any]?) -> Any? {
    let now = CFAbsoluteTimeGetCurrent()
    if now - lastProcessTime < throttleInterval {
      return nil
    }

    guard let sampleBuffer = frame.buffer else {
      return nil
    }

    lastProcessTime = now

    let orientation = CGImagePropertyOrientation(frame.orientation)
    var recognizedText: [String] = []
    var confidenceSum: Double = 0
    var confidenceCount: Double = 0

    do {
      try processingQueue.sync {
        let handler = VNImageRequestHandler(cmSampleBuffer: sampleBuffer, orientation: orientation, options: [:])
        try handler.perform([self.textRequest])

        guard let observations = self.textRequest.results as? [VNRecognizedTextObservation], !observations.isEmpty else {
          throw NSError(domain: "OCRFrameProcessor", code: -1, userInfo: [NSLocalizedDescriptionKey: "No text detected"])
        }

        for observation in observations {
          guard let topCandidate = observation.topCandidates(1).first else { continue }
          recognizedText.append(topCandidate.string)
          if topCandidate.confidence > 0 {
            confidenceSum += Double(topCandidate.confidence)
            confidenceCount += 1
          }
        }
      }
    } catch {
      NSLog("[OCRFrameProcessor] Vision OCR failed: %@", error.localizedDescription)
      return nil
    }

    let textOutput = recognizedText.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines)
    if textOutput.isEmpty {
      return nil
    }

    let confidence = confidenceCount > 0 ? max(0, min(1, confidenceSum / confidenceCount)) : 0

    return [
      "text": textOutput,
      "confidence": round(confidence * 1000) / 1000,
      "lineCount": recognizedText.count,
      "timestamp": now * 1000
    ]
  }
}

private extension CGImagePropertyOrientation {
  init(_ orientation: UIImage.Orientation) {
    switch orientation {
    case .up: self = .up
    case .down: self = .down
    case .left: self = .left
    case .right: self = .right
    case .upMirrored: self = .upMirrored
    case .downMirrored: self = .downMirrored
    case .leftMirrored: self = .leftMirrored
    case .rightMirrored: self = .rightMirrored
    @unknown default: self = .up
    }
  }
}

VISION_EXPORT_SWIFT_FRAME_PROCESSOR(OCRFrameProcessorPlugin, ocrScanner)
