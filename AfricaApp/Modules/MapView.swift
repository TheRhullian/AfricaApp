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
                MapAnnotationView(location: item)
            }//: ANNOTATION
        }//: MAP
        .overlay(
            HStack {
                Image.compass
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                    }//: HSTACK
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                    }//: HSTACK
                }//: VSTACK
            }//:HSTACK
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .opacity(0.6)
                        .cornerRadius(8)
                )
                .padding()
            , alignment: .top
        )//:OVERLAY
    }//: BODY
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
