//
//  File.swift
//  
//
//  Created by macbook on 12/06/2023.
//

import SwiftUI
import UI

struct HomeHeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack {
                Text("Good afternoon")
                    .font(Font.system(size: 24, weight: .bold))
                    .foregroundColor(Color.Text)
                Spacer()
                Button {
                    print("Setting button was tapped")
                } label: {
                    Image(name: "ic-settings").resizable().frame(width: 24, height: 24)
                }
            }.padding(.top, 40)
            
            HStack(spacing: 8) {
                Button("Music") {
                    
                }.modifier(RoundedTextButtonModifier())
                Button("Podcasts & Shows") {
                    
                }.modifier(RoundedTextButtonModifier())

                Button("Audiobooks") {
                    
                }.modifier(RoundedTextButtonModifier())
            }
        }
        .padding([.leading, .trailing], 16)
        .background(Color.Background)
    }
}

struct RoundedTextButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content.padding(.horizontal, 12)
            .padding(.vertical, 8)
            .font(Font.system(size: 14))
            .background(Color.white.opacity(0.15))
            .cornerRadius(.infinity)
            .foregroundColor(Color.Text)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
