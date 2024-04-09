//
//  SearchFilmView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 08/04/24.
//

import SwiftUI

struct SearchFilmView: View {
    @State private var search = ""
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
                    
                    
                    VStack{
                        
                        HStack {
                            TextField("Type To Search",text: $search)
                                .padding()
                                .frame(width: 350, height: 50)
                            .background(Color.black.opacity(0.3))
                        }
                                
                        
                        VStack(spacing: 20) {
                            Text("Genre")
                                
                            
                            HStack {
                                Button{
                                    
                                }label: {
                                    Text("Any")
                                        .frame(width: 60, height: 30)
                                        .background(Color.gray.opacity(0.3))
                                    
                                    
                                }
                                
                                Button{
                                    
                                }label: {
                                    Text("Comedy")
                                        .frame(width: 100, height: 30)
                                        .background(Color("primaryColor"))
                                    
                                }
                                
                                Button{
                                    
                                }label: {
                                    Text("Family")
                                        .frame(width: 80, height: 30)
                                        .background(Color.gray.opacity(0.3))
                                }
                                
                                Button{
                                    
                                }label: {
                                    Text("Romance")
                                        .frame(width: 90, height: 30)
                                        .background(Color.gray.opacity(0.3))
                                }
                            }
                        }
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        
                    }
                    .padding()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.2))
                    
                    HStack(spacing: 20){
                        Text("5,544 results Found")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("All")
                            .foregroundStyle(Color("primaryColor"))
                        Text("Premium")
                    }
                    .padding(.vertical, 30)
                    .foregroundColor(.white)
                    
                    VStack{
                        HStack{
                            Image("Thumbnail-populer")
                                .resizable()
                                .frame(width: 120, height:170)
                            
                            Spacer()
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("The Death Is Real")
                                    .font(.title2)
                                
                                Text("The Death Is Real is a psychological thriller film ")
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray.opacity(0.3))
                                
                                
                                HStack(spacing: 15) {
                                    Text("Adventure")
                                        .frame(width: 100, height: 35)
                                        .background(Color("primaryColor"))
                                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    
                                    Text("Horror")
                                        .frame(width: 100, height: 35)
                                        .background(Color("primaryColor"))
                                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                }
                            }
                        }
                        .padding()
                        .foregroundStyle(.white)
                    }
                    .background(Color.gray.opacity(0.2))
                    
                    VStack{
                        HStack{
                            Image("Thumbnail-populer")
                                .resizable()
                                .frame(width: 120, height:170)
                            
                            Spacer()
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("The Death Is Real")
                                    .font(.title2)
                                
                                Text("The Death Is Real is a psychological thriller film ")
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray.opacity(0.3))
                                
                                
                                HStack(spacing: 15) {
                                    Text("Adventure")
                                        .frame(width: 100, height: 35)
                                        .background(Color("primaryColor"))
                                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    
                                    Text("Horror")
                                        .frame(width: 100, height: 35)
                                        .background(Color("primaryColor"))
                                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                }
                            }
                        }
                        .padding()
                        .foregroundStyle(.white)
                    }
                    .background(Color.gray.opacity(0.2))
                    
                    VStack{
                        HStack{
                            Image("Thumbnail-populer")
                                .resizable()
                                .frame(width: 120, height:170)
                            
                            Spacer()
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("The Death Is Real")
                                    .font(.title2)
                                
                                Text("The Death Is Real is a psychological thriller film ")
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray.opacity(0.3))
                                
                                
                                HStack(spacing: 15) {
                                    Text("Adventure")
                                        .frame(width: 100, height: 35)
                                        .background(Color("primaryColor"))
                                        .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    
                                    Text("Horror")
                                        .frame(width: 100, height: 35)
                                        .background(Color("primaryColor"))
                                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                                }
                            }
                        }
                        .padding()
                        .foregroundStyle(.white)
                    }
                    .background(Color.gray.opacity(0.2))
                    
                    HStack(spacing: 5) {
                        Button{
                            
                        }label: {
                            Image(systemName: "arrowtriangle.left")
                                .frame(width: 40, height: 40)
                                .background(Color.gray.opacity(0.3))

                        }
                             
                        Button{
                            
                        }label: {
                            Text("1")
                                .frame(width: 40, height: 40)
                                .background(Color.gray.opacity(0.3))

                        }
                                   
                        Button{
                            
                        }label: {
                            Text("2")
                                .frame(width: 40, height: 40)
                                .background(Color.gray.opacity(0.3))

                        }
                            
                        Button{
                            
                        }label: {
                            Text("3")
                                .frame(width: 40, height: 40)
                                .background(Color("primaryColor"))
                        }
                        
                        Button{
                            
                        }label: {
                            Text("4")
                                .frame(width: 40, height: 40)
                                .background(Color.gray.opacity(0.3))

                        }
                               
                        Button{
                            
                        }label: {
                            Image(systemName: "arrowtriangle.right")
                                .frame(width: 40, height: 40)
                                .background(Color.gray.opacity(0.3))
                        }
                    }
                    .foregroundColor(.white)
                    .padding(.vertical, 20)
                    
                    
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
    SearchFilmView()
}
