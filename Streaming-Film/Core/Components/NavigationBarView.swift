//
//  NavigationBarView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 05/04/24.
//

import SwiftUI

struct NavigationBarView<Content: View>: View {
    var leadingText: String
    var trailingIcon: Image
    var trailingButtonAction: () -> Void
    var trailingButtonText: String
    var content: Content
    
    init(leadingText: String, trailingIcon: Image, trailingButtonText: String, trailingButtonAction: @escaping () -> Void, @ViewBuilder content: () -> Content) {
        self.leadingText = leadingText
        self.trailingIcon = trailingIcon
        self.trailingButtonText = trailingButtonText
        self.trailingButtonAction = trailingButtonAction
        self.content = content()
    }
    // magnifyingglass,popcorn.fill
    
    var body: some View {
        HStack {
            Text(leadingText)
                .fontWeight(.semibold)
                
            
            Spacer()
            
            trailingIcon
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.horizontal    
                )
            NavigationLink(destination: LoginFormView()) {
                Text(trailingButtonText)
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(width: 70, height: 5)
                    .padding()
                    .background(Color("primaryColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
        }
    }
    
}


#Preview {
    NavigationBarView(
        leadingText: "Stream Savvy",
        trailingIcon: Image(systemName: "magnifyingglass"),
        trailingButtonText: "Sign in",
        trailingButtonAction: {}
    ){
        Text("Streaming Film")
            
    }
    
}
