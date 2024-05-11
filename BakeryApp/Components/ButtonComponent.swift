//
//  ButtonComponent.swift
//  BakeryApp
//
//  Created by desarrollador3 on 8/05/24.
//

import Foundation
import SwiftUI

struct ButtonComponent: View {
    
    let action: () -> Void
    let isImg: Bool
    let nameImg: String?
    let valueText: String?
    
    init(action: @escaping () -> Void, isImg: Bool, nameImg: String, valueText: String) {
        self.action = action
        self.isImg = isImg
        self.nameImg = nameImg
        self.valueText = valueText
    }
 
    var body: some View {
        Button{
            self.action()
        } label: {
            if isImg{
                Image(systemName: nameImg!)
            }
            Text(valueText!)
        }
        .foregroundColor(.white)
        .padding(10)
        .background(Color.fromHex(Colors.secondaryBackgroundColor))
        .cornerRadius(4)
        
    }
}

#Preview {
    ButtonComponent(action: print("hello"), isImg: true, nameImg: "cart", valueText: "")
}

