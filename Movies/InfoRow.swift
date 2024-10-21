//
//  InfoRow.swift
//  Movies
//
//  Created by Yuliya Vodneva on 17.10.24.
//

import SwiftUI

struct InfoRow: View {
    
    var post: Post
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 60, height: 60)
                .padding(.leading, 12)
            
            Text(post.title)
            
            Spacer()
        }
    }
}

#Preview {
    InfoRow(post: Post.data[1])
}
