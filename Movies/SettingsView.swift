//
//  SettingsView.swift
//  Movies
//
//  Created by Yuliya Vodneva on 17.10.24.
//

import SwiftUI

struct SettingsView: View {
    
    @ObservedObject var settings: SettingsManager
    
    @Environment(\.colorScheme) var colorScheme
    
    @Binding var titleOn: Bool
    
    //    @AppStorage("isTitle") private var isTitle = true
    
    //    @State private var sorting: String = "alphabetically"
    //    let sortArray = ["alphabetically", "reverseAlphabetically", ]
    //
    //    @State private var darkTheme = true
    
//    @State private var speed = 2005.0
    @State private var isEditing = false
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    Text(colorScheme == .dark ? "Dark Theme enabled" : "Light Theme enabled")
                } header: {
                    Text("Common Settings")
                }
                Section {
                    Toggle("Navigation title", isOn: $settings.isTitle)
                    //                        .onChange(of: settings.isTitle) {
                    //
                    //                            settings.isTitle = titleOn
                    //
                    //                        }
                    if settings.isTitle {
                        Text("Navigation title enabled")
                        
                    }
                } header: {
                    Text("Settings Navigation title")
                }
                Section {
                    Slider(
                        value: $settings.rowHeight,
                        in: 50...100,
                        step: 1
                    ) {
                        Text("Height")
                    } minimumValueLabel: {
                        Text("50")
                    } maximumValueLabel: {
                        Text("100")
                    } onEditingChanged: { editing in
                        isEditing = editing
                        
                    }
                    Text("Selected height: ")
                        .foregroundColor(.secondary) + Text("\(Int(settings.rowHeight))")
                        .foregroundColor(isEditing ? .red : .blue)
                        
                    if isEditing {
                        InfoRow(settings: settings, post: Post.data[1])
                    }
                    
                } header: {
                    Text("Settings height InfoRow")
                }
            }
        }
    }
}

//#Preview {
//    SettingsView(titleOn: .constant(true))
//}

struct SettingsView_Previews: PreviewProvider {
    static var settings = SettingsManager()
    static var previews: some View {
        SettingsView(settings: settings, titleOn: .constant(true))
    }
}

