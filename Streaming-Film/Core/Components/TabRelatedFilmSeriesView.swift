//
//  TabRelatedFilmSeriesView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 05/04/24.
//

import SwiftUI

struct TabRelatedFilmSeriesView: View {
    var tabLabel: String
    var colorTab: Color
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(tabLabel)
                .foregroundColor(.white)
                .frame(width: 180, height: 40)
                .background(colorTab)
                .clipShape(RoundedRectangle(cornerRadius: 5))
        }
    }
}

#Preview {
    TabRelatedFilmSeriesView(tabLabel: "Episodes", colorTab: Color("primaryColor")) {
        
    }
}
