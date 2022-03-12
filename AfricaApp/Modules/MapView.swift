//
//  MapView.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 09/03/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        var mapCoordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoolLevel = MKCoordinateSpan(latitudeDelta: 70, longitudeDelta: 70)
        var mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoolLevel)
        return mapRegion
    }()
    
    let locations: [LocationModel] = Bundle.main.decode("locations")
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            // OLD PIN - STATIC
//            MapPin(coordinate: item.location, tint: .accentColor)
            // NEW MARKER - STATIC
//            MapMarker(coordinate: item.location, tint: .accentColor)
            // CUSTOM - CAN BE DYNAMIC
            MapAnnotation(coordinate: item.location) {
                Image.logo
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }//: ANNOTATION
        }//: MAP
    }//: BODY
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
