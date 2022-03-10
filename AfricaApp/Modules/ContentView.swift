//
//  ContentView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }//:LIST
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        }//: NAVIGATION VIEW
    }//:BODY
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
