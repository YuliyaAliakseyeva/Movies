//
//  ContentView.swift
//  Movies
//
//  Created by Yuliya Vodneva on 16.10.24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var settings: SettingsManager
    
    @State private var titleOn: Bool = true
    
    
    var body: some View {
        TabView {
            InfoView(settings: settings, titleOn: titleOn)
                .tabItem { Label("Movies", systemImage: "film.stack") }
            HelloView()
                .tabItem { Label("Hello", systemImage: "hand.wave")
                }
            SettingsView(settings: settings, titleOn: $titleOn)
                .tabItem { Label("Settings", systemImage: "gearshape")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var settings = SettingsManager()
    static var previews: some View {
        NavigationView {
            ContentView(settings: settings)
                .navigationBarTitleDisplayMode(.inline)
                .navigationViewStyle(.stack)
        }
    }
}
