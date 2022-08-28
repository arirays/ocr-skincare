//
//  IngredientDetailView.swift
//  SkinIn
//
//  Created by Ari on 8/27/22.
//

import SwiftUI

struct IngredientDetailView: View {
    
    var ingredient: Ingredient
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, .white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                VStack {
                    Text(ingredient.ingName)
                        .font(.title)
                    .fontWeight(.semibold)
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(ingredient.typeIng)
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text(ingredient.benefits)
                    Text(ingredient.whoUse)
                    Text(ingredient.oftenUse)
                    Text(ingredient.worksWell)
                    Text(ingredient.notUse)
                }
                .padding()
                Spacer()
            }
            .padding()
        }
    }
}

struct IngredientDetailView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientDetailView(ingredient: IngredientList.topTen.first!)
    }
}
