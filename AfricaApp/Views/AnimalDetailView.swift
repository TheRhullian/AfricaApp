//
//  AnimalDetailView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: Properties
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }//: GROUP
                .padding(.horizontal)
                .padding(.bottom, 10)
            }//: VSTACK
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }//: SCROLL VIEW
    }//: BODY
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var animals:[Animal] = Bundle.main.decode("animals")
    static var previews: some View {
        AnimalDetailView(animal: animals.first!)
    }
}
