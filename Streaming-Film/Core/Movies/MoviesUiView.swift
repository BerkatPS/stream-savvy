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
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        Image("Thumbnail-foryou")
                            .resizable()
                            .frame(maxWidth: .infinity, maxHeight: 500)
                            .overlay(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.3), Color.black.opacity(0.9)]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                            .overlay(
                                // Custom back button
                                Button(action: {
                                    // Your back button action
                                }) {
                                    Image(systemName: "chevron.left")
                                        .padding()
                                        .font(.title2)
                                        .background(Color.black.opacity(0.7))
                                        .foregroundColor(.white)
                                        .clipShape(Circle())
                                }
                                    .padding(.top, 20)
                                    .padding(.leading, 20),
                                    alignment: .topLeading
                            )
                        
                        VStack {
                            Text("Ku kejar Mimpi")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                                .offset(y: -100)
                            
                            HStack(spacing: 10) {
                                Text("2023 ")
                                
                                Text("Movies")
                                
                                Text("Romance")
                            }
                            .font(.footnote)
                            .foregroundStyle(Color.gray.opacity(0.9))
                            .offset(y: -100)
                            
                            
                            HStack{
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                    .font(.title2)
                                
                                Text("4.9/5.0")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                
                                Text("(2.1k reviews)")
                            }
                            .font(.footnote)
                            .foregroundStyle(Color.gray.opacity(0.9))
                            .offset(y: -90)
                            
                            
                            HStack(spacing: 20){
                                LazyHGrid(rows: [GridItem(.flexible()),], spacing: 50) {
                                    HStack {
                                        Button(action: {
                                            
                                        }) {
                                            HStack(spacing: 10){
                                                Image(systemName: "play")
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                
                                                Text("Play")
                                                    .font(.title3)
                                                    .fontWeight(.bold)
                                                
                                            }
                                            .frame(width: 150, height: 20)
                                            .padding()
                                            .background(Color("primaryColor"))
                                            .foregroundColor(.white)
                                            
                                        }
                                        Button(action: {
                                            
                                        }) {
                                            HStack(spacing: 10){
                                                Image(systemName: "square.and.arrow.down")
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                
                                                Text("Download")
                                                    .font(.title3)
                                                    .fontWeight(.bold)
                                                
                                            }
                                            .frame(width: 150, height: 20)
                                            .padding()
                                            .background(Color.gray.opacity(0.23))
                                            .foregroundColor(.white)
                                        }
                                    }
                                }
                            }
                            .font(.footnote)
                            .foregroundStyle(Color.gray.opacity(0.9))
                            .offset(y: -50)
                            
                            
                            HStack(spacing: 40){
                                LazyHGrid(rows: [GridItem(.flexible()),], spacing: 500) {
                                    HStack(spacing: 40){
                                        VStack {
                                            Button(action: {
                                                
                                            }) {
                                                Image(systemName: "bookmark")
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .frame(width: 40, height: 20)
                                                    .padding(20)
                                                    .background(Color.gray.opacity(0.4))
                                                    .foregroundColor(.white)
                                                    .clipShape(Circle())
                                            }
                                            Text("Saves")
                                                .font(.subheadline)
                                        }
                                        VStack {
                                            Button(action: {
                                                
                                            }) {
                                                Image(systemName: "star.fill")
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .frame(width: 40, height: 20)
                                                    .padding(20)
                                                    .background(Color.gray.opacity(0.4))
                                                    .foregroundColor(.white)
                                                    .clipShape(Circle())
                                            }
                                            Text("Rate")
                                                .font(.subheadline)
                                        }
                                        VStack {
                                            Button(action: {
                                                
                                            }) {
                                                Image(systemName: "hand.thumbsup")
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.white)
                                                    .frame(width: 40, height: 20)
                                                    .padding(20)
                                                    .background(Color.gray.opacity(0.4))
                                                    .foregroundColor(.white)
                                                    .clipShape(Circle())
                                            }
                                            Text("Like")
                                                .font(.subheadline)
                                        }
                                        
                                    }
                                }
                            }
                            .padding(.top)
                            .font(.footnote)
                            .foregroundStyle(Color.gray.opacity(0.9))
                            .offset(y: -40)
                        }
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 30){
                        Text("Synopsis")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                            
                        
                        Text("Ku Kejar Mimpi (Chasing My Dreams) is a film that tells the story of a young man named Alex who dreams of becoming a famous musician. Alex grows up in a tough environment full of challenges, but he possesses remarkable musical talent and a strong determination to pursue his dreams. Despite facing various obstacles and setbacks, including rejection from his family and financial difficulties, Alex never gives up on his musical aspirations.")
                    }
                    .padding()
                    .padding(.vertical, 20)
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.white)
                    
                    // Result Comment Users
                    VStack(alignment: .leading){
                        Text("Comment (6)")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        
                        CommentFilmView(UserName: "Berkat Saragih", UserComment: "Awesome! Im waiting next Film!", UserImage: "Thumbnail-populer")
                        CommentFilmView(UserName: "Berkat Saragih", UserComment: "Awesome! Im waiting next Film!", UserImage: "Thumbnail-populer")
                        CommentFilmView(UserName: "Berkat Saragih", UserComment: "Awesome! Im waiting next Film!", UserImage: "Thumbnail-populer")
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    
                    //Footer
                    FooterLinkView(leadingLabelFooter: "Feedback", centerLabelFooter: "Help", trailingLabelFooter: "FAQ")
                    
                    
                    FooterSocialMediaView()
                        .foregroundColor(Color.white.opacity(0.8))
                        .padding(.vertical, 30)
                    
                }
                
            }
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    MoviesUiView()
}
