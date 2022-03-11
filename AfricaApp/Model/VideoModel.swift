//
//  VideoModel.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 10/03/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
