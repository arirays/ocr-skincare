//
//  SkinIngredientsView.swift
//  SkinIn
//
//  Created by Ari on 1/11/22.
//

import SwiftUI

struct ScanView: View {
    
    @State private var showScannerSheet = false
    @State private var texts: [ScanData] = []
    var body: some View {
        
        NavigationView {
            VStack {
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
                else {
                    Text("No scan yet").font(.title)
                }
            }
            .navigationTitle("Scan Text")
            .navigationBarItems(trailing:
                Button(action: {
                self.showScannerSheet = true
            }, label: {
                Image(systemName: "doc.text.viewfinder")
                    .font(.title)
            })
                    .sheet(isPresented: $showScannerSheet, content: {
                        
                    })
            )
        }
    }
}

struct SkinIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
