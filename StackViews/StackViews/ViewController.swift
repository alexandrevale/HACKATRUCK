//
//  ViewController.swift
//  StackViews
//
//  Created by Student on 01/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var middleName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var fullName: UILabel!
    
    @IBAction func sayMyName(_ sender: Any) {
        fullName.text = firstName.text! + " "  + middleName.text! + " " + lastName.text!
    }
    
    @IBAction func clear(_ sender: Any) {
        firstName.text = ""
        middleName.text = ""
        lastName.text = ""
        fullName.text = "Full name"
    }
}

