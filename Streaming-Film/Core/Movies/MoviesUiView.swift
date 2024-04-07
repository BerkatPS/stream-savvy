//
//  MoviesUiView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 05/04/24.
//

import SwiftUI
import AVKit

struct MoviesUiView: View {
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    // Navbar Film
                    HStack {
                        NavigationBarView(
                            leadingText: "Stream Savvy",
                            trailingIcon: Image(systemName: "magnifyingglass"),
                            trailingButtonText: "Sign in",
                            trailingButtonAction: {}
                        ){
                            Text("Streaming Film")
                        }
                        
                        
                    }
                    .foregroundColor(.white)
                    
                    
                    // Scrolling Horizontal Tab Bar
                    HStack{
                        TabBarView(buttons: [
                            (systemName: "house.fill", label: "Home"),
                            (systemName: "movieclapper.fill", label: "Movies"),
                            (systemName: "film", label: "Series"),
                            (systemName: "music.note.tv", label: "Tv Show")
                        ], navigationAction: { label in
                            
                        })
                    }
                    .padding(.vertical)
                    
                    
                    // Result Comment Users
                    VStack(alignment: .leading){
                        Text("Comment (6)")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                        
                        CommentFilmView(UserName: "Berkat Saragih", UserComment: "Awesome! Im waiting next Series!", UserImage: "Thumbnail-populer")
                        CommentFilmView(UserName: "Berkat Saragih", UserComment: "Awesome! Im waiting next Series!", UserImage: "Thumbnail-populer")
                        CommentFilmView(UserName: "Berkat Saragih", UserComment: "Awesome! Im waiting next Series!", UserImage: "Thumbnail-populer")
                    }
                    .padding(.top, 50)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    
                    
                    
                    //Footer
                    FooterLinkView(leadingLabelFooter: "Feedback", centerLabelFooter: "Help", trailingLabelFooter: "FAQ")
                    
                    
                    FooterSocialMediaView()
                        .foregroundColor(Color.white.opacity(0.8))
                        .padding(.vertical, 30)
                    
                }
                .padding()
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    MoviesUiView()
}
