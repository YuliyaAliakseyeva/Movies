//
//  InfoDetails.swift
//  Movies
//
//  Created by Yuliya Vodneva on 17.10.24.
//

import SwiftUI

struct InfoDetails: View {
    
    var movie: Movie
    
    var body: some View {
        ScrollView {
            
            movie.image
                .resizable()
                .scaledToFill()
                .padding(.top, 12)
                .shadow(radius: 12)
            
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                
                Divider()
                
                Text(movie.description)
                
            }
            .padding()
        }
        .navigationTitle(movie.title)
        .background(Color(.lightGray))
    }
    
}


#Preview {
    InfoDetails(movie: Movie.data[1])
}
