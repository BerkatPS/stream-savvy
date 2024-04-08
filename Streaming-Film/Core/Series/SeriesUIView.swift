//
//  SeriesUIView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 05/04/24.
//

import SwiftUI

struct SeriesUIView: View {
    
    @State private var userName: String = ""
    @State private var email: String = ""
    @State private var userComment: String = ""
    @State private var selectedTab: String = "Home"
    
    
    
    let customBackgroundColor = Color(red: 0.1, green: 0.1, blue: 0.1)
    var body: some View {
        NavigationView{
            ZStack{
                Color.black
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
                            self.selectedTab = label
                            
                            switch label{
                            case "Home": 
                                
                                break
                                
                            default: 
                                break
                            }
                            
                        })
                    }
                    .padding(.vertical)
                    
                    
                    //Preview Series
                    HStack(spacing: 1){
                        Image("Thumbnail-populer")
                            .resizable()
                            .frame(width: 140, height:200)
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("The Death Is Real (2022)")
                                .font(.title)
                            
                            Text("21, Aug, 2022")
                                .foregroundStyle(Color.gray.opacity(0.5))
                            
                            
                            HStack(spacing: 15) {
                                Text("Action")
                                
                                Text("Adventure")
                                
                                Text("Drama")
                            }
                        }
                    }
                    .padding(.top, 20)
                    .foregroundStyle(.white)
                    
                    
                    VStack {
                        
                        LazyHGrid(rows: [GridItem(.flexible()),], spacing: 50) {
                            HStack {
                                Button(action: {
                                    
                                }) {
                                    HStack{
                                        Image(systemName: "star.fill")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.yellow)
                                        
                                        VStack(alignment: .leading){
                                            Text("4.8")
                                            
                                            Text("Rating")
                                        }
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.yellow)
                                    }
                                    .frame(width: 150, height: 30)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .foregroundColor(.white)
                                    
                                }
                                Button(action: {
                                    
                                }) {
                                    HStack{
                                        Image(systemName: "eye.fill")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.green)
                                        
                                        VStack(alignment: .leading){
                                            Text("300k")
                                            
                                            Text("Views")
                                        }
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.green)
                                    }
                                    .frame(width: 150, height: 30)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .foregroundColor(.white)
                                }
                            }
                        }
                        
                        
                        LazyVGrid(columns: [GridItem(.flexible())], spacing: 10) {
                            Button(action: {
                                
                            }) {
                                HStack{
                                    Image(systemName: "bookmark.fill")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("primaryColor"))
                                    
                                    VStack(alignment: .leading){
                                        Text("300k")
                                        
                                        Text("Saves")
                                    }
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("primaryColor"))
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .foregroundColor(.white)
                            }
                        }
                    }
                    .padding(.top,30)
                            
                        
                              
                    Spacer()
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(Color.gray.opacity(0.5))
                        .padding(.top, 20)
                    
                    // Tab Related Series
                    
                    LazyVGrid(columns: [GridItem(.flexible(), spacing: 35), GridItem(.flexible(), spacing: 50)]) {
                        VStack {
                            TabRelatedFilmSeriesView(tabLabel: "Episodes", colorTab: Color("primaryColor")) {
                                
                            }
                        }
                        VStack {
                            TabRelatedFilmSeriesView(tabLabel: "Info", colorTab: Color.gray.opacity(0.2)) {
                                
                            }
                        }
                        VStack {
                            TabRelatedFilmSeriesView(tabLabel: "Cast", colorTab: Color.gray.opacity(0.2)) {
                                
                            }
                        }
                        VStack {
                            TabRelatedFilmSeriesView(tabLabel: "Trailer", colorTab: Color.gray.opacity(0.2)) {
                                
                            }
                        }
                    }
                    .padding()
                    .padding(.top, 30)
                    
                    
                    // Seasons and Episodes
                    VStack(alignment: .leading) {
                        Text("Seasons and Episodes")
                            .padding()
                            .font(.headline)
                            .padding(.bottom, 5)
                        
                        LazyVGrid(columns: [GridItem(.flexible())]) {
                            HStack(spacing: 20) {
                                Text("1")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .frame(width: 90, height: 50)
                                    .background(Color("primaryColor"))
                                
                                Text("Season 1")
                                    .font(.headline)
                                
                                Text("21, Aug, 2022")
                                    .font(.subheadline)
                            }
                            .padding(.trailing)
                            
                            HStack(spacing: 20) {
                                Image("Thumbnail-populer")
                                    .resizable()
                                    .frame(width: 90, height: 50)
                                
                                Text("1-2")
                                    .font(.title3)
                                
                                VStack(alignment: .trailing, spacing: 5) {
                                    Button{
                                        
                                    }label: {
                                        Text("head-on collision...")
                                            .font(.headline)
                                    }
                                    
                                    Text("21, Aug, 2022")
                                        .font(.footnote)
                                        .foregroundStyle(Color.gray.opacity(0.6))
                                }
                            }
                            
                            HStack(spacing: 20) {
                                Image("Thumbnail-populer")
                                    .resizable()
                                    .frame(width: 90, height: 50)
                                    .clipped()
                                
                                Text("2-3")
                                    .font(.title3)
                                
                                VStack(alignment: .trailing, spacing: 5) {
                                    Button{
                                        
                                    }label: {
                                        Text("head-on collision...")
                                            .font(.headline)
                                    }
                                    
                                    Text("21, Aug, 2022")
                                        .font(.footnote)
                                        .foregroundStyle(Color.gray.opacity(0.6))
                                }
                            }
                            HStack(spacing: 20) {
                                Image("Thumbnail-populer")
                                    .resizable()
                                    .frame(width: 90, height: 50)
                                    .clipped()
                                
                                Text("3-4")
                                    .font(.title3)
                                
                                VStack(alignment: .trailing, spacing: 5) {
                                    Button{
                                        
                                    }label: {
                                        Text("head-on collision...")
                                            .font(.headline)
                                    }
                                    
                                    Text("21, Aug, 2022")
                                        .font(.footnote)
                                        .foregroundStyle(Color.gray.opacity(0.6))
                                }
                            }
                            HStack(spacing: 20) {
                                Image("Thumbnail-populer")
                                    .resizable()
                                    .frame(width: 90, height: 50)
                                    .clipped()
                                
                                Text("4-5")
                                    .font(.title3)
                                
                                VStack(alignment: .trailing, spacing: 5) {
                                    Button{
                                        
                                    }label: {
                                        Text("head-on collision...")
                                            .font(.headline)
                                    }
                                    
                                    Text("21, Aug, 2022")
                                        .font(.footnote)
                                        .foregroundStyle(Color.gray.opacity(0.6))
                                }
                            }
                            HStack(spacing: 20) {
                                Image("Thumbnail-populer")
                                    .resizable()
                                    .frame(width: 90, height: 50)
                                    .clipped()
                                
                                Text("5-6")
                                    .font(.title3)
                                
                                VStack(alignment: .trailing, spacing: 5) {
                                    Button{
                                        
                                    }label: {
                                        Text("head-on collision...")
                                            .font(.headline)
                                    }
                                    
                                    Text("21, Aug, 2022")
                                        .font(.footnote)
                                        .foregroundStyle(Color.gray.opacity(0.6))
                                }
                            }
                            HStack(spacing: 20) {
                                Image("Thumbnail-populer")
                                    .resizable()
                                    .frame(width: 90, height: 50)
                                    .clipped()
                                
                                Text("6-7")
                                    .font(.title3)
                                
                                VStack(alignment: .trailing, spacing: 5) {
                                    Button{
                                        
                                    }label: {
                                        Text("head-on collision...")
                                            .font(.headline)
                                    }
                                    
                                    Text("21, Aug, 2022")
                                        .font(.footnote)
                                        .foregroundStyle(Color.gray.opacity(0.6))
                                }
                            }
                            HStack(spacing: 20) {
                                Image("Thumbnail-populer")
                                    .resizable()
                                    .frame(width: 90, height: 50)
                                    .clipped()
                                
                                Text("7-8")
                                    .font(.title3)
                                
                                VStack(alignment: .trailing, spacing: 5) {
                                    Button{
                                        
                                    }label: {
                                        Text("head-on collision...")
                                            .font(.headline)
                                    }
                                    
                                    Text("21, Aug, 2022")
                                        .font(.footnote)
                                        .foregroundStyle(Color.gray.opacity(0.6))
                                }
                            }
                            HStack(spacing: 5) {
                                Button{
                                    
                                }label: {
                                    Image(systemName: "arrowtriangle.left")
                                        .frame(width: 30, height: 30)
                                        .background(Color.gray.opacity(0.3))

                                }
                                     
                                Button{
                                    
                                }label: {
                                    Text("1")
                                        .frame(width: 30, height: 30)
                                        .background(Color.gray.opacity(0.3))

                                }
                                           
                                Button{
                                    
                                }label: {
                                    Text("2")
                                        .frame(width: 30, height: 30)
                                        .background(Color("primaryColor"))

                                }
                                    
                                Button{
                                    
                                }label: {
                                    Text("3")
                                        .frame(width: 30, height: 30)
                                        .background(Color.gray.opacity(0.3))
                                }
                                
                                Button{
                                    
                                }label: {
                                    Text("4")
                                        .frame(width: 30, height: 30)
                                        .background(Color.gray.opacity(0.3))

                                }
                                       
                                Button{
                                    
                                }label: {
                                    Image(systemName: "arrowtriangle.right")
                                        .frame(width: 30, height: 30)
                                        .background(Color.gray.opacity(0.3))
                                }
                            }

                            .padding(.vertical, 20)
                        }
                        .padding(.top , 30)
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.2))
                    .padding(.top, 20)
                    .foregroundColor(.white)
                    
                    // Description Film
                    VStack{
                        Text("Description")
                            .font(.title3)
                            .padding(.vertical)
                        
                        VStack{
                            Text("The Death is Real immerses viewers in a poignant exploration of life's most inevitable journey: death. Through riveting storytelling and compelling characters, the film navigates the intricate web of emotions, decisions, and reflections that accompany the end of life. With masterful direction and evocative cinematography, audiences are drawn into a thought-provoking journey that challenges perceptions and offers profound insights into the human experience\n\n")
                                .padding(.vertical)
                        }
                        .padding(.horizontal)
                    }
                    .background(Color.gray.opacity(0.2))
                    .padding(.top, 50)
                    .foregroundColor(.white)
                    
                    
                    Divider()
                    
                    // Form Comment
                    VStack (spacing: 20) {
                        Text("Leave a Comment")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        TextField("Your Name", text: $userName)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        TextField("Your Email", text: $email)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        TextField("Comment", text: $userComment)
                            .frame(height: 50)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Button {
                            
                        }label: {
                            Text("Submit")
                                .frame(width: 100, height: 20)
                                .padding()
                                .background(Color("primaryColor"))
                                .cornerRadius(2)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(Color.gray.opacity(0.5))
                        .padding(.top, 20)
                    
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
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(Color.gray.opacity(0.5))
                        .padding(.top, 50)
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
    SeriesUIView()
}
