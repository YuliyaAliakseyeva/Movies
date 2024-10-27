//
//  BarMarkView.swift
//  Movies
//
//  Created by Yuliya Vodneva on 26.10.24.
//

import SwiftUI
import Charts

struct BarMarkView: View {
    
    let movies = Movie.data
    
    var body: some View {
        
        GroupBox("Кассовые сборы, млн. $") {
            Chart(movies) {
                BarMark(
                    x: .value("Movie", $0.title),
                    y: .value("Box Office", $0.boxOffice/1000000)
                )
                .foregroundStyle(.purple)
                .cornerRadius(16)
            }
        }
    }
}


#Preview {
    BarMarkView()
}
