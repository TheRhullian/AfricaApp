//
//  CoverImageView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Properties
    let covers: [CoverImage] = Bundle.main.decode("covers")
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(covers){ item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }//: TAB VIEW
        .tabViewStyle(.page)
        .frame(height: 300)
    }
}

// MARK: - Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
