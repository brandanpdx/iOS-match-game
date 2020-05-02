//
//  ViewController.swift
//  MatchGame
//
//  Created by Brandan Sayarath on 5/2/20.
//  Copyright © 2020 Brandan Sayarath. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let model = CardModel()
    var cardsArray = [Card]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cardsArray = model.getCards()
        
        //Set view controller as data source and delegate of CollectionView
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    
    // MARK: - Collcetion View Delegate Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Get a cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath)
        
        // TODO: Finish configuring the cell
        
        //Return the cell
        return cell
    }
}

