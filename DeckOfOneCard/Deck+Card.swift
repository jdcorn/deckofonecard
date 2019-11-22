//
//  Deck+Card.swift
//  DeckOfOneCard
//
//  Created by jdcorn on 11/17/19.
//  Copyright © 2019 jdcorn. All rights reserved.
//

import Foundation

struct Deck: Codable {
    let cards: [Card]
}

struct Card: Codable {
    let image: String
    let value: String
    let suit: String
    let code: String
}
