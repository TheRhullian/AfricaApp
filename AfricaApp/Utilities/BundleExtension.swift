//
//  CodableExtension.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String, _ extensionType: String = "json") -> T {
        guard let url = self.url(forResource: file, withExtension: extensionType ) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        guard let loaded = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Failed to decod \(file) data")
        }
        
        return loaded
    }
}
