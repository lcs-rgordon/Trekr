//
//  LocationView.swift
//  Trekr
//
//  Created by Russell Gordon on 2020-12-22.
//

import SwiftUI

struct LocationView: View {
    
    @EnvironmentObject var locations: Locations

    var body: some View {
        
        // Show a sorted list of locations
        List(locations.places.sorted(by: { $0.name < $1.name })) { location in
            
            NavigationLink(destination: LocationDetailView(location: location)) {
                
                HStack {
                    
                    Image(location.heroPicture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)

                    VStack(alignment: .leading) {
                        Text(location.name)
                        Text(location.country)
                            .font(.subheadline)
                    }
                    
                }
                
            }
        }
        .navigationTitle("Locations")
        
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
