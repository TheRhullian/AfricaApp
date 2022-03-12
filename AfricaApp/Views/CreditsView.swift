//
//  CreditsView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 12/03/22.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image.compass
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128, alignment: .center)
            Text("""
            Copyright © Rhullian Damião
            All right deserved
            Better Apps ❤️ Less Code
            """)
                .font(.footnote)
            .multilineTextAlignment(.center)
        }//:VSTACK
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
