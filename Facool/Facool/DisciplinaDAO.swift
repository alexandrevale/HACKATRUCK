//
//  DisciplinaDAO.swift
//  Facool
//
//  Created by Student on 27/11/17.
//  Copyright © 2017 Alexandre do Vale, Felipe Arakaki, Luís Gustavo. All rights reserved.
//

import Foundation
import CoreData

class DisciplinaDAO {
    
    static func buscarDisciplinas() -> [Disciplina] {
        var disciplinas = [Disciplina()]
        
        let request: NSFetchRequest<Disciplina> = Disciplina.fetchRequest()
        request.sortDescriptors = [NSSortDescriptor.init(key: "codigo", ascending: true)]
        
        let predicate = NSPredicate(format: "Nome")
        request.predicate = predicate
        
        do {
            try disciplinas = CoreDataManager.sharedManager().getContext().fetch(request)
            print(disciplinas.count)
            
        } catch let erro as NSError {
            print(erro.userInfo)
        }
        return disciplinas
    }
}
