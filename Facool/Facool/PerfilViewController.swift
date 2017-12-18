//
//  PerfilViewController.swift
//  Facool
//
//  Created by Student on 30/11/17.
//  Copyright © 2017 Alexandre do Vale, Felipe Arakaki, Luís Gustavo. All rights reserved.
//

import UIKit
import CoreData
class PerfilViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var Nome: UILabel!
    @IBOutlet weak var Email: UILabel!
    @IBOutlet weak var RA: UILabel!
    
    @IBAction func btnCarregar(_ sender: Any) {
    
        let imgController = UIImagePickerController()
        imgController.delegate = self
        
        imgController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        imgController.allowsEditing = false //Verificar função
        
        self.present(imgController, animated: true){
            //Quando setada a img
        }
        
        func iamgePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithIndfo info: [String: Any]) {
            if let imgController = info[UIImagePickerControllerOriginalImage] as? UIImage {
                imgAvatar.image = imgController
            } else{
                print("Erro ao carregar a imagem")
            }
            
            self.dismiss(animated: true, completion: nil)
        }
    
    
    
    }
    
    var nomE : Aluno!
    //var Ra : Aluno!
    //var eMail : Aluno!
    
    
    lazy var managedObjextContext : NSManagedObjectContext = {
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }()
    var noome : String {
        get {
            if nomE == nil {
                loadData()
            }
            return nomE.nome!
        }
        set {
            nomE.nome = newValue
            saveContext()
            Nome.text! = String(newValue)
        }
    }
    
    /*var raa : String {
        get {
            if Ra == nil {
                loadData()
            }
            return Ra.ra!
        }
        set {
            Ra.ra = newValue
            saveContext()
            RA.text! = String(newValue)
        }
    }
    
    var emaail : String {
        get {
            if eMail == nil {
                loadData()
            }
            return Ra.ra!
        }
        set {
            eMail.email = newValue
            saveContext()
            Email.text! = String(newValue)
        }
    }*/

    override func viewDidLoad() {
        super.viewDidLoad()

        managedObjextContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        loadData()
        Nome.text! = String(noome)
        
        
       
    }

    func loadData() {
        let presentRequest:NSFetchRequest<Aluno> = Aluno.fetchRequest()
        do {
            let coreDataAluno = try managedObjextContext.fetch(presentRequest)
            if coreDataAluno.isEmpty {
                let moneyItem = Aluno(context: managedObjextContext)
                nomE = moneyItem
                
                saveContext()
            } else {
                nomE = coreDataAluno.last!
                
                
            }
        } catch {
            print("Could not load data from database \(error.localizedDescription)")
        }
    }
    
    func saveContext() {
        do {
            try self.managedObjextContext.save()
        } catch {
            print("Could not save data \(error.localizedDescription)")
        }
    }
    
}




