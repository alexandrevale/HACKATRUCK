//
//  DisciplinasDAO.swift
//  Facool
//
//  Created by Student on 29/11/17.
//  Copyright © 2017 Alexandre do Vale, Felipe Arakaki, Luís Gustavo. All rights reserved.
//

import Foundation

class DisciplinaDAO{
    static func buscarDisciplinas() -> [Disciplinas]{
        return [
            Disciplinas(nome: "Administração Geral", foto: "disciplinas64"),
            Disciplinas(nome: "Arquitetura e Organização de Computadores", foto: "disciplinas64"),
            Disciplinas(nome: "Algoritmos e Lógica de Programação", foto: "disciplinas64"),
            Disciplinas(nome: "Laboratório de Hardware", foto: "disciplinas64"),
            Disciplinas(nome: "Programação em Microinformática", foto: "disciplinas64"),
            Disciplinas(nome: "Inglês I", foto: "disciplinas64"),
            Disciplinas(nome: "Matemática Discreta", foto: "disciplinas64")]
    }

}
