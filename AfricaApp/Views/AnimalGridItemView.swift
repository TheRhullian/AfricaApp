//
//  AnimalGridItemView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 12/03/22.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals")
    static var previews: some View {
        AnimalGridItemView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
