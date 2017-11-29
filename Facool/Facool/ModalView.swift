//
//  ModalView.swift
//  Facool
//
//  Created by Student on 27/11/17.
//  Copyright © 2017 Alexandre do Vale, Felipe Arakaki, Luís Gustavo. All rights reserved.
//

import UIKit

class ModalView: UIView {

    var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }

}
