//
//  Tip.swift
//  Trekr
//
//  Created by Russell Gordon on 2020-12-22.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
