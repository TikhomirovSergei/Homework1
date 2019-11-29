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
    
    var body: some View {
        
        TabView(selection: $selection) {
            
            PersonView()
                .tabItem {
                    VStack {
                        Text("Person")
                        Image(systemName: "person")
                    }
                .tag(0)
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
