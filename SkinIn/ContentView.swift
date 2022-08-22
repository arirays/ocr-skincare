//
//  ContentView.swift
//  SkinIn
//
//  Created by Ari on 12/23/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            SkinHomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            IngredientsListView()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle.portrait")
                    Text("Ingredients")
                }
            AboutView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("About")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


