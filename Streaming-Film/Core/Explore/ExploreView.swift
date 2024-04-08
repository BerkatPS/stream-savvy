//
//  ExploreView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 05/04/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var phoneNumber = ""
    
    var body: some View {
        NavigationView{
            ZStack {
                Color(.black)
                    .edgesIgnoringSafeArea(.all)
                
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
                            (systemName: "chart.line.uptrend.xyaxis", label: "Trending"),
                            (systemName: "film", label: "Series"),
                            (systemName: "music.note.tv", label: "Tv Show")
                        ], navigationAction: { label in
                            
                        })
                    }
                    .padding(.vertical)
                    
                    
                    // Text CopyWriter
                    VStack{
                        
                        Text("Welcome to BD Screens \n")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .fontWeight(.semibold)
                        
                        Text("Download Unlimited\nMovies, Drama, Music Video\nand More Content.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .fontWeight(.bold)
                            .font(.title)
                        
                        Text("Enjoy exclusive Music Video populer movies and Live shows. Subscribe BD Screen now")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .fontWeight(.semibold)
                            .font(.callout)
                            .padding(.vertical)
                    }
                    .foregroundColor(.white)
                    
                    
                    // Input Text
                    VStack(alignment: .leading) {
                        HStack {
                            Text("+62")
                                .font(.title2)
                            
                            TextField("Enter mobile Number", text: $phoneNumber)
                                .font(.title2)
                                .padding(.vertical, 10)
                                .frame(height: 60)
                                .padding(.horizontal, 10)
                                .background(Color.white.opacity(0.6))
                                .cornerRadius(8)
                        }
                        
                        Button {
                            
                        }label: {
                            Text("Subscribe")
                                .font(.headline)
                                .foregroundStyle(.white)
                                .frame(width: 120, height: 20)
                                .padding()
                                .background(Color("primaryColor"))
                                .clipShape(RoundedRectangle(cornerRadius: 3))
                        }
                        .padding(.vertical)
                        .padding(.vertical)
                    }
                    .foregroundColor(.white)
                    
                    
                    // live Show
                    VStack(alignment: .leading) {
                        HStack(alignment: .top){
                            Text("Live Show")
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            
                            Spacer()
                            
                            HStack{
                                Button{
                                    
                                }label: {
                                    Text("See all")
                                        .foregroundStyle(.white)
                                    
                                    Image(systemName: "arrow.right")
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(Color("primaryColor"))
                                        .padding(.horizontal, 10)
                                    
                                }
                                
                                
                            }
                            
                        }
                        .padding(.top, 100)
                        
                        
                        
                        // Scroll Film Live show
                        ScrollView(.horizontal, showsIndicators: false) {
                            Button{
                                
                            }label: {
                                HStack(spacing: 15) {
                                    VStack(alignment: .leading) {
                                        Image("Thumbnail-liveshow")
                                            .resizable()
                                            .frame(width: 175, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 8))
                                        
                                        
                                        Text("Marvel Film Live Show")
                                            .foregroundStyle(.white)
                                            .fontWeight(.semibold)
                                        
                                        Text("750 Watching Now")
                                            .font(.callout)
                                            .foregroundStyle(Color.gray.opacity(0.8))
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        Image("Thumbnail-liveshow")
                                            .resizable()
                                            .frame(width: 175, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 8))
                                        
                                        
                                        Text("Marvel Film Live Show")
                                            .foregroundStyle(.white)
                                            .fontWeight(.semibold)
                                        
                                        Text("1h 54m ago")
                                            .font(.callout)
                                            .foregroundStyle(Color.gray.opacity(0.8))
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        Image("Thumbnail-liveshow")
                                            .resizable()
                                            .frame(width: 175, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 8))
                                        
                                        
                                        Text("Marvel Film Live Show")
                                            .foregroundStyle(.white)
                                            .fontWeight(.semibold)
                                        
                                        Text("1h 54m ago")
                                            .font(.callout)
                                            .foregroundStyle(Color.gray.opacity(0.8))
                                    }
                                }
                            }
                        }
                        .padding(.top)
                        
                        VStack(alignment: .leading) {
                            Button(action: {
                                print("sign up bin tapped")
                            }) {
                                Text("Live Now")
                                    .font(.system(size: 18))
                                    .frame(width: 100, height: 40)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("primaryColor"))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 3)
                                            .stroke(Color("primaryColor"), lineWidth: 1)
                                    )
                            }
                        }
                    }
                    
                    // Most Populer
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(alignment: .top){
                            Text("Most Populer")
                                .font(.system(size: 25))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                            
                            
                            Spacer()
                            
                            HStack{
                                Button{
                                    
                                }label: {
                                    Text("See all")
                                        .foregroundStyle(.white)
                                    
                                    Image(systemName: "arrow.right")
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(Color("primaryColor"))
                                        .padding(.horizontal, 10)
                                }
                                
                            }
                            
                        }
                        .padding(.vertical)
                        
                        // Scroll Film Live show
                        ScrollView(.horizontal, showsIndicators: false) {
                            Button{
                                
                            }label: {
                                HStack(spacing: 20) {
                                    VStack(alignment: .leading) {
                                        Image("Thumbnail-populer")
                                            .resizable()
                                            .frame(width: 150, height: 200)
                                            .clipShape(RoundedRectangle(cornerRadius: 4))
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        Image("Thumbnail-populer")
                                            .resizable()
                                            .frame(width: 150, height: 200)
                                            .clipShape(RoundedRectangle(cornerRadius: 4))
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        Image("Thumbnail-populer")
                                            .resizable()
                                            .frame(width: 150, height: 200)
                                            .clipShape(RoundedRectangle(cornerRadius: 4))
                                    }
                                }
                            }
                        }
                    }
                    .padding(.top)
                    
                    // Movies For You
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(alignment: .top){
                            Text("Movies For You")
                                .font(.system(size: 25))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                            
                            
                            Spacer()
                            
                            HStack{
                                Button{
                                    
                                }label: {
                                    Text("See all")
                                        .foregroundStyle(.white)
                                    
                                    Image(systemName: "arrow.right")
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(Color("primaryColor"))
                                        .padding(.horizontal, 10)
                                }
                                
                            }
                            
                        }
                        .padding(.vertical)
                        
                        // Scroll Film Live show
                        ScrollView(.horizontal, showsIndicators: false) {
                            Button{
                                
                            }label: {
                                HStack(spacing: 20) {
                                    VStack(alignment: .leading) {
                                        Image("Thumbnail-foryou")
                                            .resizable()
                                            .frame(width: 270, height: 200)
                                            .clipShape(RoundedRectangle(cornerRadius: 4))
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        Image("Thumbnail-foryou")
                                            .resizable()
                                            .frame(width: 270, height: 200)
                                            .clipShape(RoundedRectangle(cornerRadius: 4))
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        Image("Thumbnail-foryou")
                                            .resizable()
                                            .frame(width: 270, height: 200)
                                            .clipShape(RoundedRectangle(cornerRadius: 4))
                                    }
                                }
                            }
                        }
                    }
                    .padding(.top)
                    Spacer()
                    
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
    ExploreView()
}
