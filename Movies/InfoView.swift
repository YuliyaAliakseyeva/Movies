//
//  InfoView.swift
//  Movies
//
//  Created by Yuliya Vodneva on 16.10.24.
//

import SwiftUI

struct InfoView: View {
    
    @ObservedObject var settings: SettingsManager
    
    var titleOn: Bool
    
    var body: some View {
        NavigationView {
            List(Movie.data) { movie in
                NavigationLink {
                    InfoDetails(movie: movie)
                } label: {
                    InfoRow(settings: settings, movie: movie)
                }
            }
            .navigationTitle("Movies")
            .navigationBarHidden(!settings.isTitle)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var settings = SettingsManager()
    static var previews: some View {
        InfoView(settings: settings, titleOn: true)
    }
}
