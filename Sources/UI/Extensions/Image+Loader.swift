//
//  File.swift
//  
//
//  Created by macbook on 13/06/2023.
//

import SwiftUI

public extension Image {
    init(name: String) {
        self.init(name, bundle: .module)
    }
}
