//
//  Cidade.swift
//  TableView
//
//  Created by Student on 07/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import Foundation

class Cidade{
    
    var nome: String?
    var estado: String?
    var info: String?
    var foto: String?
    
    init(nome: String, estado: String, info: String, foto: String) {
        self.nome = nome
        self.estado = estado
        self.info = info
        self.foto = foto
    }
    
}
