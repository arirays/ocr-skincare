//
//  SkinInHomeView.swift
//  SkinIn
//
//  Created by Ari on 1/11/22.
//

import SwiftUI

struct SkinHomeView: View {
    @State private var showScannerSheet = false
    @State private var texts: [ScanData] = []
//    @State var isPresenting = false
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple, .white]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    Text("Welcome to SkinIn")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    Image(systemName: "arrow.up.heart")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("Check out active ingredients in your skincare routine. Simply scan ingredients on the package!")
                        .font(.title2)
                        .padding()
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
                                })
                    if texts.count > 0{
                        List{
                            ForEach(texts){ text in
                                NavigationLink {
                                    ScrollView{Text(text.content)}
                                } label: {
                                    Text(text.content).lineLimit(1)
                                }
                            }
                        }
                    }
            }
        }
            .navigationTitle("Home")
    }
}
    private func makeScannerView() -> ScannerView {
        ScannerView(completion: {
            textPerPage in
            if let outputText = textPerPage?.joined(separator: "").trimmingCharacters(in: .whitespacesAndNewlines) {
                let newScanData = ScanData(content: outputText)
                self.texts.append(newScanData)
            }
            self.showScannerSheet = false
        })
    }
}

struct SkinInHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SkinHomeView()
    }
}
    
