//
//  Location.swift
//  Trekr
//
//  Created by Russell Gordon on 2020-12-22.
//

import Foundation


struct Location {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
   
    // "static" – exists at Type level – shared across the type, created once
    static let example = Location(id: 1,
                           name: "Great Smokey Mountains",
                           country: "United States",
                           description: "A great place to visit.",
                           more: "More text here",
                           latitude: 35.6532,
                           longitude: -83.5070,
                           heroPicture: "smokies",
                           advisory: "Beware of the bears!")
}


