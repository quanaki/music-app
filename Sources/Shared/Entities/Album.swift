//
//  File.swift
//  
//
//  Created by macbook on 13/06/2023.
//

import Foundation

public struct Album {
    public let id: String
    public let name: String
    public let artist: Artist
    public let imageSources: [ImageSource]
    
    public init(id: String, name: String, artist: Artist, imageSources: [ImageSource]) {
        self.id = id
        self.name = name
        self.artist = artist
        self.imageSources = imageSources
    }
}
