//
//  ViewController.swift
//  DataPersistence
//
//  Created by Student on 10/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {

    @IBAction func inserir(_ sender: Any) {
        
        let musica = Musica()
        musica.titulo = "Nothing Else Metters"
        musica.album = "Black Album"
        
        let artista = Artista()
        artista.nome = "Metallica"
        artista.estiloMusical = "Metal"
        
        musica.artista = artista
        
        CoreDataManager.sharedManager().saveContext()
    }
    @IBAction func deletar(_ sender: Any) {
        let musicas = MusicaDAO.buscarTodas()
        if musicas.count > 0{
            let musicaDeletar = musicas.first
            CoreDataManager.sharedManager().getContext().delete(musicaDeletar!)
            CoreDataManager.sharedManager().saveContext()
        }
    }
    @IBAction func Listar(_ sender: Any) {
        let musicas = MusicaDAO.buscarTodas()
        if musicas.count > 0{
            for m in musicas{
                print(m.titulo!)
            }
        }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

