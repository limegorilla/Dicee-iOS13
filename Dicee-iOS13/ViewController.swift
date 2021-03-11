//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Connects to middle image views on main screen
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeDiceView()
    
    }
    
    // Array of dice images
    let imagesArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    
    // Function to change images
    func changeDiceView() {
        var randomNumber = Int.random(in: 0...5) // Only goes up to 5 because of base 0
        diceImageViewRight.image = imagesArray[randomNumber] // Sets selected UIImageView to argument number
        randomNumber = Int.random(in: 0...5) // Reset number
        diceImageViewLeft.image = imagesArray[randomNumber] // Sets selected UIImageView to argument number
    }
    
    
    // Button trigger
    @IBAction func rollButtonPress(_ sender: UIButton) {
        changeDiceView()
    }
    
}

