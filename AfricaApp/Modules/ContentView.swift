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
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    @State private var gridLayout: [GridItem] = [ GridItem(.flexible()) ]
    @State private var gridColumn: Int = 1
    @State private var gridIcon: Image = Image.systemGrid2x2
    @State private var isGridActive: Bool = false
    
    func gridSwitch() {
        withAnimation(.easeIn(duration: 0.3)) {
            gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
            gridColumn = gridLayout.count
            switch gridColumn {
            case 1:
                gridIcon = Image.systemGrid2x2
            case 2:
                gridIcon = Image.systemGrid3x2
            case 3:
                gridIcon = Image.systemRectangleGrid1x2
            default:
                gridIcon = Image.systemGrid2x2
            }
        }
    }
    
    var body: some View {
        NavigationView {
            Group {
                if !isGridActive {
                    List {
                        CoverImageView()
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals){ animal in
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            }//: NAVIGATION LINK
                        }//: FOR EACH
                        CreditsView()
                            .modifier(CenterModifier())
                    }//:LIST
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { item in
                                NavigationLink(destination: AnimalDetailView(animal: item)) {
                                    AnimalGridItemView(animal: item)
                                }//:NAVIGATION LINK
                            }//:LOOP
                        }//:LAZY VGRID
                    }//:SCROLL VIEW
                }//:CONDITIONAL
            }//:GROUP
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(alignment: .center, spacing: 16) {
                        Button {
                            print("LIST IS ACTIVATED")
                            isGridActive = false
                            haptics.impactOccurred()
                        } label: {
                            Image.systemGrid1x2
                                .font(.title2)
                                .foregroundColor(isGridActive ? .primary : .accentColor)
                        }//:BUTTON
                        
                        Button {
                            print("GRID IS ACTIVATED")
                            isGridActive = true
                            gridSwitch()
                            haptics.impactOccurred()
                        } label: {
                            gridIcon
                                .font(.title2)
                                .foregroundColor(isGridActive ? .accentColor : .primary)
                        }//:BUTTON
                    }//:HSTACK
                }//:TOOLBAR ITEM
            }//:TOOLBAR
        }//: NAVIGATION VIEW
    }//:BODY
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
