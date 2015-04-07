//
//  ViewController.swift
//  Basic Lucky Seven
//
//  Created by Henry Pham on 4/6/15.
//  Copyright (c) 2015 Henry Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberLabel: UILabel!
    @IBOutlet weak var secondNumberLabel: UILabel!
    @IBOutlet weak var thirdNumberLabel: UILabel!
    
    @IBOutlet weak var spinButton: UIButton!
    
    @IBOutlet weak var winsLabel: UILabel!
    @IBOutlet weak var lossesLabel: UILabel!
    @IBOutlet weak var totalGamesLabel: UILabel!

    var wins:Int = 0
    var losses:Int = 0
    var total:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func spinButton(sender: UIButton) {
        
        var sevenCount = 0
        firstNumberLabel.hidden = false
        secondNumberLabel.hidden = false
        thirdNumberLabel.hidden = false
        
        let firstNumber = Int(arc4random_uniform(UInt32(8)))
        let secondNumber = Int(arc4random_uniform(UInt32(8)))
        let thirdNumber = Int(arc4random_uniform(UInt32(8)))
        
        if firstNumber == 7{
        sevenCount += 1
        }
        else {
        }
        
        if secondNumber == 7{
        sevenCount += 1
        }
        else{
        }
        
        if thirdNumber == 7{
        sevenCount += 1
        }
        else{
        }
        
        if sevenCount == 3 {
        wins += 1
        }
        else{
        losses += 1
        }
        
        total += 1
        
        firstNumberLabel.text = "\(firstNumber)"
        secondNumberLabel.text = "\(secondNumber)"
        thirdNumberLabel.text = "\(thirdNumber)"
        winsLabel.text = "Wins: \(wins)"
        lossesLabel.text = "Losses: \(losses)"
        totalGamesLabel.text = "Total Games: \(total)"
    
    }

}

