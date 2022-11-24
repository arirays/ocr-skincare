//
//  IngredientsListView.swift
//  SkinIn
//
//  Created by Ari on 7/30/22.
//

import SwiftUI

struct IngredientsListView: View {
    
    
    let data = DataLoader().ingredientData
    
    @State var searchText: String = ""
    
    var searchIngredient: [Ingredient] {
        if searchText == "" {return data }
        return data.filter { $0.name.lowercased().contains(searchText.lowercased() )
        }
    }
    
    var body: some View {
        NavigationView {
                List(searchIngredient, id: \.id) { ingredient in
                        NavigationLink(destination: IngredientDetailView(ingredient: ingredient), label: {
                            IngredientRow(ingredient: ingredient)
                        })
                    }
                    .navigationTitle("Skincare Ingredients")
                    .searchable(text: $searchText)
        }
    }
}


struct IngredientRow: View {
    var  ingredient: Ingredient
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(ingredient.name)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
//            Text(ingredient.facts)
//                .lineLimit(2)
        }
        .padding(.vertical, 7)
    }
}




struct IngredientsListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IngredientsListView()
        }
    }
}
