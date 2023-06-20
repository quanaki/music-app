//
//  File.swift
//  
//
//  Created by macbook on 10/06/2023.
//

import SwiftUI
import UI

public struct HomeView: View {
    public init() {}
    
    public var body: some View {
        ZStack {
            Color.Background.ignoresSafeArea()
            VStack {
                HomeHeaderView()
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
