//
//  Artista.swift
//  DataPersistence
//
//  Created by Student on 10/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import Foundation
import CoreData

class Artista: NSManagedObject{
    convenience init(){
        let classStringName = String.init(describing: Artista.self)
        let entityDescription = NSEntityDescription.entity(forEntityName: classStringName, in: CoreDataManager.sharedManager().getContext())
        
        self.init(entity: entityDescription!, insertInto: CoreDataManager.sharedManager().getContext())
    }
}
