import Foundation
import Security

class KeyChainService {
    private let accessGroup: String

    init(accessGroup: String) {
        self.accessGroup = accessGroup
    }

    func save(value: String, forKey key: String) -> OSStatus {
        let data = Data(value.utf8)
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: accessGroup,
            kSecAttrAccount as String: key,
        ]
        
        let update: [String: Any] = [kSecValueData as String: data]
        
        // First try to update the existing item
        var status = SecItemUpdate(query as CFDictionary, update as CFDictionary)
        
        // If the item does not exist, add a new item
        if status == errSecItemNotFound {
            let addQuery: [String: Any] = [
                kSecClass as String: kSecClassGenericPassword,
                kSecAttrService as String: accessGroup,
                kSecAttrAccount as String: key,
                kSecValueData as String: data
            ]
            status = SecItemAdd(addQuery as CFDictionary, nil)
        }
        
        return status
    }

    func load(forKey key: String) -> String? {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: accessGroup,
            kSecAttrAccount as String: key,
            kSecReturnData as String: kCFBooleanTrue!,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]

        var item: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &item)
        
        if status == errSecSuccess, let data = item as? Data {
            return String(data: data, encoding: .utf8)
        }

        return nil
    }

    func delete(forKey key: String) -> OSStatus {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: accessGroup,
            kSecAttrAccount as String: key
        ]

        let status = SecItemDelete(query as CFDictionary)
        return status
    }
}
