//
//  InsetGalleryView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
                
            }//: HSTACK
        }//: SCROLL VIEW
    }//: BODY
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals")
    static var previews: some View {
        InsetGalleryView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
