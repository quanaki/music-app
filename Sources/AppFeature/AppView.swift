//
//  File.swift
//  
//
//  Created by macbook on 10/06/2023.
//

import SwiftUI
import HomeFeature
import SearchFeature
import UI

public struct AppView: View {
    public var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house")
                Text(Strings.stringHomeTabbar)
            }
            
            SearchView().tabItem {
                Image(systemName: "magnifyingglass")
                Text(Strings.stringSearchTabbar)
            }
        }.background(Color.black)
            .foregroundColor(Color.black)
            .accentColor(Color.Text)
            .ignoresSafeArea()
    }
    
    public init() {
        UITabBar.appearance().tintColor =  UIColor(Color.Text)
        UITabBar.appearance().backgroundColor = UIColor(Color.Background)
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.Text).withAlphaComponent(0.7)
        UITabBar.appearance().isOpaque = false
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
