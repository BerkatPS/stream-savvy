//
//  TabBarView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 02/04/24.
//

import SwiftUI

struct TabBarView: View  {
    let buttons: [(systemName: String, label: String)]
    let action: (String) -> Void
    
//    house.fill,Home
//    movieclapper,Movies
//    film,Series
//    music.note.tv,Series
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 30) {
                        ForEach(buttons, id: \.systemName) { button in
                            Button(action: {
                                self.action(button.label)
                            }) {
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
}

#Preview {
    TabBarView(buttons: [
        (systemName: "house.fill", label: "Home"),
    ]) {label in
        
    }
}
