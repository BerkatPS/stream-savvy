//
//  CommentFilmView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 05/04/24.
//

import SwiftUI

struct CommentFilmView: View {
    var UserName: String
    var UserComment: String
    var UserImage: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            
            // Gambar pengguna bulat penuh
            Image(UserImage)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            
            VStack(alignment: .leading, spacing: 8) {
                // Hasil komentar dari pengguna
                Text(UserName)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(UserComment)
                    .font(.body)
                
                HStack {
                    // Icon Like
                    Button(action: {
                        // Aksi ketika tombol Like ditekan
                    }) {
                        Image(systemName: "hand.thumbsup.fill")
                            
                        
                        Text("233")
                            
                    }
                    .foregroundColor(.green)
                    // Icon Reply
                    Button(action: {
                        // Aksi ketika tombol Reply ditekan
                    }) {
                        Image(systemName: "hand.thumbsdown.fill")
                            
                        
                        Text("200")
                            
                    }
                    .foregroundColor(Color("primaryColor"))
                    
                    Spacer()
                    
                    Button(action: {
                        // Aksi ketika tombol Reply ditekan
                    }) {
                        Image(systemName: "arrowshape.turn.up.left.fill")
                            
                        
                        Text("Reply")
                            
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 35)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
                .padding(.top, 4)
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    CommentFilmView(UserName: "John Doe", UserComment: "Great movie! I really enjoyed it", UserImage: "Thumbnail-populer")
}
