//
//  DescriptionLanguageView.swift
//  Homework1
//
//  Created by Сергей on 30/11/2019.
//  Copyright © 2019 digt. All rights reserved.
//

import SwiftUI

struct DescriptionLanguageView: View {
    
    var desription: String
    
    var body: some View {
        Text(desription)
            .lineLimit(nil)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 40)
    }
}
