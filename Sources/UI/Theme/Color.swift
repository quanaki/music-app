//
//  File.swift
//  
//
//  Created by macbook on 10/06/2023.
//

import SwiftUI

public extension Color {
    static let Primary = Color(Color.Key.primary.rawValue, bundle: Bundle.module)
    static let Secondary = Color(Color.Key.secondary.rawValue, bundle: Bundle.module)
    static let Background = Color(Color.Key.background.rawValue, bundle: Bundle.module)
    static let Error = Color(Color.Key.error.rawValue, bundle: Bundle.module)
    static let Text = Color(Color.Key.text.rawValue, bundle: Bundle.module)
    
    enum Key: String {
        case primary = "Primary"
        case secondary = "Secondary"
        case background = "Background"
        case error = "Error"
        case text = "Text"
    }
}

