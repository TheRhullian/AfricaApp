//
//  CenterModifier.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 12/03/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
