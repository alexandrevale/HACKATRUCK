//
//  AulaViewController.swift
//  Facool
//
//  Created by Student on 30/11/17.
//  Copyright © 2017 Alexandre do Vale, Felipe Arakaki, Luís Gustavo. All rights reserved.
//

import UIKit

class AulaViewController: UIViewController {
    
    var dadosAula: Aulas?
    
    @IBOutlet weak var lblNomeAula: UILabel!
    @IBOutlet weak var lblObjetivoAula: UILabel!

    @IBOutlet var btnAvaliacaoDidatica: [UIButton]!
    
    @IBOutlet var btnAvaliacaoConteudo: [UIButton]!
    
    @IBAction func btnAvaliacaoConteudoStar(_ sender: UIButton) {
        
        let tag = sender.tag
        
        for btn in btnAvaliacaoConteudo{
            if btn.tag > tag {
                btn.setTitle("☆", for: .normal)
            } else {
                btn.setTitle("★", for: .normal)
            }
            
        }
        
    }
    
    @IBAction func btnAvaliacaoDidaticaStar(_ sender: UIButton) {
        
        let tag = sender.tag
        
        for btn in btnAvaliacaoDidatica{
            if btn.tag > tag {
                btn.setTitle("☆", for: .normal)
            } else {
                btn.setTitle("★", for: .normal)
            }
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNomeAula.text = dadosAula?.nome
        lblObjetivoAula.text = dadosAula?.objetivo
        
        print("AulaVIewController = ", dadosAula?.nome)
    }
    
    
    /*
     
     
     //identifier == "mostrarAula"
     
     //
     
     //outletCollection da stack de botões (btnAvaliacao) para avaliar a aula
     //Action btnAvaliarDidatica
     //Código que vai dentro do botão
     /*
     {
     let tag = sender.tag
     for btn in btnAvaliacaoDidatica {
     if btn.tag <= tag {
     btn.setTittle("EMOJI DE ESTRELA PREENCHIDA", for: .normal)
     } else {
     btn.setTittle("EMOJI DE ESTRELA PREENCHIDA", for: .normal)
     }
     }
     }
     */
     
     //Action btnAvaliarConteudo
     //Código que vai dentro do botão
     /*
     {
     let tag = sender.tag
     for btn in btnAvaliarConteudo {
     if btn.tag <= tag {
     btn.setTittle("EMOJI DE ESTRELA PREENCHIDA", for: .normal)
     } else {
     btn.setTittle("EMOJI DE ESTRELA PREENCHIDA", for: .normal)
     }
     }
     }
     */
     /*
     override func viewDidLoad() {
     super.viewDidLoad()
     
     //lblNomeAula.text = dadosAula?.nome
     //lblNomeProf.text = dadosAula?.nomeProf
     //lblObjetivoAula.text = dadosAula?.objetivo
     }
     */
     }
     */
    
}
