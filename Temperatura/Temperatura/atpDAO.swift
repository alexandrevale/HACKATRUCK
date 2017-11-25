//
//  atpDAO.swift
//  Temperatura
//
//  Created by Student on 23/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import Foundation

class Dados {
    var altitude: String
    var temperatura: String
    var pressao: String
    
    init(json: [String: String]) {
        self.temperatura = json["temperatura"] ?? ""
        self.pressao = json["pressao"] ?? ""
        self.altitude = json["altitude"] ?? ""
    }
}

class AtpDAO {
    
    static func getDados (callback: @escaping ((Dados) -> Void)) {
        //Url do GET
        let endpoint: String = "https://iotfatecnoite03.mybluemix.net/coletar"
        
        guard let url = URL(string: endpoint) else {
            print("Erroooo: Cannot create URL")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            
            if error != nil {
                print("Error = \(String(describing: error))")
                return
            }
            
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            print("responseString = \(String(describing: responseString))")
            
            DispatchQueue.main.async() {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: String] {
                        
                        let dado = Dados(json: json)
                        
                        callback(dado)
                    }else {
                        print("fudeuuuu")
                    }
                } catch let error as NSError {
                    print("Error = \(error.localizedDescription)")
                }
            }
        })
        task.resume()
    }
}
