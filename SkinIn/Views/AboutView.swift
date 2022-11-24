//
//  AboutView.swift
//  SkinIn
//
//  Created by Ari on 1/11/22.
//

import SwiftUI

struct AboutView: View {
    
    let backgroundGradient = LinearGradient(gradient: Gradient(colors: [Color("brandPrimary"),Color("pages")]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)

    
    var body: some View {
        NavigationView {
            ZStack {
                backgroundGradient.ignoresSafeArea()
                Text("This App is designed to find active ingredients in your favorite products, with trusted insights from dermatologists, cosmetic chemists, and more.\n\nActive ingredients are the ingredients in skincare products that are intended to treat a specific problem and they have been scientifically proven to change the structure of your skin at a cellular level.\n\nThe information on this App is not intended or implied to be a substitute for professional medical advice. We are not responsible for any decisions made after the recommendation from this application.\n\n If you have any comments or concerns in regards to the ingredients listed on this app, please contact us at help@skinin.com")
                    .navigationTitle("About")
                .padding()
                Spacer()
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
