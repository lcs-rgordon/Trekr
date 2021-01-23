//
//  TipsView.swift
//  Trekr
//
//  Created by Russell Gordon on 2020-12-22.
//

import SwiftUI

struct TipsView: View {
    
    // List of tips to be shown
    let tips: [Tip]
    
    var body: some View {
        
        // Iterate over list of tips
        // Show data stored in "children" property, if that exists for a given tip
        List(tips, id: \.text, children: \.children) { tip in
            
            // When there are children for a tip, show an icon, make text bold
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else  {
                // ...otherwise, just show the tip
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
    
    init() {
        
        // Get a pointer to the file
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        // Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the JSON file into the array
        tips = try! JSONDecoder().decode([Tip].self, from: data)
        
    }
    
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
