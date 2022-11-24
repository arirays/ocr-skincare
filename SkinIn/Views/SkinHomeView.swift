//
//  SkinInHomeView.swift
//  SkinIn
//
//  Created by Ari on 1/11/22.
//

import SwiftUI

struct SkinHomeView: View {
    
    @State var showScanResult = false
    @State var showScannerSheet = false
    @State var texts: [ScanData] = []
    
    let backgroundGradient = LinearGradient(gradient: Gradient(colors: [Color("brandPrimary"),Color("pages")]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
 
    var body: some View {
        NavigationView {
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                VStack {
                    Image("holdingPhone")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350, height: 350)
                    Text("Check out active ingredients in your skincare routine. \n Simply scan ingredients on the package!")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding()
                        .multilineTextAlignment(.center)
                    Button(action: {
                        self.showScannerSheet = true
                        }, label: {
                            Label("SCAN INGREDIENTS", systemImage: "doc.text.viewfinder")
                                    .frame(width: 280, height: 50)
                                    .background(.white)
                                    .font(.system(size: 20, weight: .bold, design: .default))
                                    .cornerRadius(10)
                                    .foregroundColor(.black)
                        })
                            .sheet(isPresented: $showScannerSheet, content: {
                                makeScannerView()
                                    .toolbar {
                                        ToolbarItem(placement: .cancellationAction) {
                                            Button("Cancel") {
                                                self.showScannerSheet = false
                                            }
                                        }
                                    }
                                })
                    Spacer()
                    if texts.count > 0 {
                        NavigationLink( isActive: self.$showScanResult) {
                            ScanResults(ingredients: findIngredients(ingredients: texts.last?.content ?? []))
                        } label: {
                            EmptyView()
                        }
            }
        }
            .navigationTitle("Home")
    }
}
}
    
    
    func makeScannerView() -> ScannerView {
        ScannerView(completion: {
            textPerPage in
            if let outputText = textPerPage?.joined(separator: "")
                .lowercased()
                .trimmingCharacters(in: .whitespacesAndNewlines)
                .replacingOccurrences(of: "-\n", with: "")
                .split(separator: ",")
                .map({ line in
                    String(line)
                        .trimmingCharacters(in: .whitespacesAndNewlines)
                        .replacingOccurrences(of: "\n", with: " ")
                })
            {
                let newScanData = ScanData(content: outputText)
                self.texts.append(newScanData)
            }
            self.showScannerSheet = false
            self.showScanResult = true
        })
    }
    
    
}

struct SkinInHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SkinHomeView()
    }
}
    
