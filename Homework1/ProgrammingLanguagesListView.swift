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
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    ForEach(model.languages) { language in
                        NavigationLink(destination: DescriptionLanguageView(desription: language.desription)) {
                            Text(language.name)
                        }
                    } // ForEach
                } // List
            } // VStack
            .navigationBarHidden(false)
            .navigationBarTitle("Programming languages")
        }
        
    }
}

struct ProgrammingLanguagesListView_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammingLanguagesListView()
    }
}
