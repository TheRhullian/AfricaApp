//
//  InsetFactView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }//: FOR EACH
            }//: TAB VIEW
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: GROUP BOX
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static var animals:[Animal] = Bundle.main.decode("animals")
    static var previews: some View {
        InsetFactView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
