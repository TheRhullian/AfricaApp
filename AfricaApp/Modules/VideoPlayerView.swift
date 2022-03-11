//
//  VideoPlayerView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 10/03/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let videoSelected: String
    let videoTitle: String
    
    var body: some View {
        VStack {
            let avplayer = AVPlayer.playVideo(fileName: videoSelected, fileFormat: "mp4")
            VideoPlayer(player: avplayer)
                .overlay(
                    Image.logo
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding(.top, 6)
                        .padding(.horizontal, 8)
                    , alignment: .topLeading
                )
                .overlay(
                    Text("See the " + videoTitle)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .padding(.top, 9)
                    , alignment: .top
                )
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
