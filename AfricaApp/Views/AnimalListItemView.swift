//
//  AnimalListItemView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .cornerRadius(12)
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }//: HSTACK
    }//: BODY
}

struct AnimalListItemView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals")
    static var previews: some View {
        AnimalListItemView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
