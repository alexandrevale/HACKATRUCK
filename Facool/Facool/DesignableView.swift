//
//  DesignableView.swift
//  Facool
//
//  Created by Student on 28/11/17.
//  Copyright © 2017 Alexandre do Vale, Felipe Arakaki, Luís Gustavo. All rights reserved.
//

import UIKit

@IBDesignable class DesignableView: UIView
{
    @IBInspectable var conerRadius:CGFloat = 0
    {
        didSet
        {
            self.layer.cornerRadius = conerRadius
        }
    }
}
