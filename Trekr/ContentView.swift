//
//  ContentView.swift
//  Trekr
//
//  Created by Russell Gordon on 2020-12-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        
            Image("highlands")
                .resizable()
                .scaledToFit()
            
            Text("The Highlands")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
