#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(OCRModule, RCTEventEmitter)

// Scan document and extract text (returns sessionToken only)
RCT_EXTERN_METHOD(scan:(NSString *)imageUri
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Retrieve OCR result by session token
RCT_EXTERN_METHOD(getResult:(NSString *)sessionToken
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Validate if a session token is still valid
RCT_EXTERN_METHOD(isTokenValid:(NSString *)sessionToken
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

// Cleanup expired tokens
RCT_EXTERN_METHOD(cleanupExpiredTokens:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)

@end
