//
//  ScanIngView.swift
//  SkinIn
//
//  Created by Ari on 8/17/22.
//

import SwiftUI

struct ScanIngView: View {
    @State private var number = 0
    
    var body: some View {
        ZStack {
            VStack {
                Text("Scan Ingredients")
                    .bold()
                    .font(.title2)
                Text("Focus camera on the back of the ingredient list of your skin care label")
                    .font(.title3)
                    .padding()
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 500)


                Label("\(number) active ingredients found:", systemImage: "doc.viewfinder")
                    .font(.title2)


                NavigationLink {
                    ScanResults()
                } label: {
                    Text("Tap to Scan")
                        .frame(width: 280, height: 50)
                        .background(Color.orange)
                        .font(.system(size: 20, weight: .bold))
                        .cornerRadius(12)
                        .padding()
                }
                .padding()
            }
        }
        
    }
}

struct ScanIngView_Previews: PreviewProvider {
    static var previews: some View {
        ScanIngView()
    }
}
