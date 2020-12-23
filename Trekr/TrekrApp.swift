//
//  TrekrApp.swift
//  Trekr
//
//  Created by Russell Gordon on 2020-12-22.
//

import SwiftUI

@main
struct TrekrApp: App {
    
    // App icon photo by Maarten van den Heuvel on https://unsplash.com/s/photos/beach
    
    // @StateObject makes the instance of the Locations class stay alive for use elsewhere
    // Requires that Locations class conform to ObservableObject protocol
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    LocationView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Locations")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
            }
            // This modifier passes the locations object into any views that ask for it
            .environmentObject(locations)
        }
    }
}
