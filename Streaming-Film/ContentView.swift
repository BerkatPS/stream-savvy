//
//  ContentView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var phoneNumber = ""
    
    var body: some View {
        VStack{
            // Navbar Film
            HStack{
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 30, height: 30)
                Button {
                    
                }label: {
                    Text("Sign in")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(width: 60, height: 10)
                        .padding()
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.horizontal)
            }
            
            
            // Scrolling Horizontal
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(spacing: 20) { // Menambahkan spacing di sini
                    Button {
                        // Your action
                    } label: {
                        Image(systemName: "house.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Home")
                            .font(.callout)
                            .fontWeight(.semibold)
                    }
                    
                    Button {
                        // Your action
                    } label: {
                        Image(systemName: "movieclapper")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Movies")
                            .font(.callout)
                            .fontWeight(.semibold)
                    }
                    
                    Button {
                        // Your action
                    } label: {
                        Image(systemName: "film")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Series")
                            .font(.callout)
                            .fontWeight(.semibold)
                    }
                    
                    Button {
                        // Your action
                    } label: {
                        Image(systemName: "music.note.tv")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Series")
                            .font(.callout)
                            .fontWeight(.semibold)
                    }
                }
                .foregroundColor(.black)
                .padding(.vertical)
                .padding(.vertical)
                
            }
            
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
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                }
                
                Button {
                    
                }label: {
                    Text("Subscribe")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(width: 120, height: 20)
                        .padding()
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 3))
                }
            }
            
            
            Spacer()
            
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
