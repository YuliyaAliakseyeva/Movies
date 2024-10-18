//
//  ContentView.swift
//  Movies
//
//  Created by Yuliya Vodneva on 16.10.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            InfoView()
                .tabItem { Label("Movies", systemImage: "film.stack") }
            HelloView()
                .tabItem { Label("Hello", systemImage: "hand.wave")
                }
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gearshape")
                }
            
        }
    }
}

#Preview {
    ContentView()
}
