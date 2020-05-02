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

        var generatedCards = [Card]()
        var generatedNumber = [Int]()

        while (generatedNumber.count < 8) {
            let randomNumber = Int.random(in: 1...13)

            if generatedNumber.contains(Int(randomNumber)) == false {
                generatedNumber.append(Int(randomNumber))
            }

            let cardOne = Card()
            let cardTwo = Card()

            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"

            generatedCards += [cardOne, cardTwo]

            
            print(randomNumber)
        }
        generatedCards.shuffle()
        
        return generatedCards
    }
}

