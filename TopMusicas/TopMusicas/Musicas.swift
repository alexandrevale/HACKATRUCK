//
//  Musicas.swift
//  TopMusicas
//
//  Created by Student on 08/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import Foundation

class Musicas{
    var musica: String?
    var banda: String?
    var album: String?
    var nomeAlbum: String?
    
    init(musica: String, banda: String, album: String, nomeAlbum: String) {
        self.musica = musica
        self.banda = banda
        self.album = album
        self.nomeAlbum = nomeAlbum
    }
}
