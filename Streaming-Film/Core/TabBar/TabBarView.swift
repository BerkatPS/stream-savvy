//
//  TabBarView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 02/04/24.
//

import SwiftUI

struct TabBarView: View  {
    var body: some View {
        ScrollView {
            VStack {
                // Header Section
                GeometryReader { geometry in
                    Color.blue
                        .frame(width: geometry.size.width, height: 200) // Menggunakan lebar layar untuk membuat background full width
                        .overlay(
                            VStack {
                                Text("Selamat Datang di FilmFlix")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                    .padding()
                                Text("Temukan Berbagai Film Terbaru")
                                    .font(.title)
                                    .foregroundColor(.white)
                            }
                        )
                }
                
                // Feature Section
                VStack {
                    Text("Fitur Utama")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()
                    // Isi fitur utama di sini
                }
                .background(Color.gray.opacity(0.2))
                
                // Testimonial Section
                VStack {
                    Text("Testimonial")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()
                    // Isi testimonial di sini
                }
                .background(Color.gray.opacity(0.2))
                
                // Footer Section
                GeometryReader { geometry in
                    Color.black
                        .frame(width: geometry.size.width, height: 100) // Menggunakan lebar layar untuk membuat background full width
                        .overlay(
                            Text("FilmFlix © 2024")
                                .font(.title)
                                .foregroundColor(.white)
                        )
                }
            }
        }
    }
}

#Preview {
    TabBarView()
}
