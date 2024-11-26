//
//  MoviesApp.swift
//  Movies
//
//  Created by Yuliya Vodneva on 16.10.24.
//

import SwiftUI

@main
struct MoviesApp: App {
    
    @ObservedObject var settingsManager = SettingsManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView(settings: settingsManager)
        }
    }
}
