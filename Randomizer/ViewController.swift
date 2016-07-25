//
//  ViewController.swift
//  Randomizer
//
//  Created by Zachary Rutherford on 7/22/16.
//  Copyright © 2016 Zachary Rutherford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nextPageButton: UIButton!
    @IBOutlet weak var announcerLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    var namer : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action : "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    func dismissKeyboard() {
        view.endEditing(true)

    }
    
    var randomNames = ["Rob"]

    @IBAction func onPressedAddName(sender: AnyObject) {
        randomNames.append(nameTextField.text!)
        nameTextField.text = ""
        print("add namer working")
    }
    
    func convert(entry : Int) -> UInt32 {
        let value = UInt32(entry)
            return value
        print("converter working")
    }
    
    func randomize () {
        randomNames.removeAtIndex(1)
        let numberNames = convert(randomNames.count)
        let random = Int(arc4random_uniform(numberNames))
        var namer = randomNames[random]
        announcerLabel.text = "The Name Has Been Selected"
        nameLabel.text = "\(namer)"
        print("randomizer working")
    }

    @IBAction func onPressedRandomButton(sender: AnyObject) {
        randomize()
        announcerLabel.text = "The Name Has Been Selected"
        nameLabel.text = "\(namer)"
        print("random button working")
    }
    
    

}