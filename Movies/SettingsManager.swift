//
//  SettingsManager.swift
//  Movies
//
//  Created by Yuliya Vodneva on 21.10.24.
//

import Foundation
import Combine

class SettingsManager: ObservableObject {
    let objectWillChange = PassthroughSubject<Void,Never>()
    
    @SettingsDefaults(key: "isTitle", defaultValue: true)
    var isTitle: Bool {
        willSet {
            objectWillChange.send()
        }
        didSet {
            print("isTitle is \(isTitle) now")
        }
    }
    
    @SettingsDefaults(key: "rowHeight", defaultValue: 60)
    var rowHeight: Double {
        willSet {
            objectWillChange.send()
        }
        didSet {
            print("rowHeight is \(rowHeight) now")
        }
    }
}
