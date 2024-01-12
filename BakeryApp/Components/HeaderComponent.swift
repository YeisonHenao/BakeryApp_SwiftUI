//
//  HeaderComponent.swift
//  BakeryApp
//
//  Created by Yeison Henao on 11/01/24.
//

import SwiftUI

struct HeaderComponent: View {
    
    let title: String
    let background: Color
    let titleColor: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerSize: CGSize(width: 60, height: 60))
                .foregroundColor(background)
            VStack{
                Text(title)
                    .foregroundColor(titleColor)
                    .bold()
                    .font(.system(size: 35))
            }
            .padding(.top,60)
        }
        .frame(width: UIScreen.main.bounds.width, height: 220)
        .offset(y: -80)
    }
}

#Preview {
    HeaderComponent(title: "Bienvenido", background: .blue, titleColor: Color.fromHex("#eee1ba"))
}
