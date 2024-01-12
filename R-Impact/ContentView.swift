//
//  ContentView.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/10/23.
//

import SwiftUI

struct ContentView: View {
    
//    @State var showLoginView: Bool = false
    @State private var tabSelection: Int = 1
    var body: some View {
        TabView(selection: $tabSelection){
            homePage()
                .tabItem{
                }.tag(1)
            forumPage()
                .tabItem{
                }.tag(2)
            profilePage()
                .tabItem{
                }.tag(3)
        }.overlay(alignment: .bottom) {
            CustomTabsApp(Tabselection: $tabSelection)
                .offset(y: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
