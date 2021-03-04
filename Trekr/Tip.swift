//
//  Tip.swift
//  Trekr
//
//  Created by Marina on 04.03.2021.
//

import Foundation


struct Tip: Decodable{
    let text: String
    let children: [Tip]?
}
