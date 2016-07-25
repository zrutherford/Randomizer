//
//  ViewController21side.swift
//  Randomizer
//
//  Created by Zachary Rutherford on 7/25/16.
//  Copyright © 2016 Zachary Rutherford. All rights reserved.
//

import UIKit

class ViewController21side: UIViewController {
    
    
    var chance = 22
    
    @IBOutlet weak var resultTossLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func helper(number : Int){
        var display = number - 1
        if chance == number{
            resultTossLabel.text = "\(display)"
        }
    }
    
    
    func toss (){
        var chance = Int(arc4random_uniform(6))
        for i in 0...20{
            helper(i)
        }
    }
}
