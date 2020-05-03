//
//  CardCollectionViewCell.swift
//  MatchGame
//
//  Created by Brandan Sayarath on 5/2/20.
//  Copyright © 2020 Brandan Sayarath. All rights reserved.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var frontImageView: UIImageView!
    
    @IBOutlet weak var backImageView: UIImageView!
    
    var card:Card?

    func configureCell(card: Card) {
        
        // Keep track of the card this cell represents
        self.card = card
        
        //Set the front image view to the image that represents the card
        frontImageView.image = UIImage(named: card.imageName)
        
        // Reset state of cell by checking flip status of card and showing the front or back image view accordingly
        
        if card.isMatched == true {
            backImageView.alpha = 0
            frontImageView.alpha = 0
            return
        }
        else {
            backImageView.alpha = 1
            frontImageView.alpha = 1
        }
        
        if card.isFlipped == true {
            flipUp(speed: 0)
        }
        else {
            flipDown(speed: 0, delay: 0)
        }
    }
    
    func flipUp(speed: TimeInterval = 0.3) {
        UIView.transition(from: backImageView, to: frontImageView, duration: speed, options: [.showHideTransitionViews, .transitionFlipFromLeft], completion: nil)
        
        card?.isFlipped = true
    }
    
    func flipDown(speed: TimeInterval = 0.3, delay: TimeInterval = 0.5) {
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delay) {
            UIView.transition(from: self.frontImageView, to: self.backImageView, duration: speed, options: [.showHideTransitionViews, .transitionFlipFromLeft], completion: nil)
        }
        
        
        card?.isFlipped = false
    }
    
    func remove() {
        //Make image views invisible
        backImageView.alpha = 0
        
        UIView.animate(withDuration: 0.3, delay: 0.5, options: .curveEaseOut, animations: {self.frontImageView.alpha = 0}, completion: nil)
        
        
    }
}
