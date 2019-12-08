//
//  ProgrammingLanguagesListView.swift
//  Homework1
//
//  Created by Сергей on 29/11/2019.
//  Copyright © 2019 digt. All rights reserved.
//

import SwiftUI

struct ProgrammingLanguagesListView: View {
    
    @ObservedObject var model = ProgrammingLanguagesModel()
    
    @Binding var selectedIndex: Int?
    
    var body: some View {
        
        NavigationView {
            VStack {
                List (model.languages.indices) { index in
                    NavigationLink(destination: DescriptionLanguageView(desription: self.model.languages[index].desription), tag: index, selection: self.$selectedIndex) {
                        Text(self.model.languages[index].name)
                    }
                }
            } // VStack
            .navigationBarHidden(false)
            .navigationBarTitle("Programming languages")
        }
    }
}
