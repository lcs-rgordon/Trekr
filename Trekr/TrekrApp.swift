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
    
    // @StateObject makes the instance of the LocationStore class stay alive for use elsewhere
    // Requires that LocationStore class conform to ObservableObject protocol
    @StateObject var locations = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    LocationView(locations: locations)
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("LocationStore")
                }
                
                NavigationView {
                    WorldView(locations: locations)
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
