//
//  StatisticsView.swift
//  Movies
//
//  Created by Yuliya Vodneva on 17.10.24.
//

import SwiftUI

struct StatisticsView: View {
    var body: some View {
        
        VStack(content: {
            SectorMarkView()
            BarMarkView()
        })
        .padding()
    }
}

#Preview {
    StatisticsView()
}
