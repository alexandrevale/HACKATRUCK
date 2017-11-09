//
//  VerdeViewController.swift
//  Nav
//
//  Created by Student on 08/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import UIKit

class VerdeViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    

    // MARK: - Navigation

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostrarProximaView"{
            if let novaView = segue.destination as? BrancaViewController{
                novaView.nome = inputTextField.text
                
                //A instrução abaixo não funciona pois a view ainda não foi carregada
                //novaView.brancaLabel.text = inputTextField.text
            }
        }
    }
   

}
