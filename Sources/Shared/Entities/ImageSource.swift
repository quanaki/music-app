//
//  File.swift
//  
//
//  Created by macbook on 13/06/2023.
//

import Foundation

public struct ImageSource {
    public let url: String
    public let width: Double
    public let height: Double
    
    public init(url: String, width: Double, height: Double) {
        self.url = url
        self.width = width
        self.height = height
    }
}
