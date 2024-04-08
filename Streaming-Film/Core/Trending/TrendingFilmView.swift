//
//  TrendingFilmView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 07/04/24.
//

import SwiftUI

struct TrendingFilmView: View {
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
                            (systemName: "chart.line.uptrend.xyaxis", label: "Trending"),
                            (systemName: "film", label: "Series"),
                            (systemName: "music.note.tv", label: "Tv Show")
                        ], navigationAction: { label in
                            
                        })
                    }
                    .padding(.vertical)
                    
                    
                    VStack {
                        HStack(spacing: 15){
                            Rectangle()
                                    .fill(Color("primaryColor"))
                                    .frame(width: 5, height: 40)
                            Text("Trending")
                                .font(.title2)
                                .fontWeight(.bold)
                                
                            Spacer()
                            
                            Button{
                                
                            }label: {
                                Text("See all")
                                    .foregroundStyle(Color("primaryColor"))
                                    
                            }
                            
                            Button{
                                
                            }label: {
                                Text("Series")

                            }
                            
                            Button{
                                
                            }label: {
                                Text("Tv Show")
                            }
                        }
                        .foregroundStyle(.white)
                    }
                    
                    VStack {
                        ForEach(0..<5) { rowIndex in
                            HStack(spacing: 10) {
                                ForEach(0..<3) { columnIndex in
                                    Button(action: {
                                        // Action when button tapped
                                    }) {
                                        VStack(alignment: .leading) {
                                            Image("Thumbnail-liveshow")
                                                .resizable()
                                                .frame(width: 113, height: 180)
                                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                            
                                            Text("365 Days")
                                                .foregroundColor(.white)
                                                .fontWeight(.semibold)
                                            
                                            Text("07, Feb, 2020")
                                                .font(.callout)
                                                .foregroundColor(Color.gray.opacity(0.8))
                                        }
                                    }
                                }
                            }
                            .padding(.bottom, 20) // Padding antara baris
                        }
                    }
                    .padding(.top, 10)
                    
                    LazyHGrid(rows: [GridItem(.flexible()),], spacing: 50) {
                        HStack {
                            Button(action: {
                                
                            }) {
                                HStack{
                                    Image(systemName: "arrowtriangle.left")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("primaryColor"))
                                }
                                .frame(width: 150, height: 30)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .foregroundColor(.white)
                                
                            }
                            Button(action: {
                                
                            }) {
                                HStack{
                                    Image(systemName: "arrowtriangle.right")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("primaryColor"))
                                    
                                }
                                .frame(width: 150, height: 30)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .foregroundColor(.white)
                            }
                        }
                    }
                    
                    
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
    TrendingFilmView()
}
