//
//  MainView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image.systemBrowse
                    Text("Browse")
                }//: TAB VIEW
            
            VideoListView()
                .tabItem {
                    Image.systemVideo
                    Text("Watch")
                }//: VIDEO LIST VIEW
            
            MapView()
                .tabItem {
                    Image.systemMap
                    Text("Locations")
                }//: MAP VIEW
            
            GalleryView()
                .tabItem {
                    Image.systemGallery
                    Text("Gallery")
                }//: GALLERY VIEW
        }//: TABVIEW
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
