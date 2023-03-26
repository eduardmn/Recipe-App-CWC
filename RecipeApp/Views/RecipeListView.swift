//
//  ContentView.swift
//  RecipeApp
//
//  Created by Marinescu on 12.03.2023.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List(model.recipes){ r in
                
                NavigationLink(destination: RecipeDetaillView(recipe: r), label: {
                    HStack{
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                    }
                })
                
                
                 
            }
            .navigationTitle("All recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
