//
//  WorldView.swift
//  Trekr
//
//  Created by Russell Gordon on 2020-12-22.
//

import MapKit
import SwiftUI


struct WorldView: View {
    
    @ObservedObject var locations: LocationStore
    
    // Centre on London, show most of Europe
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222,
                                                                          longitude: -0.1275),
                                           span: MKCoordinateSpan(latitudeDelta: 40,
                                                                  longitudeDelta: 40))
    
    var body: some View {
        
        // Iterate over each location
        Map(coordinateRegion: $region, annotationItems: locations.places) { location in
            
            // Make an annotation on the map for each place
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                
                // Add a navigation link to the location detail view
                NavigationLink(
                    destination: LocationDetailView(location: location)) {
                    
                    // Use an image for the content of the nav link
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)

                }
                
                
            }
        }
        .navigationTitle("Map")
        
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView(locations: testStore)
    }
}
