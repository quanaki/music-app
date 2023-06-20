//
//  File.swift
//  
//
//  Created by macbook on 10/06/2023.
//

import Foundation

public enum Language: String, CaseIterable {
    case en
    case vn
    
    public init?(languageStrings languages: [String]) {
      guard let preferedLanguage = languages.first,
            let language = Language.init(
              rawValue: String(preferedLanguage.prefix(2).lowercased())) else {
                return nil
              }

      self = language
    }
}
