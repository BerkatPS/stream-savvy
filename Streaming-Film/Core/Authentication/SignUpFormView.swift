//
//  SignUpFormView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 05/04/24.
//

import SwiftUI

struct SignUpFormView: View {
    @State private var userName = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView{
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center, spacing: 20) {
                    
                    VStack(spacing: 10) {
                        Text("Sign Up To Savvy")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.bottom, 50)
                        HStack {
                            Image(systemName: "person")
                                .foregroundColor(.gray)
                                .padding(.leading, 10)
                            TextField("Username", text: $userName)
                                .textFieldStyle(.plain)
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                        }
                        .frame(height: 50)
                        .background(Color.black.opacity(0.4))
                        .cornerRadius(10)
                        HStack {
                            Image(systemName: "mail")
                                .foregroundColor(.gray)
                                .padding(.leading, 10)
                            TextField("Email", text: $email)
                                .textFieldStyle(.plain)
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                        }
                        .frame(height: 50)
                        .background(Color.black.opacity(0.4))
                        .cornerRadius(10)
                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(.gray)
                                .padding(.leading, 10)
                            SecureField("Password", text: $password)
                                .padding(.horizontal, 10)
                                .foregroundColor(.white)
                        }
                        .frame(height: 50)
                        .background(Color.black.opacity(0.4))
                        .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    
                    // Button Login
                    Button(action: {
                        // Action when login button is tapped
                    }) {
                        Text("Submit")
                            .frame(maxWidth: .infinity)
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("primaryColor"))
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    
                    
                    
                    NavigationLink(destination: LoginFormView()){
                        HStack {
                            Image(systemName: "arrow.backward")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .foregroundColor(.white)
                            
                            Text("Back To Login")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding(.bottom, 2)
                            
                        }
                    }
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image("facebook")
                                .resizable()
                                .frame(width: 30, height: 30)
                            
                            Text("Sign Up with Facebook")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding()
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    }
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image("twitter")
                                .resizable()
                                .frame(width: 30, height: 30)
                            
                            Text("Sign Up with Twitter")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding()
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(Color.gray.opacity(0.2))
                .padding(.top, 50)
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    SignUpFormView()
}
