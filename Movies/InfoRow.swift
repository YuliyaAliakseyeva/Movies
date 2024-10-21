//
//  InfoRow.swift
//  Movies
//
//  Created by Yuliya Vodneva on 17.10.24.
//

import SwiftUI

struct InfoRow: View {
    
    @ObservedObject var settings: SettingsManager
    
    var post: Post
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 60, height: settings.rowHeight)
                .padding(.leading, 12)
            
            Text(post.title)
            
            Spacer()
        }
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var settings = SettingsManager()
    static var previews: some View {
        InfoRow(settings: settings, post: Post.data[1])
    }
}
