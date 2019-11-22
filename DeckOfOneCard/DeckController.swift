//
//  DeckController.swift
//  DeckOfOneCard
//
//  Created by jdcorn on 11/17/19.
//  Copyright © 2019 jdcorn. All rights reserved.
//

import Foundation
import UIKit

class DeckController {
    
    // Take data from this URL
    private static let baseURL = URL(string: "https://www.potterapi.com/v1/sortingHat")
    
    
    static func drawOneCard() -> Card? {
        guard let url = baseURL else { return nil }
        
        // Take that data from that website and turn it into 1's and 0's
        let data = try! Data(contentsOf: url)
        
        // Then JSONdecoder takes those 1's and 0's and turns them into data conforming to our model objects
        let jsonDecoder = JSONDecoder()
        let deck = try! jsonDecoder.decode(Deck.self, from: data)
        
        return deck.cards.first
        
    }
    
    static func getImage(_ cardImageURL: String) -> UIImage? {
        guard let urlForImage = URL(string: cardImageURL) else {return nil}
        let imageData = try! Data(contentsOf: urlForImage)
        let image = UIImage(data: imageData)
        
        return image
    }
    
}
