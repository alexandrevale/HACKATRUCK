//
//  ViewController.swift
//  Temperatura
//
//  Created by Student on 23/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblAltura: UILabel!
    @IBOutlet weak var lblPressao: UILabel!
    @IBOutlet weak var lblTemperatura: UILabel!

    @IBAction func btnCarregar(_ sender: Any) {
        AtpDAO.getDados{(dado) in
            self.lblAltura.text = String(describing: dado.altitude)
            self.lblPressao.text = String(describing: dado.pressao)
            self.lblTemperatura.text = String(describing: dado.temperatura)
        }
    }
}
