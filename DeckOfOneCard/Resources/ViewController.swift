//
//  ViewController.swift
//  DeckOfOneCard
//
//  Created by jdcorn on 11/17/19.
//  Copyright © 2019 jdcorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
    }
    
    @IBAction func drawCardButtonPressed(_ sender: UIButton) {
        let card = DeckController.drawOneCard()
        
        let image = DeckController.getImage(card!.image)
        
        cardImageView.image = image
        
    }
}

