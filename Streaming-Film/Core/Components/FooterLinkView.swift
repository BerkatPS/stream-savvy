//
//  FooterLinkView.swift
//  Streaming-Film
//
//  Created by Berkat Saragih on 05/04/24.
//

import SwiftUI

struct FooterLinkView: View {
    var leadingLabelFooter: String
    var centerLabelFooter: String
    var trailingLabelFooter: String
    
    var body: some View {
        HStack(spacing: 50){
            Button{
                
            }label: {
                Text("\(leadingLabelFooter)")
            }
            
            
            Text("|")
            
            Button{
                
            }label: {
                Text("\(centerLabelFooter)")

            }
                        
            Text("|")

            Button{
                
            }label: {
                Text("\(trailingLabelFooter)")
            }
            
        }
        .font(.system(size: 17))
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .padding(.top, 50)

    }
}

#Preview {
    FooterLinkView(leadingLabelFooter: "Feedback", centerLabelFooter: "Help", trailingLabelFooter: "FAQ")
}
