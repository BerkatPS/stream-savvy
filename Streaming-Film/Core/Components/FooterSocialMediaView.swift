//
//  FooterSocialMediaView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 05/04/24.
//

import SwiftUI

struct FooterSocialMediaView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 20){
                Text("FOLLOW ON")
                    .fontWeight(.semibold)
                
                Button{
                    print("Facebook")
                }label: {
                    Image("facebook")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                }
                                        
                Text("|")
                
                Button{
                    print("Twitter")
                }label: {
                    Image("twitter")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                }
                
                    
            }
            
            Text("2023 All rights reserved")
                .foregroundStyle(.white)
                .padding(.top, 25)
        }
    }
}

#Preview {
    FooterSocialMediaView()
    
}
