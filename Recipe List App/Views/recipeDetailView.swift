//
//  recipeDetailView.swift
//  Recipe List App
//
//  Created by Todd Farris on 9/24/21.
//

import SwiftUI

struct recipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            
            //MARK: Recipe image
            Image(recipe.image)
                .resizable()
                .scaledToFill()
                .frame(width: 400, height: 200, alignment: .center)
                .clipped()
                .cornerRadius(5)
            
            //MARK: Ingredients
            VStack(alignment: .leading)
            {
                Text("Ingredients")
                    .font(.headline)
                    .padding()

                ForEach (recipe.ingredients, id: \.self) { ingredient in
                    
                    Text("- " + ingredient)
                } .padding(.leading)
                
                Divider()
                
            //MARK: Directions
                
                Text("Directions")
                        .font(.headline)
                        .padding()

                ForEach (0..<recipe.directions.count, id: \.self) { index in
                        
                    Text(String(index + 1) + ".  " + recipe.directions[index])
                }.padding(.leading)
                    .padding(5)
                    
            
            }
        }
        .navigationBarTitle(recipe.name)
    }
}

struct recipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        //create a dummy recipe and pass into details view so we can see a preview
        let model = RecipeModel()
        
        recipeDetailView(recipe: model.recipes[0])
    }
}
