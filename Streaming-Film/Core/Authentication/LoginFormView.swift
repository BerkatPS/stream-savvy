//
//  LoginFormView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 05/04/24.
//

import SwiftUI

struct LoginFormView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView{
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center, spacing: 20) {
                    // Form login
                    VStack(spacing: 10) {
                        Text("Login")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.bottom, 50)
                        HStack {
                            Image(systemName: "person")
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
                    
                    
                    
                    // Lainnya
                    VStack {
                        NavigationLink(destination: SignUpFormView()){
                            Text("Don't have an account? Sign Up")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding(.bottom, 10)
                            
                        }
                        NavigationLink(destination: ForgotPasswordFormView()){
                            Text("Forgot Password?")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding(.bottom, 30)
                        }
                    }
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image("facebook")
                                .resizable()
                                .frame(width: 30, height: 30)
                            
                            Text("Login with Facebook")
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
                            
                            Text("Login with Twitter")
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
    LoginFormView()
}
