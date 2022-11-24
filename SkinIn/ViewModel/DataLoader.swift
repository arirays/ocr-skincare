//
//  DataLoader.swift
//  SkinIn
//
//  Created by Ari on 10/10/22.
//

import Foundation

public class DataLoader {
    
    @Published var ingredientData = [Ingredient]()
    
    
    init() {
        load()
    }
    
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "ingredients", withExtension: "json") {
            
            // do catch in case of an error
            
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([Ingredient].self, from: data)
                self.ingredientData = dataFromJson
                
//                let name = dataFromJson.name
//                let ingredient = Ingredient(name: name, facts: facts)
//                
                
            } catch {
                print(error)
            }
        } else {
            print("File not found")
        }
    }
}



