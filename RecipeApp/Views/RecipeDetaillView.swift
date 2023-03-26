//
//  RecipeDetaillView.swift
//  RecipeApp
//
//  Created by Marinescu on 26.03.2023.
//

import SwiftUI

struct RecipeDetaillView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView{
            
            // MARK: Recipe Image
            Image(recipe.image).resizable().scaledToFill()
            
            VStack(alignment: .leading){
                
                // MARK: Ingredints
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                    
                    ForEach(recipe.ingredients, id: \.self) { item in
                        Text("• " + item)
                    }
                }
                
                Divider()
                
                // MARK: Instructions
                VStack(alignment: .leading){
                Text("Instructions")
                        .font(.headline)
                        .padding(.vertical, 5)
                    
                ForEach(0..<recipe.directions.count, id:\.self) { index in
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5)
                    }
                }
                
            }
            .padding(.horizontal)
            
            
            
        }
        .navigationTitle(recipe.name)
    }
}

struct RecipeDetaillView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        
        RecipeDetaillView(recipe: model.recipes[0])
    }
}
