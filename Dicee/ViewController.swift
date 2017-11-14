//
//  ViewController.swift
//  Dicee
//
//  Created by Khaya Mathebula on 2017/11/14.
//  Copyright © 2017 Aeon Source. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print("dice 1: \(randomDiceIndex1)")
        print("dice 2: \(randomDiceIndex2)")
        
        diceImage1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImage2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
}

