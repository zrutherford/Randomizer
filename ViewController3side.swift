//
//  ViewController3side.swift
//  Randomizer
//
//  Created by Zachary Rutherford on 7/25/16.
//  Copyright © 2016 Zachary Rutherford. All rights reserved.
//

import UIKit

class ViewController3side: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func toss() {
        let chance = Int(arc4random_uniform(3))
        if chance == 0{
            resultLabel.text = "1"
        }
        else if chance == 1{
            resultLabel.text = "2"
        }
        else if chance == 2{
            resultLabel.text = "3"
        }
    }
    
    @IBAction func onTappedRollButton(sender: AnyObject) {
        toss()
    }
    
    
}