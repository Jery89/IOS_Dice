//
//  ViewController.swift
//  Dicee
//
//  Created by Jerzy Pilarczyk on 23.09.2018.
//  Copyright © 2018 Jerzy Pilarczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    let myImages:[Int]=[1,2,3,4,5,6]
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    func updateDiceImages(){
        
        randomDiceIndex1 = Int(arc4random_uniform(5))
        randomDiceIndex2 = Int(arc4random_uniform(5))
        
        diceImageView1.image = UIImage(named: "dice\(myImages[randomDiceIndex1])")
        diceImageView2.image = UIImage(named: "dice\(myImages[randomDiceIndex2])")
        
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

