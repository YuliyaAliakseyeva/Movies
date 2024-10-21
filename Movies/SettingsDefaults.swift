//
//  SettingsDefaults.swift
//  Movies
//
//  Created by Yuliya Vodneva on 21.10.24.
//

import Foundation

@propertyWrapper
struct SettingsDefaults <T> {
    let key: String
    let defaultValue: T
    
    init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: key)
        }
    }
}
