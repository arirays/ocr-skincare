//
//  ContentView.swift
//  SkinIn
//
//  Created by Ari on 12/23/21.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
        TabView {
            SkinHomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            IngredientsListView()
                .tabItem {
                    Label("Ingredients", systemImage: "list.bullet.rectangle.portrait")
                }
            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle")
                }
        }
        .accentColor(Color.black)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}


