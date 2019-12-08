//
//  FirstScreenView.swift
//  Homework1
//
//  Created by Сергей on 29/11/2019.
//  Copyright © 2019 digt. All rights reserved.
//

import SwiftUI

struct StartView: View {
    
    @Binding var selection: Int
    @Binding var selectedIndex: Int?
    
    var body: some View {
        
        VStack {
            Text("Hello, SwiftUI").padding(.vertical, 40)
            
            Button("show next view") {
                self.selection = 1
                self.selectedIndex = 1
            }
        }
    }
}
