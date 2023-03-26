//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Marinescu on 12.03.2023.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init(){
        self.recipes = DataService.getLocalData()
    }
    
}
