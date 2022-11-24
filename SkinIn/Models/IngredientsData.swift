//
//  IngredientsData.swift
//  SkinIn
//
//  Created by Ari on 8/22/22.
//

import Foundation
import SwiftUI

struct Ingredient: Codable, Identifiable {
    let id = UUID().uuidString
    let name: String
    let facts: String
    
    enum CodingKeys: String, CodingKey {
        case name, facts
    }
}

func findIngredients(ingredients: [String]) -> [Ingredient] {
    
//    return IngredientList.allIngredients
    
//    print(DataLoader().ingredientData)
//    print(ingredients)
//    return []
    
    let filteredArray = DataLoader().ingredientData.filter {ingredients.contains($0.name.lowercased())}
    return filteredArray

}

//extension Ingredient {
// static let all: [Ingredient] = []
//}
struct IngredientList {
    static let allIngredients = [

        Ingredient(name: "Butylene Glycol",
                   facts: "Humectant, solvent, and emolient. Retains moisture, dissolves ingredients, and improves application. In general, anyone looking for a way to effectively moisturize their skin. Butylene glycol is safe for daily use for those who do not have an allergy to it or very sensitive skin. As a solvent, butylene glycol works well with ingredients that are not water-soluable and are difficult to dissolve. Butylene glycol works well with most, if not all, ingredients."),

        Ingredient(name: "Glycerin",
                   facts: "Hydrator. Moisturizes skin, smoothes skin, makes skin appear dewy. Generally, glycerin is safe for all skin types. Products with glycerin can be used topically multiple times a day. Other moisturizing ingredients, like rose water or hyaluronic acid. There are no known interactions; however, high glycerin concentrations are rarely used in skincare products."),

        Ingredient(name: "Squalane",
                   facts: "Emollient. Calms inflammation, supports the outer skin barrier, and works well with actives like retinol. It's recommended for all skin types. Plant-based squalane is safe to use daily, morning and night. Actives like BHAs, AHAs, PHAs, and retinols. Squalane is safe to use with most ingredients."),


        Ingredient(name: "Shea butter",
                   facts: "Hydrator. Hydrating, antioxidant, soothes irritation. In general, anyone with dry skin. As much as you want, if you don't have an allergy. Other oils, cocoa butter. There are no ingredients known to interfere with shea butter."),


        Ingredient(name: "Cyclopentasiloxane",
                   facts: "Emolient, lubricant, and solvent. Gives products a silky texture, seals hydration, and dissolves heavier ingredients. In general, anyone looking to soften their skin with a lightweight product. It is safe to use on a daily basis. Robinson says it works well when combined with heavier oils or silicones because it makes them easier to spread on the skin. Cyclopentasiloxane works well with most, if not all, other ingredients."),


        Ingredient(name: "Dimethicone",
                   facts: "Emolient. Gives a silky texture to products, seals hydration, and protects the skin. It's safe for all ages and recommended for those who want to prevent dry, rough, scaly skin. Daily. Humectants and active ingredients that cause dryness and irritation. Dimethicone works well with most, if not all, other ingredients."),



        Ingredient(name: "Allantoin",
                   facts: "Moisturizer and exfoliator. Moisturizes, soothes itchiness, and heals injured skin. In general, those with dry, itchy skin looking for better skin texture and smoothness, regardless of skin type, age, or conditions. Can be used day in and day out without general side effects of any kind. Herrman says when used in scar creams, allantoin is often combined with ingredients like silicone and other emollients to amplify results. Herrman adds that combining it with other exfoliants could produce an exaggerated reaction, causing excess irritation, if strengths are too high."),

        Ingredient(name: "Alcohol Denat",
                   facts: "Alcohol. Alcohol denat is largely used in skincare and cosmetics more for its formulation benefits, rather than having any actual positive effects on the skin. It helps products spread easily and absorb quickly and acts as a preservative, says Cheung. Because it removes oils from the skin, it can also help other ingredients penetrate better, adds Petrillo(though this is precisely what makes it so drying). This is also why it may occasionally be used to de-grease skin and as prep before a chemical peel, Cheung points out. According to the experts we spoke with, it's generally an ingredient to avoid, though it's a major no-no for those with dry or sensitive skin. It's best not to use it all, but if it's in one of your favorite products, use it sparingly, not more that once every two weeks, warns Johnson. Many ingredients, hence why it's so commonly used. Again, you want to be cautious of alcohol denat to begin with, but because it does increase the penetration of other ingredients, be especially wary of products where it's combined with other potential irritants, such as fragrance, notes Gonzalez"),

        Ingredient(name: "Almond Oil",
                   facts: "Hydrator. Reduces irritation, helps with UV damage, reduces stretch marks. In general, anyone with skin in need of calming and hydration. As often as you would any other oil, so about once or twice a day. Other oils. If you have a nut allergy."),

        Ingredient(name: "Aloe Vera",
                   facts: "Skin soother. Calms, soothes, and hydrates the skin. In general, anyone looking to soothe burns, including sunburn and windburn, and moisturize their skin. Nussbaum recommends applying it two to three times daily. To increase the calming benefits, Nussbaum suggests using it with anti-inflammatory ingredients. Nussbaum says to avoid using aloe vera products that also contain alcohol, which will negate the moisturizing, soothing effects of the aloe, and also avoid combining it with chemical exfoliants, which could worsen any stinging or irritation. If you have a burn, Nussbaum advises against using it with an ointment or petrolatum, which will trap the heat inside."),

        Ingredient(name: "Alpha-Hydroxy Acids",
                   facts: "Acid/chemical exfoliant. Exfoliates the top layers of skin to minimize dullness and even out texture; some AHAs can also stimulate collagen production, while others have antioxidant and hydrating properties. Given their wide range of effects, most people can benefit from using AHAs, says Nazarian, so long as you find the right alpha-hydroxy acid and concentration of it for your skin type. This differs greatly based on the particular acid, product, and your skin. Follow product directions, but always start slow, using any AHA only once or twice per week and gradually increasing frequency as your skin can tolerate it, suggests Nussbaum. Peptides can slow the penetration of AHAs, making them less irritating. You can also pair them with hydrating ingredients. Avoid using retinoids at the same time of day as AHAs, and be cautious when using both BHAs (beta hydroxy acids, such as salicylic acid) and AHAs in order to minimize irritation."),

        Ingredient(name: "Amla Extract",
                   facts: "Antioxidant. Hydrates and protects the skin. All skin types. Safe for everyday use. Moisturizers and serums. Products that should not be combined with Vitamin C, including Retinol and AHAs"),

        Ingredient(name: "Amino Acids",
                   facts: "Varying. Soothe skin, help moisturize, act as antioxidants. In general, whatever amino acids are added to your skincare will be catered to the function of the product. You can use amino acids as often as you want; they are gentle enough for everyday use. Pretty much everything; glycerides, ceramides, and peptides in particular. Amino acids can be mixed with a host of other ingredients."),

        Ingredient(name: "Amoxicillin",
                   facts: "Antibiotic. Most commonly used to treat upper respiratory bacterial infections and urinary tract infections; sometimes used as a second-line treatment for acne. Those dealing with moderate to severe inflammatory acne, and who can't take the tetracycline class of antibiotics(minocycline, doxycycline) because of allergy or pregnancy. It's usually prescribed twice daily for acne, though as with any antibiotics for acne, it should be discontinued after three to four months of use. Oral antibiotics are generally paired with topical medications that contain benzoyl peroxide and topical retinoids. Other topical antibiotics, which can increase the likelihood of developing bacterial resistance."),

        Ingredient(name: "Apple Cider Vinegar",
                   facts: "Exfoliant. Balances skin's pH, chemically exfoliates, reduces hyperpigmentation. In general, people with oily and acne-prone skin. It depends on what product and concentration you're using it in. For a store-bought product, check directions first. If using a DIY diluted ACV solution, two to three times a week is the general recommendation. Anti-inflammatories. Other acids or retinoids")

    ]

}


