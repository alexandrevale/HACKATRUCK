//
//  CadastroViewController.swift
//  Facool
//
//  Created by Student on 27/11/17.
//  Copyright © 2017 Alexandre do Vale, Felipe Arakaki, Luís Gustavo. All rights reserved.
//

import UIKit
import CoreData

class CadastroViewController: UIViewController {
 
    @IBOutlet weak var Nome: UITextField!
    
    @IBOutlet weak var RA: UITextField!

    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Senha: UITextField!
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func Cadastrar(_ sender: Any)
    {
        if Nome?.text != "" && Email?.text != "" && Senha?.text != ""  && RA?.text != ""
        {
            let novoAluno = NSEntityDescription.insertNewObject(forEntityName: "Aluno", into: context)
            novoAluno.setValue(self.Nome!.text, forKey: "nome")
            novoAluno.setValue(self.Nome!.text, forKey: "ra")
            novoAluno.setValue(self.Nome!.text, forKey: "email")
            novoAluno.setValue(self.Nome!.text, forKey: "senha")
        
            do
            {
                try context.save()
            }
            
            catch
            {
                print(error)
            }
        }
        
        else
        {
            print("Por favor preencha o cadastro corretamente")
        }
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
