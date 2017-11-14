//
//  PodcastDAO.swift
//  Podcast
//
//  Created by Student on 07/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import Foundation

class PodcastDAO{
    static func listarPodcast() -> [Podcast]{
        return[
            Podcast(titulo: "99Vidas", info: "No unplayed episodes", foto: "99vidas"),
            Podcast(titulo: "Canal42.tv", info: "No unplayed episodes", foto: "canal42"),
            Podcast(titulo: "MacMagazine no Ar", info: "No unplayed episodes", foto: "mm"),
            Podcast(titulo: "Não Ouvo", info: "No unplayed episodes", foto: "naoouvo"),
            Podcast(titulo: "NerdCast", info: "No unplayed episodes", foto: "nerdcast"),
            Podcast(titulo: "O Melhor Podcast do Brasil", info: "No unplayed episodes", foto: "ompdb"),
            Podcast(titulo: "Rapaduracast", info: "No unplayed episodes", foto: "rapaduracast"),
            Podcast(titulo: "Reloading", info: "No unplayed episodes", foto: "reloading"),
            Podcast(titulo: "Scicast", info: "No unplayed episodes", foto: "scicast")
        ]
    }
}
