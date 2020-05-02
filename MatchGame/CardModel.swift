//
//  CardModel.swift
//  MatchGame
//
//  Created by Brandan Sayarath on 5/2/20.
//  Copyright © 2020 Brandan Sayarath. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        //Declare an empty array to store cards
        var generatedCards = [Card]()
        var generatedNumber = [Int]()
        
//        Randomly generate 8 pairs of cards
        while (generatedNumber.count < 8) {
            let randomNumber = Int.random(in: 1...13)
            
            if !generatedNumber.contains(randomNumber) {
                generatedNumber.append(randomNumber)
            }
            
            let cardOne = Card()
            let cardTwo = Card()
            
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
        }
        
        generatedCards.shuffle()
        
        return generatedCards
    }
}
