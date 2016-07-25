//
//  ViewControllerToss.swift
//  Randomizer
//
//  Created by Zachary Rutherford on 7/24/16.
//  Copyright © 2016 Zachary Rutherford. All rights reserved.
//

import UIKit

class ViewControllerToss: UIViewController {
    
    

    @IBOutlet weak var tailsLabel: UILabel!
    @IBOutlet weak var headsLabel: UILabel!
    @IBOutlet weak var coinTossResultLabel1: UILabel!
    var head = 0
    var tail = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func toss (){
        let chance = Int(arc4random_uniform(100))
        if chance >= 50{
            coinTossResultLabel1.text = "Heads"
        }
        else{
            coinTossResultLabel1.text = "Tails"
        }
        if coinTossResultLabel1.text == "Heads"{
            head = head + 1
        }
        else {
            tail = tail + 1
        }
    }
    
    @IBAction func onTappedTossButton(sender: AnyObject) {
        toss()
        headsLabel.text = "Heads: \(head)"
        tailsLabel.text = "Tails: \(tail)"
    }
    
}
