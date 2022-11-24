//
//  ScanResults.swift
//  SkinIn
//
//  Created by Ari on 9/29/22.
//

import SwiftUI

struct ScanResults: View {
    
    var ingredients: [Ingredient]

    
    var body: some View {
        List(ingredients, id: \.id) { ingredient in
            NavigationLink(destination: IngredientDetailView(ingredient: ingredient), label: {
                IngredientRow(ingredient: ingredient)
            })
        }
    }
}

struct ScanResults_Previews: PreviewProvider {
    static var previews: some View {
        ScanResults(ingredients: [])
    }
}
