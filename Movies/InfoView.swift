//
//  InfoView.swift
//  Movies
//
//  Created by Yuliya Vodneva on 16.10.24.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(Post.data) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
                
            }
            
        }
    }
}

#Preview {
    InfoView()
}
