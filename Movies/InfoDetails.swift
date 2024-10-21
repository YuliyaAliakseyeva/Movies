//
//  InfoDetails.swift
//  Movies
//
//  Created by Yuliya Vodneva on 17.10.24.
//

import SwiftUI

struct InfoDetails: View {
    
    var post: Post
    
    var body: some View {
        ScrollView {
            
            post.image
                .resizable()
                .scaledToFill()
                .padding(.top, 12)
                .shadow(radius: 12)
            
            VStack(alignment: .leading) {
                Text(post.title)
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                
                Divider()
                
                Text(post.description)
                
            }
            .padding()
        }
        .navigationTitle(post.title)
        .background(Color(.lightGray))
    }
    
}


#Preview {
    InfoDetails(post: Post.data[1])
}
