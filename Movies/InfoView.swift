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
            List(Post.data) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(settings: settings, post: post)
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
