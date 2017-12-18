//
//  CiclosDAO.swift
//  Facool
//
//  Created by Student on 29/11/17.
//  Copyright © 2017 Alexandre do Vale, Felipe Arakaki, Luís Gustavo. All rights reserved.
//

import Foundation
class CiclosDAO {
    static func buscarCiclos() -> [Ciclos]{
        return [
            Ciclos(nome: "Ciclo 1", foto: "ciclos64"),
            Ciclos(nome: "Ciclo 2", foto: "ciclos64"),
            Ciclos(nome: "Ciclo 3", foto: "ciclos64"),
            Ciclos(nome: "Ciclo 4", foto: "ciclos64"),
            Ciclos(nome: "Ciclo 5", foto: "ciclos64"),
            Ciclos(nome: "Ciclo 6", foto: "ciclos64")]
    }
}
