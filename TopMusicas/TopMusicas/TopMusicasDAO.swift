//
//  TopMusicasDAO.swift
//  TopMusicas
//
//  Created by Student on 08/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import Foundation

class TopMusicasDAO{
    static func listarMusicas() -> [Musicas]{
        return[
            Musicas(musica: "Ompa til du dør", banda: "Kaizers Orchestra", album: "ompa", nomeAlbum: "Ompa til du dør"),
            Musicas(musica: "The Violence", banda: "Rise Against", album: "wolves", nomeAlbum: "Wolves"),
            Musicas(musica: "The Killing Moon", banda: "Echo & the Bunnymen", album: "Oceanrain", nomeAlbum: "Oceanrain")
        ]
    }
}
