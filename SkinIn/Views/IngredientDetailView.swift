//
//  IngredientDetailView.swift
//  SkinIn
//
//  Created by Ari on 8/22/22.
//

import SwiftUI

struct IngredientDetailView: View {
    
    var ingredient: Ingredient
    let backgroundGradient = LinearGradient(gradient: Gradient(colors: [Color("brandPrimary"),Color("pages")]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    
    var body: some View {
        ZStack {
            backgroundGradient.ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 5) {
                    Text(ingredient.name)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(ingredient.facts)
                        .font(.title2)
//                        .fontWeight(.semibold)
                }
                .padding()
                Spacer()
            }
            .padding()
            Spacer()
        }
//        .navigationTitle(ingredient.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct IngredientDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IngredientDetailView(ingredient: DataLoader().ingredientData.first!)
        }
    }
}
