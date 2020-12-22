//
//  Locations.swift
//  Trekr
//
//  Created by Russell Gordon on 2020-12-22.
//

import Foundation

class Locations: ObservableObject {
    
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        
        // Get a pointer to the file
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        // Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the JSON file into the array
        places = try! JSONDecoder().decode([Location].self, from: data)
        
    }
    
}
