//
//  DataEntity.swift
//  Facool
//
//  Created by Student on 27/11/17.
//  Copyright © 2017 Alexandre do Vale, Felipe Arakaki, Luís Gustavo. All rights reserved.
//

import Foundation
import CoreData


class DataEntity: NSManagedObject {
    
    convenience init() {
        let nomeClasseString = String(describing: Curso.self)
        let entityDescription = NSEntityDescription.entity(forEntityName: nomeClasseString, in: CoreDataManager.sharedManager().getContext())
        
        self.init(entity: entityDescription!, insertInto: CoreDataManager.sharedManager().getContext())
    }
    
}
