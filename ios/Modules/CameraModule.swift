import Foundation
import React
import AVFoundation
import UIKit

/**
 * Camera Module - High-performance camera capture and frame processing
 *
 * Features:
 * - Real-time frame capture with configurable quality
 * - Image preprocessing and enhancement
 * - Auto-focus and exposure control
 * - Flash control
 * - Front/back camera switching
 */
@objc(CameraModule)
class CameraModule: RCTEventEmitter {
    
    private var captureSession: AVCaptureSession?
    private var videoOutput: AVCaptureVideoDataOutput?
    private var photoOutput: AVCapturePhotoOutput?
    private var currentCamera: AVCaptureDevice?
    private var previewLayer: AVCaptureVideoPreviewLayer?
    
    // Photo capture callback
    private var photoCaptureCompletion: ((UIImage?, Error?) -> Void)?
    
    // Frame processing
    private var isProcessingFrame = false
    private var frameSkipCount = 0
    private var frameSkipInterval = 3 // Process every 3rd frame
    
    override static func moduleName() -> String! {
        return "CameraModule"
    }
    
    override func supportedEvents() -> [String]! {
        return [
            "CAMERA_READY",
            "CAMERA_ERROR",
            "FRAME_CAPTURED",
            "PHOTO_CAPTURED",
            "FOCUS_CHANGED",
            "EXPOSURE_CHANGED"
        ]
    }
    
    override static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
    // MARK: - Public Methods
    
    /**
     * Initialize camera with specified configuration
     */
    @objc func initializeCamera(
        _ config: [String: Any],
        resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            do {
                let cameraPosition = config["cameraPosition"] as? String ?? "back"
                let quality = config["quality"] as? String ?? "high"
                
                try self.setupCamera(position: cameraPosition, quality: quality)
                
                self.sendEvent(
                    withName: "CAMERA_READY",
                    body: [
                        "cameraPosition": cameraPosition,
                        "quality": quality
                    ]
                )
                
                resolve([
                    "status": "INITIALIZED",
                    "cameraPosition": cameraPosition,
                    "quality": quality
                ])
                
            } catch {
                reject("CAMERA_INIT_FAILED", error.localizedDescription, error)
            }
        }
    }
    
    /**
     * Start camera preview
     */
    @objc func startPreview(
        _ resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            guard let session = self.captureSession else {
                reject("CAMERA_NOT_INITIALIZED", "Camera not initialized", nil)
                return
            }
            
            if !session.isRunning {
                session.startRunning()
            }
            
            resolve(["status": "STARTED"])
        }
    }
    
    /**
     * Stop camera preview
     */
    @objc func stopPreview(
        _ resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            self.captureSession?.stopRunning()
            resolve(["status": "STOPPED"])
        }
    }
    
    /**
     * Capture photo
     */
    @objc func capturePhoto(
        _ options: [String: Any],
        resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            guard let photoOutput = self.photoOutput else {
                reject("PHOTO_OUTPUT_NOT_AVAILABLE", "Photo output not configured", nil)
                return
            }
            
            let settings = AVCapturePhotoSettings()
            
            // Configure flash
            if let flashMode = options["flash"] as? String {
                switch flashMode {
                case "on":
                    settings.flashMode = .on
                case "off":
                    settings.flashMode = .off
                case "auto":
                    settings.flashMode = .auto
                default:
                    settings.flashMode = .off
                }
            }
            
            // Set quality
            if let quality = options["quality"] as? Double {
                settings.photoQualityPrioritization = quality > 0.8 ? .quality : .speed
            }
            
            // Store completion handler
            self.photoCaptureCompletion = { image, error in
                if let error = error {
                    reject("PHOTO_CAPTURE_FAILED", error.localizedDescription, error)
                } else if let image = image {
                    // Save to temp file
                    do {
                        let filePath = try self.saveImageToTemp(image)
                        
                        resolve([
                            "uri": filePath,
                            "width": image.size.width,
                            "height": image.size.height
                        ])
                    } catch {
                        reject("PHOTO_SAVE_FAILED", error.localizedDescription, error)
                    }
                }
            }
            
            // Capture photo
            photoOutput.capturePhoto(with: settings, delegate: self)
        }
    }
    
    /**
     * Switch camera (front/back)
     */
    @objc func switchCamera(
        _ resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            guard let session = self.captureSession,
                  let currentInput = session.inputs.first as? AVCaptureDeviceInput else {
                reject("CAMERA_SWITCH_FAILED", "No camera input found", nil)
                return
            }
            
            let newPosition: AVCaptureDevice.Position = currentInput.device.position == .back ? .front : .back
            
            do {
                // Remove current input
                session.beginConfiguration()
                session.removeInput(currentInput)
                
                // Add new input
                guard let newCamera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: newPosition) else {
                    throw CameraError.cameraNotAvailable
                }
                
                let newInput = try AVCaptureDeviceInput(device: newCamera)
                
                if session.canAddInput(newInput) {
                    session.addInput(newInput)
                    self.currentCamera = newCamera
                    session.commitConfiguration()
                    
                    resolve([
                        "status": "SWITCHED",
                        "cameraPosition": newPosition == .back ? "back" : "front"
                    ])
                } else {
                    throw CameraError.cameraSetupFailed
                }
                
            } catch {
                session.commitConfiguration()
                reject("CAMERA_SWITCH_FAILED", error.localizedDescription, error)
            }
        }
    }
    
    /**
     * Set focus point
     */
    @objc func setFocusPoint(
        _ point: [String: Double],
        resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            guard let camera = self.currentCamera,
                  let x = point["x"],
                  let y = point["y"] else {
                reject("INVALID_FOCUS_POINT", "Invalid focus point coordinates", nil)
                return
            }
            
            do {
                try camera.lockForConfiguration()
                
                if camera.isFocusPointOfInterestSupported && camera.isFocusModeSupported(.autoFocus) {
                    camera.focusPointOfInterest = CGPoint(x: x, y: y)
                    camera.focusMode = .autoFocus
                }
                
                if camera.isExposurePointOfInterestSupported && camera.isExposureModeSupported(.autoExpose) {
                    camera.exposurePointOfInterest = CGPoint(x: x, y: y)
                    camera.exposureMode = .autoExpose
                }
                
                camera.unlockForConfiguration()
                
                self.sendEvent(
                    withName: "FOCUS_CHANGED",
                    body: ["x": x, "y": y]
                )
                
                resolve(["status": "FOCUSED"])
                
            } catch {
                reject("FOCUS_FAILED", error.localizedDescription, error)
            }
        }
    }
    
    /**
     * Enable/disable flash
     */
    @objc func setFlashMode(
        _ mode: String,
        resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            guard let camera = self.currentCamera else {
                reject("CAMERA_NOT_AVAILABLE", "Camera not initialized", nil)
                return
            }
            
            do {
                try camera.lockForConfiguration()
                
                if camera.hasTorch {
                    switch mode {
                    case "on":
                        camera.torchMode = .on
                    case "off":
                        camera.torchMode = .off
                    case "auto":
                        camera.torchMode = .auto
                    default:
                        break
                    }
                }
                
                camera.unlockForConfiguration()
                
                resolve(["flashMode": mode])
                
            } catch {
                reject("FLASH_MODE_FAILED", error.localizedDescription, error)
            }
        }
    }
    
    /**
     * Get camera capabilities
     */
    @objc func getCameraCapabilities(
        _ resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        guard let camera = currentCamera else {
            reject("CAMERA_NOT_AVAILABLE", "Camera not initialized", nil)
            return
        }
        
        resolve([
            "hasFlash": camera.hasFlash,
            "hasTorch": camera.hasTorch,
            "hasFocus": camera.isFocusModeSupported(.autoFocus),
            "hasExposure": camera.isExposureModeSupported(.autoExpose),
            "position": camera.position == .back ? "back" : "front",
            "deviceType": camera.deviceType.rawValue
        ])
    }
    
    // MARK: - Camera Setup
    
    private func setupCamera(position: String, quality: String) throws {
        // Check permissions
        let authStatus = AVCaptureDevice.authorizationStatus(for: .video)
        guard authStatus == .authorized else {
            if authStatus == .notDetermined {
                // Permission will be requested by system
            }
            throw CameraError.permissionDenied
        }
        
        // Create capture session
        let session = AVCaptureSession()
        
        // Set quality preset
        switch quality {
        case "high":
            session.sessionPreset = .high
        case "medium":
            session.sessionPreset = .medium
        case "low":
            session.sessionPreset = .low
        case "photo":
            session.sessionPreset = .photo
        default:
            session.sessionPreset = .high
        }
        
        // Get camera
        let cameraPosition: AVCaptureDevice.Position = position == "front" ? .front : .back
        guard let camera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: cameraPosition) else {
            throw CameraError.cameraNotAvailable
        }
        
        // Create input
        let input = try AVCaptureDeviceInput(device: camera)
        guard session.canAddInput(input) else {
            throw CameraError.cameraSetupFailed
        }
        session.addInput(input)
        
        // Create video output
        let videoOutput = AVCaptureVideoDataOutput()
        videoOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "camera.frame.queue"))
        videoOutput.videoSettings = [
            kCVPixelBufferPixelFormatTypeKey as String: kCVPixelFormatType_32BGRA
        ]
        
        if session.canAddOutput(videoOutput) {
            session.addOutput(videoOutput)
        }
        
        // Create photo output
        let photoOutput = AVCapturePhotoOutput()
        if session.canAddOutput(photoOutput) {
            session.addOutput(photoOutput)
        }
        
        self.captureSession = session
        self.videoOutput = videoOutput
        self.photoOutput = photoOutput
        self.currentCamera = camera
        
        // Configure camera settings
        try camera.lockForConfiguration()
        
        if camera.isFocusModeSupported(.continuousAutoFocus) {
            camera.focusMode = .continuousAutoFocus
        }
        
        if camera.isExposureModeSupported(.continuousAutoExposure) {
            camera.exposureMode = .continuousAutoExposure
        }
        
        if camera.isWhiteBalanceModeSupported(.continuousAutoWhiteBalance) {
            camera.whiteBalanceMode = .continuousAutoWhiteBalance
        }
        
        camera.unlockForConfiguration()
    }
    
    // MARK: - Helper Methods
    
    private func saveImageToTemp(_ image: UIImage) throws -> String {
        let tempDir = NSTemporaryDirectory()
        let fileName = "camera_\(UUID().uuidString).jpg"
        let filePath = (tempDir as NSString).appendingPathComponent(fileName)
        
        guard let data = image.jpegData(compressionQuality: 0.9) else {
            throw CameraError.imageSaveFailed
        }
        
        try data.write(to: URL(fileURLWithPath: filePath))
        
        return filePath
    }
    
    private func cleanup() {
        captureSession?.stopRunning()
        captureSession = nil
        videoOutput = nil
        photoOutput = nil
        currentCamera = nil
        previewLayer = nil
    }
}

// MARK: - AVCaptureVideoDataOutputSampleBufferDelegate

extension CameraModule: AVCaptureVideoDataOutputSampleBufferDelegate {
    func captureOutput(
        _ output: AVCaptureOutput,
        didOutput sampleBuffer: CMSampleBuffer,
        from connection: AVCaptureConnection
    ) {
        // Skip frames for performance
        frameSkipCount += 1
        if frameSkipCount < frameSkipInterval {
            return
        }
        frameSkipCount = 0
        
        // Prevent concurrent processing
        guard !isProcessingFrame else { return }
        isProcessingFrame = true
        
        defer {
            isProcessingFrame = false
        }
        
        // Process frame (can be extended for real-time analysis)
        guard let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        // Send frame captured event
        sendEvent(
            withName: "FRAME_CAPTURED",
            body: [
                "timestamp": Date().timeIntervalSince1970,
                "width": CVPixelBufferGetWidth(pixelBuffer),
                "height": CVPixelBufferGetHeight(pixelBuffer)
            ]
        )
    }
}

// MARK: - AVCapturePhotoCaptureDelegate

extension CameraModule: AVCapturePhotoCaptureDelegate {
    func photoOutput(
        _ output: AVCapturePhotoOutput,
        didFinishProcessingPhoto photo: AVCapturePhoto,
        error: Error?
    ) {
        if let error = error {
            photoCaptureCompletion?(nil, error)
            photoCaptureCompletion = nil
            return
        }
        
        guard let imageData = photo.fileDataRepresentation(),
              let image = UIImage(data: imageData) else {
            photoCaptureCompletion?(nil, CameraError.imageProcessingFailed)
            photoCaptureCompletion = nil
            return
        }
        
        photoCaptureCompletion?(image, nil)
        photoCaptureCompletion = nil
        
        sendEvent(
            withName: "PHOTO_CAPTURED",
            body: [
                "timestamp": Date().timeIntervalSince1970
            ]
        )
    }
}

// MARK: - Error Types

enum CameraError: Error {
    case permissionDenied
    case cameraNotAvailable
    case cameraSetupFailed
    case imageSaveFailed
    case imageProcessingFailed
    
    var localizedDescription: String {
        switch self {
        case .permissionDenied:
            return "Camera permission denied"
        case .cameraNotAvailable:
            return "Camera not available"
        case .cameraSetupFailed:
            return "Failed to setup camera"
        case .imageSaveFailed:
            return "Failed to save image"
        case .imageProcessingFailed:
            return "Failed to process image"
        }
    }
}
