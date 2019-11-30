//
//  AboutAuthorView.swift
//  Homework1
//
//  Created by Сергей on 30/11/2019.
//  Copyright © 2019 digt. All rights reserved.
//

import SwiftUI
import BetterSheet

struct AboutAuthorView: View {
    
    @State private var showAuthors: Bool = false
    
    var body: some View {
        
        Button(action: {
            self.showAuthors = true
        }) {
            Text("Show author")
        }.betterSheet(isPresented: self.$showAuthors,  onDismiss: { print("Author view dismissed") }) {
            AuthorModalView()
        }
    }
}

struct AboutAuthorView_Previews: PreviewProvider {
    static var previews: some View {
        AboutAuthorView()
    }
}
