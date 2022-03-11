//
//  VideoListView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import SwiftUI

struct VideoListView: View {
    @State var videos: [Video] = Bundle.main.decode("videos")
    
    let hapticImpact = UIImpactFeedbackGenerator(style:.medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink {
                        VideoPlayerView(videoSelected: item.id, videoTitle: item.name)
                    } label: {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }

                }//: FOR EACH
            }//: LIST
            .listStyle(.inset)
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image.systemArrow2SquarePath
                    }//: BUTTON

                }//: TOOLBAR ITEM
            }//: LIST TOOLBAR
        }//: NAVIGATION
    }//: BODY
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
