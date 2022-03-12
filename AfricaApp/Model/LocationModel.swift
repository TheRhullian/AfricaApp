//
//  LocationModel.swift
//  AfricaApp
//
//  Created by Rhullian Damião on 11/03/22.
//

import SwiftUI
import MapKit

struct LocationModel: Codable, Identifiable {
  var id: String
  var name: String
  var image: String
  var latitude: Double
  var longitude: Double
  
  var location: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }
}
