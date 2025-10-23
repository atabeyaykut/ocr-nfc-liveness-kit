#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(CameraModule, RCTEventEmitter)

// Initialize camera with configuration
RCT_EXTERN_METHOD(initializeCamera:(NSDictionary *)config
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Start camera preview
RCT_EXTERN_METHOD(startPreview:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Stop camera preview
RCT_EXTERN_METHOD(stopPreview:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Capture photo
RCT_EXTERN_METHOD(capturePhoto:(NSDictionary *)options
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Switch camera (front/back)
RCT_EXTERN_METHOD(switchCamera:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Set focus point
RCT_EXTERN_METHOD(setFocusPoint:(NSDictionary *)point
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Set flash mode
RCT_EXTERN_METHOD(setFlashMode:(NSString *)mode
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Get camera capabilities
RCT_EXTERN_METHOD(getCameraCapabilities:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

@end
