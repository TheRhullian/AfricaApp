//
//  ExternalWebLinkView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let animal: Animal
    var body: some View {
        GroupBox {
            HStack {
                Image.systemGlobe
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image.systemArrowUpRightSquare
                    
                    let url: URL = URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!
                    Link(animal.name, destination: url)
                }
                .foregroundColor(.accentColor)
            }//: HSTACK
        }//: BOX
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals")
    static var previews: some View {
        ExternalWebLinkView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
