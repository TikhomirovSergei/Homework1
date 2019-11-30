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
    
    @Binding var showFirst: Bool
    
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    if $showFirst.wrappedValue {
                        NavigationLink(destination: DescriptionLanguageView(desription: model.languages.first!.desription), isActive: $showFirst) {
                            Text(model.languages.first!.name)
                        }
                    } else {
                        ForEach(model.languages) { language in
                            NavigationLink(destination: DescriptionLanguageView(desription: language.desription)) {
                                Text(language.name)
                            }
                        } // ForEach
                    }
                } // List
            } // VStack
            .navigationBarHidden(false)
            .navigationBarTitle("Programming languages")
        }
    }
}
