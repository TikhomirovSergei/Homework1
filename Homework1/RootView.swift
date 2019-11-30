//
//  ContentView.swift
//  Homework1
//
//  Created by Сергей on 30/11/2019.
//  Copyright © 2019 digt. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @State private var selection = 0
    @State private var showFirst = false
    
    var body: some View {
        
        TabView(selection: $selection) {
            
            StartView(selection: $selection, showFirst: $showFirst)
                .tabItem {
                    VStack {
                        Text("Start")
                        Image(systemName: "rosette")
                    }
            }
            .tag(0)
            
            ProgrammingLanguagesListView(showFirst: $showFirst)
                .tabItem {
                    VStack {
                        Text("Languages")
                        Image(systemName: "desktopcomputer")
                    }
            }
            .tag(1)
            
            AboutAuthorView()
                .tabItem {
                    VStack {
                        Text("Author")
                        Image(systemName: "person")
                    }
            }
            .tag(2)
        }
    }
}
