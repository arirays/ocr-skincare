//
//  TextScannerView.swift
//  SkinIn
//
//  Created by Ari on 8/14/22.
//



import SwiftUI

struct ScanData: Identifiable {
    var id = UUID()
    let content: String
    
    init(content: String) {
        self.content = content
    }
}
