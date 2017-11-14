//
//  BrancaViewController.swift
//  Nav
//
//  Created by Student on 08/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import UIKit

class BrancaViewController: UIViewController {

    @IBOutlet weak var brancaLabel: UILabel!
    
    var nome:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brancaLabel.text = "Bem-vindo(a), " + nome!
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
