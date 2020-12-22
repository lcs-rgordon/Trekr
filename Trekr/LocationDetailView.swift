//
//  LocationDetailView.swift
//  Trekr
//
//  Created by Russell Gordon on 2020-12-22.
//

import SwiftUI

struct LocationDetailView: View {
    
    // Required to load this view
    let location: Location
    
    var body: some View {
        ScrollView {
        
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            HStack {
                
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack {

                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()

            }
            .padding(.horizontal)
            
            Text(location.more)
                .padding([.horizontal, .bottom])
                        
            
        }
        .navigationTitle(location.name)
        
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView(location: Location.example)
        }
    }
}

