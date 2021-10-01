//
//  ContentView.swift
//  Recipe List App
//
//  Created by Christopher Ching on 2021-01-14.
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference the view model
    //@ObservedObject var model = RecipeModel()
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(destination: recipeDetailView(recipe: r),
                    label: {
                // MARK: Row Item
                    HStack(spacing: 20.0) {
                    Image(r.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipped()
                        .cornerRadius(5)
                    Text(r.name)
                }
                })
                
                
                
            }
            .navigationBarTitle("Recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
