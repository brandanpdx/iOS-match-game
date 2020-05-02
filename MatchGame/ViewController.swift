//
//  ViewController.swift
//  MatchGame
//
//  Created by Brandan Sayarath on 5/2/20.
//  Copyright © 2020 Brandan Sayarath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let model = CardModel()
    var cardsArray = [Card]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cardsArray = model.getCards()
    }


}

