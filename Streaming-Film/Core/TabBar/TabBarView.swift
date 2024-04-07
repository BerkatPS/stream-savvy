//
//  TabBarView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 02/04/24.
//

import SwiftUI

struct TabBarView: View {
    let buttons: [(systemName: String, label: String)]
    let navigationAction: (String) -> Void
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(buttons, id: \.systemName) { button in
                    NavigationLink(destination: destinationForTab(label: button.label)) {
                        HStack {
                            Image(systemName: button.systemName)
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text(button.label)
                                .font(.callout)
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(.white)
                    }
                }
            }
            .padding(.vertical)
        }
    }
    
    // Fungsi untuk menentukan tujuan halaman berdasarkan label tombol
    private func destinationForTab(label: String) -> some View {
        switch label {
        case "Home":
            return AnyView(ExploreView())
        case "Movies":
            return AnyView(MoviesUiView())
        case "Series":
            return AnyView(SeriesUIView())
        default:
            return AnyView(ExploreView())
        }
    }
}

#Preview {
    TabBarView(buttons: [
        (systemName: "house.fill", label: "Home"),
    ], navigationAction: {_ in 
        
    })
}

