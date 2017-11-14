//
//  CidadeDAO.swift
//  TableView
//
//  Created by Student on 07/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import Foundation

class CidadeDAO{
    
    static func buscarCidades() -> [Cidade] {
        return [
            Cidade(nome: "Santos", estado: "SP", info: "Cidade histórica", foto: "paisagem_1"),
            Cidade(nome: "Rio de Janeiro", estado: "RJ", info: "Capital do estado do Rio de Janeiro", foto: "paisagem_2"),
            Cidade(nome: "São Tomé das Letras", estado: "MG", info: "Montanhas e misticismo", foto: "paisagem_3"),
            Cidade(nome: "Curitiba", estado: "PR", info: "Frrrrrrio", foto: "paisagem_4")
        ]

    }
    
}
