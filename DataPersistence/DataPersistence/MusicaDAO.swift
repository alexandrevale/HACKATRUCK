//
//  MusicaDAO.swift
//  DataPersistence
//
//  Created by Student on 10/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import Foundation
import CoreData
class MusicaDAO{
    static func buscarTodas() -> [Musica]{
        var musicas = [Musica]()
        // SELECT * FROM Musica
        let request: NSFetchRequest<Musica> = Musica.fetchRequest()
        //ORDER BY titulo ASC
        request.sortDescriptors = [NSSortDescriptor.init(key: "titulo", ascending: true)]
        
        do{
            musicas = try CoreDataManager.sharedManager().getContext().fetch(request)
            print("Total de músicas: ", musicas.count)
        }catch let erro as NSError{
            print(erro.userInfo)
        }
        return musicas
    }
}
