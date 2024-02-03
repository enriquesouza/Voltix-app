//
//  UserDefaultsService.swift
//  Voltix
//
//  Created by Enrique Souza Soares on 03/02/24.
//

import Foundation

class UserDefaultsService {
    private let userDefaults: UserDefaults

    init() {
        userDefaults = UserDefaults.standard
    }

    func save(value: Any, forKey key: String) {
        userDefaults.set(value, forKey: key)
    }

    func load<T>(forKey key: String) -> T? {
        return userDefaults.object(forKey: key) as? T
    }
}

