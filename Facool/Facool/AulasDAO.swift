//
//  AulasDAO.swift
//  Facool
//
//  Created by Student on 29/11/17.
//  Copyright © 2017 Alexandre do Vale, Felipe Arakaki, Luís Gustavo. All rights reserved.
//

import Foundation

class AulasDAO {
    static func buscarAulas() -> [Aulas]{
        return [
            Aulas(nome: "Aula 01", foto: "aula", objetivo: "Apresentação da Disciplina"),
            Aulas(nome: "Aula 02", foto: "aula", objetivo: "Introdução aos tipos de variáveis"),
            Aulas(nome: "Aula 03", foto: "aula", objetivo: "Trabalhando com operações matemáticas básicas"),
            Aulas(nome: "Aula 04", foto: "aula", objetivo: "Condição de decisão (if else)"),
            Aulas(nome: "Aula 05", foto: "aula", objetivo: ""),
            Aulas(nome: "Aula 06", foto: "aula", objetivo: ""),
            Aulas(nome: "Aula 07", foto: "aula", objetivo: ""),
            Aulas(nome: "Aula 08", foto: "aula", objetivo: ""),
            Aulas(nome: "Aula 09", foto: "aula", objetivo: ""),
            Aulas(nome: "Aula 10", foto: "aula", objetivo: ""),
            Aulas(nome: "Aula 11", foto: "aula", objetivo: ""),
            Aulas(nome: "Aula 12", foto: "aula", objetivo: "")]
    }
}
