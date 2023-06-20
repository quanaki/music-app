//
//  File.swift
//  
//
//  Created by macbook on 13/06/2023.
//

import SwiftUI

struct HomeSectionView: View {
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        Text(title)
    }
}
