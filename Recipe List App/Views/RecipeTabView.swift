//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Todd Farris on 9/30/21.
//

import SwiftUI


struct RecipeTabView: View {
        
    var body: some View {
        
        TabView{
            Text("Featured View")
         /*   Image("eggplant parmesan")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)*/
            .tabItem {
                VStack {
                    Image(systemName: "star.fill")
                    Text("Featured")
                }
            }
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
