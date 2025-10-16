import Foundation
import Security

/**
 * Secure storage implementation for PII data
 * Uses iOS Keychain with AES256-GCM encryption
 *
 * Fixes: SEC-001 - PII leakage through React Native bridge
 */
@objc(SecureStorage)
class SecureStorage: NSObject {
    
    static let shared = SecureStorage()
    
    private let serviceName = "com.ocr.secure.storage"
    private let expiryCache = NSCache<NSString, NSNumber>()
    private let defaultTTL: TimeInterval = 300 // 5 minutes
    
    private override init() {
        super.init()
        // Configure cache
        expiryCache.countLimit = 100
    }
    
    // MARK: - Public Methods
    
    /**
     * Generate a secure session token
     */
    @objc func generateToken() -> String {
        return UUID().uuidString
    }
    
    /**
     * Store data securely with TTL
     * - Parameters:
     *   - key: Session token
     *   - data: Data to store (must be Encodable)
     *   - ttl: Time-to-live in seconds (default: 300)
     */
    func save<T: Encodable>(_ key: String, data: T, ttl: TimeInterval = 300) throws {
        // Serialize data to JSON
        let encoder = JSONEncoder()
        let jsonData = try encoder.encode(data)
        
        // Calculate expiry time
        let expiryTime = Date().addingTimeInterval(ttl)
        let expiryTimestamp = expiryTime.timeIntervalSince1970
        
        // Create wrapper with expiry
        let wrapper = SecureDataWrapper(
            data: jsonData,
            expiryTimestamp: expiryTimestamp
        )
        
        let wrapperData = try encoder.encode(wrapper)
        
        // Store in Keychain
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: serviceName,
            kSecAttrAccount as String: key,
            kSecValueData as String: wrapperData,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly
        ]
        
        // Delete existing item first
        SecItemDelete(query as CFDictionary)
        
        // Add new item
        let status = SecItemAdd(query as CFDictionary, nil)
        
        guard status == errSecSuccess else {
            throw SecureStorageError.saveFailed(status: status)
        }
        
        // Update cache
        expiryCache.setObject(
            NSNumber(value: expiryTimestamp),
            forKey: key as NSString
        )
        
        print("[SecureStorage] Saved data with token: \(key) (expires in \(ttl)s)")
    }
    
    /**
     * Retrieve data by token
     * - Parameters:
     *   - key: Session token
     *   - type: Type to decode to
     * - Returns: Decoded data or nil if expired/not found
     */
    func get<T: Decodable>(_ key: String, as type: T.Type) throws -> T? {
        // Check expiry first (from cache or Keychain)
        if let cachedExpiry = expiryCache.object(forKey: key as NSString) {
            let expiryTime = cachedExpiry.doubleValue
            if Date().timeIntervalSince1970 > expiryTime {
                print("[SecureStorage] Token expired: \(key)")
                try? delete(key)
                return nil
            }
        }
        
        // Query Keychain
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: serviceName,
            kSecAttrAccount as String: key,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        
        var result: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &result)
        
        guard status == errSecSuccess,
              let data = result as? Data else {
            if status == errSecItemNotFound {
                print("[SecureStorage] Token not found: \(key)")
                return nil
            }
            throw SecureStorageError.retrievalFailed(status: status)
        }
        
        // Decode wrapper
        let decoder = JSONDecoder()
        let wrapper = try decoder.decode(SecureDataWrapper.self, from: data)
        
        // Check expiry
        if Date().timeIntervalSince1970 > wrapper.expiryTimestamp {
            print("[SecureStorage] Token expired: \(key)")
            try? delete(key)
            return nil
        }
        
        // Decode actual data
        let decodedData = try decoder.decode(T.self, from: wrapper.data)
        
        print("[SecureStorage] Retrieved data for token: \(key)")
        return decodedData
    }
    
    /**
     * Delete data by token
     */
    @objc func delete(_ key: String) throws {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: serviceName,
            kSecAttrAccount as String: key
        ]
        
        let status = SecItemDelete(query as CFDictionary)
        
        guard status == errSecSuccess || status == errSecItemNotFound else {
            throw SecureStorageError.deleteFailed(status: status)
        }
        
        expiryCache.removeObject(forKey: key as NSString)
        
        print("[SecureStorage] Deleted token: \(key)")
    }
    
    /**
     * Check if token exists and is valid
     */
    @objc func isValid(_ key: String) -> Bool {
        // Check cache first
        if let cachedExpiry = expiryCache.object(forKey: key as NSString) {
            let expiryTime = cachedExpiry.doubleValue
            return Date().timeIntervalSince1970 <= expiryTime
        }
        
        // Query Keychain
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: serviceName,
            kSecAttrAccount as String: key,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        
        var result: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &result)
        
        guard status == errSecSuccess,
              let data = result as? Data else {
            return false
        }
        
        // Check expiry
        do {
            let decoder = JSONDecoder()
            let wrapper = try decoder.decode(SecureDataWrapper.self, from: data)
            return Date().timeIntervalSince1970 <= wrapper.expiryTimestamp
        } catch {
            return false
        }
    }
    
    /**
     * Clean up expired tokens
     */
    @objc func cleanupExpired() {
        // Query all items
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: serviceName,
            kSecReturnAttributes as String: true,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitAll
        ]
        
        var result: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &result)
        
        guard status == errSecSuccess,
              let items = result as? [[String: Any]] else {
            return
        }
        
        var cleanedCount = 0
        let currentTime = Date().timeIntervalSince1970
        
        for item in items {
            guard let account = item[kSecAttrAccount as String] as? String,
                  let data = item[kSecValueData as String] as? Data else {
                continue
            }
            
            do {
                let decoder = JSONDecoder()
                let wrapper = try decoder.decode(SecureDataWrapper.self, from: data)
                
                if currentTime > wrapper.expiryTimestamp {
                    try? delete(account)
                    cleanedCount += 1
                }
            } catch {
                continue
            }
        }
        
        if cleanedCount > 0 {
            print("[SecureStorage] Cleaned up \(cleanedCount) expired tokens")
        }
    }
    
    /**
     * Clear all stored data (use with caution)
     */
    @objc func clearAll() throws {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: serviceName
        ]
        
        let status = SecItemDelete(query as CFDictionary)
        
        guard status == errSecSuccess || status == errSecItemNotFound else {
            throw SecureStorageError.clearFailed(status: status)
        }
        
        expiryCache.removeAllObjects()
        
        print("[SecureStorage] Cleared all secure storage")
    }
}

// MARK: - Data Models

private struct SecureDataWrapper: Codable {
    let data: Data
    let expiryTimestamp: TimeInterval
}

// MARK: - Errors

enum SecureStorageError: Error {
    case saveFailed(status: OSStatus)
    case retrievalFailed(status: OSStatus)
    case deleteFailed(status: OSStatus)
    case clearFailed(status: OSStatus)
    case encodingFailed
    case decodingFailed
    
    var localizedDescription: String {
        switch self {
        case .saveFailed(let status):
            return "Failed to save data to Keychain (status: \(status))"
        case .retrievalFailed(let status):
            return "Failed to retrieve data from Keychain (status: \(status))"
        case .deleteFailed(let status):
            return "Failed to delete data from Keychain (status: \(status))"
        case .clearFailed(let status):
            return "Failed to clear Keychain (status: \(status))"
        case .encodingFailed:
            return "Failed to encode data"
        case .decodingFailed:
            return "Failed to decode data"
        }
    }
}
