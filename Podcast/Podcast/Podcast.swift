//
//  Podcast.swift
//  Podcast
//
//  Created by Student on 07/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import Foundation

class Podcast{
    var titulo: String?
    var info: String?
    var foto: String?
    
    init(titulo: String, info: String, foto: String) {
        self.titulo = titulo
        self.info = info
        self.foto = foto
    }
}
