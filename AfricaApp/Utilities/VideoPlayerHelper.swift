//
//  VideoPlayerHelper.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 10/03/22.
//

import Foundation
import AVKit

extension AVPlayer {
    static func playVideo(fileName: String, fileFormat: String) -> AVPlayer? {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileFormat) else {
            return nil
        }
        
        let player = AVPlayer(url: url)
        player.play()
        return player
    }
}
