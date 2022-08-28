//
//  IngredientsData.swift
//  SkinIn
//
//  Created by Ari on 8/27/22.
//

import Foundation
import SwiftUI

struct Ingredient: Identifiable {
    let id = UUID()
    
    let ingName: String
    let typeIng: String
    let benefits: String
    let whoUse: String
    let oftenUse: String
    let worksWell: String
    let notUse: String
}


struct IngredientList {
    static let topTen = [
        
        Ingredient(ingName: "Butylene Glycol",
                   typeIng: "Humectant, solvent, and emolient.",
                   benefits: "Retains moisture, dissolves ingredients, and improves application.",
                   whoUse: "In general, anyone looking for a way to effectively moisturize their skin.",
                   oftenUse: "Butylene glycol is safe for daily use for those who do not have an allergy to it or very sensitive skin.",
                   worksWell: "As a solvent, butylene glycol works well with ingredients that are not water-soluable and are difficult to dissolve.",
                   notUse: "Butylene glycol works well with most, if not all, ingredients."),
        
        Ingredient(ingName: "Glycerin",
                   typeIng: "Hydrator",
                   benefits: "Moisturizes skin, smoothes skin, makes skin appear dewy.",
                   whoUse: "Generally, glycerin is safe for all skin types.",
                   oftenUse: "Products with glycerin can be used topically multiple times a day.",
                   worksWell: "Other moisturizing ingredients, like rose water or hyaluronic acid.",
                   notUse: "There are no known interactions; however, high glycerin concentrations are rarely used in skincare products."),
        
        Ingredient(ingName: "Squalane",
                   typeIng: "Emollient",
                   benefits: "Calms inflammation, supports the outer skin barrier, and works well with actives like retinol",
                   whoUse: "It's recommended for all skin types.",
                   oftenUse: "Plant-based squalane is safe to use daily, morning and night.",
                   worksWell: "Actives like BHAs, AHAs, PHAs, and retinols.",
                   notUse: "Squalane is safe to use with most ingredients."),
        
        
        Ingredient(ingName: "Shea butter",
                   typeIng: "Hydrator",
                   benefits: "Hydrating, antioxidant, soothes irritation.",
                   whoUse: "In general, anyone with dry skin.",
                   oftenUse: "As much as you want, if you don't have an allergy.",
                   worksWell: "Other oils, cocoa butter.",
                   notUse: "There are no ingredients known to interfere with shea butter."),
        
        
        Ingredient(ingName: "Cyclopentasiloxane",
                   typeIng: "Emolient, lubricant, and solvent.",
                   benefits: "Gives products a silky texture, seals hydration, and dissolves heavier ingredients.",
                   whoUse: "In general, anyone looking to soften their skin with a lightweight product.",
                   oftenUse: "It is safe to use on a daily basis.",
                   worksWell: "Robinson says it works well when combined with heavier oils or silicones because it makes them easier to spread on the skin.",
                   notUse: "Cyclopentasiloxane works well with most, if not all, other ingredients."),
        
        
        Ingredient(ingName: "Dimethicone",
                   typeIng: "Emolient",
                   benefits: "Gives a silky texture to products, seals hydration, and protects the skin.",
                   whoUse: "It's safe for all ages and recommended for those who want to prevent dry, rough, scaly skin.",
                   oftenUse: "Daily.",
                   worksWell: "Humectants and active ingredients that cause dryness and irritation.",
                   notUse: "Dimethicone works well with most, if not all, other ingredients."),
        
        
        
        Ingredient(ingName: "Allantoin",
                   typeIng: "Moisturizer and exfoliator",
                   benefits: "Moisturizes, soothes itchiness, and heals injured skin",
                   whoUse: "In general, those with dry, itchy skin looking for better skin texture and smoothness, regardless of skin type, age, or conditions. ",
                   oftenUse: "Can be used day in and day out without general side effects of any kind.",
                   worksWell: "Herrman says when used in scar creams, allantoin is often combined with ingredients like silicone and other emollients to amplify results.",
                   notUse: "Herrman adds that combining it with other exfoliants could produce an exaggerated reaction, causing excess irritation, if strengths are too high."),
        
        Ingredient(ingName: "Alcohol Denat",
                   typeIng: "Alcohol",
                   benefits: "Alcohol denat is largely used in skincare and cosmetics more for its formulation benefits, rather than having any actual positive effects on the skin. It helps products spread easily and absorb quickly and acts as a preservative, says Cheung. Because it removes oils from the skin, it can also help other ingredients penetrate better, adds Petrillo(though this is precisely what makes it so drying). This is also why it may occasionally be used to de-grease skin and as prep before a chemical peel, Cheung points out.",
                   whoUse: "According to the experts we spoke with, it's generally an ingredient to avoid, though it's a major no-no for those with dry or sensitive skin.",
                   oftenUse: "It's best not to use it all, but if it's in one of your favorite products, use it sparingly, not more that once every two weeks, warns Johnson.",
                   worksWell: "Many ingredients, hence why it's so commonly used.",
                   notUse: "Again, you want to be cautious of alcohol denat to begin with, but because it does increase the penetration of other ingredients, be especially wary of products where it's combined with other potential irritants, such as fragrance, notes Gonzalez"),
        
        Ingredient(ingName: "Almond Oil",
                   typeIng: "Hydrator",
                   benefits: "Reduces irritation, helps with UV damage, reduces stretch marks.",
                   whoUse: "In general, anyone with skin in need of calming and hydration.",
                   oftenUse: "As often as you would any other oil, so about once or twice a day.",
                   worksWell: "Other oils",
                   notUse: "If you have a nut allergy."),
        
        Ingredient(ingName: "Aloe Vera",
                   typeIng: "Skin soother",
                   benefits: "Calms, soothes, and hydrates the skin.",
                   whoUse: "In general, anyone looking to soothe burns, including sunburn and windburn, and moisturize their skin.",
                   oftenUse: "Nussbaum recommends applying it two to three times daily.",
                   worksWell: "To increase the calming benefits, Nussbaum suggests using it with anti-inflammatory ingredients.",
                   notUse: "Nussbaum says to avoid using aloe vera products that also contain alcohol, which will negate the moisturizing, soothing effects of the aloe, and also avoid combining it with chemical exfoliants, which could worsen any stinging or irritation. If you have a burn, Nussbaum advises against using it with an ointment or petrolatum, which will trap the heat inside."),
        
        Ingredient(ingName: "Alpha-Hydroxy Acids",
                   typeIng: "Acid/chemical exfoliant",
                   benefits: "Exfoliates the top layers of skin to minimize dullness and even out texture; some AHAs can also stimulate collagen production, while others have antioxidant and hydrating properties.",
                   whoUse: "Given their wide range of effects, most people can benefit from using AHAs, says Nazarian, so long as you find the right alpha-hydroxy acid and concentration of it for your skin type.",
                   oftenUse: "This differs greatly based on the particular acid, product, and your skin. Follow product directions, but always start slow, using any AHA only once or twice per week and gradually increasing frequency as your skin can tolerate it, suggests Nussbaum.",
                   worksWell: "Peptides can slow the penetration of AHAs, making them less irritating. You can also pair them with hydrating ingredients.",
                   notUse: "Avoid using retinoids at the same time of day as AHAs, and be cautious when using both BHAs (beta hydroxy acids, such as salicylic acid) and AHAs in order to minimize irritation."),
        
        Ingredient(ingName: "Amla Extract",
                   typeIng: "Antioxidant",
                   benefits: "Hydrates and protects the skin",
                   whoUse: "All skin types",
                   oftenUse: "Safe for everyday use",
                   worksWell: "Moisturizers and serums",
                   notUse: "Products that should not be combined with Vitamin C, including Retinol and AHAs"),
        
        Ingredient(ingName: "Amino Acids",
                   typeIng: "Varying",
                   benefits: "Soothe skin, help moisturize, act as antioxidants.",
                   whoUse: "In general, whatever amino acids are added to your skincare will be catered to the function of the product.",
                   oftenUse: "You can use amino acids as often as you want; they are gentle enough for everyday use.",
                   worksWell: "Pretty much everything; glycerides, ceramides, and peptides in particular.",
                   notUse: "Amino acids can be mixed with a host of other ingredients."),
        
        Ingredient(ingName: "Amoxicillin",
                   typeIng: "Antibiotic",
                   benefits: "Most commonly used to treat upper respiratory bacterial infections and urinary tract infections; sometimes used as a second-line treatment for acne.",
                   whoUse: "Those dealing with moderate to severe inflammatory acne, and who can't take the tetracycline class of antibiotics(minocycline, doxycycline) because of allergy or pregnancy.",
                   oftenUse: "It's usually prescribed twice daily for acne, though as with any antibiotics for acne, it should be discontinued after three to four months of use.",
                   worksWell: "Oral antibiotics are generally paired with topical medications that contain benzoyl peroxide and topical retinoids.",
                   notUse: "Other topical antibiotics, which can increase the likelihood of developing bacterial resistance."),
        
        Ingredient(ingName: "Apple Cider Vinegar",
                   typeIng: "Exfoliant",
                   benefits: "Balances skin's pH, chemically exfoliates, reduces hyperpigmentation.",
                   whoUse: "In general, people with oily and acne-prone skin.",
                   oftenUse: "It depends on what product and concentration you're using it in. For a store-bought product, check directions first. If using a DIY diluted ACV solution, two to three times a week is the general recommendation.",
                   worksWell: "Anti-inflammatories",
                   notUse: "Other acids or retinoids"),
        
        Ingredient(ingName: "Apricot Kernel Oil",
                   typeIng: "Emollient and anti-inflammatory",
                   benefits: "Skin barrier support, locks in moisture, and helps improve the appearance of fine lines and wrinkles",
                   whoUse: "Anyone looking for a moisturizer oil that doesn't have acne-prone skin",
                   oftenUse: "It's safe to use on skin as needed.",
                   worksWell: "Most skincare products",
                   notUse: "")
    
    ]
}
