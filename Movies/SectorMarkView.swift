//
//  SectorMarkView.swift
//  Movies
//
//  Created by Yuliya Vodneva on 26.10.24.
//

import SwiftUI
import Charts

struct SectorMarkView: View {
    
    let data = FilmsGenres.genresData
    
    var body: some View {
        GroupBox("Количество фильмов по жанрам") {
            Chart(data, id: \.title) { genre in
                SectorMark(angle: .value("Value", genre.count))
                
                    .foregroundStyle(by: .value("Product category", genre.title))
                    .annotation(position: .overlay) {
                        Text("\(genre.count)")
                    }
            }
            
        }
    }
    
}

#Preview {
    SectorMarkView()
}
