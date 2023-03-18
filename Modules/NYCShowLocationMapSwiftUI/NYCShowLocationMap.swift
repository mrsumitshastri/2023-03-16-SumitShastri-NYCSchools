//
//  NYCShowLocationMap.swift
//  2023-03-16-SumitShastri-NYCSchools
//
//  Created by Sumit Shastrion 18/03/23.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}



struct NYCShowLocationMap: View {
    
    var coordinate: CLLocationCoordinate2D
        
        @State private var region : MKCoordinateRegion
        let locations: [Location]
        
        init(coordinate : CLLocationCoordinate2D, _locations: [Location]) {
            self.coordinate = coordinate
            self.locations = _locations
            _region = State(initialValue: MKCoordinateRegion(center: coordinate,
                                                                 span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)))
        }
        
        var body: some View {
            Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: locations
            ) { locationItem in
                MapAnnotation(
                    coordinate: locationItem.coordinate
                ) {
                    NYCMapPIn(title: locationItem.name, subtitle: "", color: UIColor.red)
                }
            }
            .navigationTitle("Location")
        }
}

struct NYCShowLocationMap_Previews: PreviewProvider {
    static var previews: some View {
        let loc = Location(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275))
       
        NYCShowLocationMap(coordinate: loc.coordinate, _locations: [loc])
    }
}
