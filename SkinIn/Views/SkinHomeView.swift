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
    
    @State var animate: Bool = false
    let secondaryAccentColor = Color("secondaryAccentColor")
    
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
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)
                    Button(action: {
                        self.showScannerSheet = true
                    }, label: {
                        Label("SCAN INGREDIENTS", systemImage: "doc.text.viewfinder")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 50)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .background(animate ? secondaryAccentColor : Color.accentColor)
                            .cornerRadius(10)
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
                    .shadow(
                        color: animate ? secondaryAccentColor.opacity(0.7) : Color.accentColor.opacity(0.7),
                        radius: animate ? 30 : 10,
                        y: animate ? 50 : 30
                    )
                    .scaleEffect(animate ? 1.1 : 1.0)
                    .offset(y: animate ? -7 : 0)
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
                .onAppear(perform: addAnimation)
            }
        }
    }
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
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
    
