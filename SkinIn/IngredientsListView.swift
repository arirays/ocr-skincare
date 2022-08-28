//
//  IngredientsListView.swift
//  SkinIn
//
//  Created by Ari on 7/30/22.
//

import SwiftUI

struct IngredientsListView: View {
    var ingredients: [Ingredient] = IngredientList.topTen
    
    var body: some View {
        
        NavigationView {
            List(ingredients, id: \.id) { ingredient in
                
                NavigationLink(destination: IngredientDetailView(ingredient: ingredient), label: {
                    IngredientCell(ingredient: ingredient)
                })
            }
            .navigationTitle("Skincare Ingredients")
        }
    }
}


struct IngredientCell: View {
    var  ingredient: Ingredient
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(ingredient.ingName)
                .font(.title3)
                .fontWeight(.bold)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            Text(ingredient.benefits)
                .lineLimit(2)
        }
        .padding(.vertical, 7)
    }
}

struct IngredientsListView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsListView()
    }
}
