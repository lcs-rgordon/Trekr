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
            Text(location.name)
        }
        .navigationTitle("Locations")
        
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
