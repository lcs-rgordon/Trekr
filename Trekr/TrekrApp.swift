//
//  TrekrApp.swift
//  Trekr
//
//  Created by Russell Gordon on 2020-12-22.
//

import SwiftUI

@main
struct TrekrApp: App {
    
    // @StateObject makes the instance of the Locations class stay alive for use elsewhere
    // Requires that Locations class conform to ObservableObject protocol
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            // This modifier passes the locations object into any views that ask for it
            .environmentObject(locations)
        }
    }
}
