//
//  SettingsView.swift
//  Movies
//
//  Created by Yuliya Vodneva on 17.10.24.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var sorting: String = "alphabetically"
    let sortArray = ["alphabetically", "reverseAlphabetically", ]
    
    @State private var darkTheme = true
    
    @State private var speed = 2005.0
    @State private var isEditing = false
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    Toggle(isOn: $darkTheme) {
                                Text("Dark theme")
                            }
                } header: {
                    Text("Common Settings")
                }
                Section {
                    Picker("Sorting", selection: $sorting) {
                        ForEach(sortArray, id: \.self) { sorting in
                            Text(sorting).tag(sorting)
                        }
                    }
                } header: {
                    Text("Settings movies list")
                }
                Section {
                    Slider(
                            value: $speed,
                            in: 2001...2015,
                            step: 1
                        ) {
                            Text("Year")
                        } minimumValueLabel: {
                            Text("2001")
                        } maximumValueLabel: {
                            Text("2015")
                        } onEditingChanged: { editing in
                            isEditing = editing
                        }
                        Text("\(Int(speed))")
                            .foregroundColor(isEditing ? .red : .blue)
                } header: {
                    Text("Filter movies list")
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}

