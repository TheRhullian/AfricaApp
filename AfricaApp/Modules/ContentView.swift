//
//  ContentView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    let animals: [Animal] = Bundle.main.decode("animals")
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals){ animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }//: NAVIGATION LINK
                }//: FOR EACH
            }//:LIST
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .listStyle(.plain)
        }//: NAVIGATION VIEW
    }//:BODY
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
