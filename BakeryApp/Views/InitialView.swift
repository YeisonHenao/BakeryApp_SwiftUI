//
//  InitialView.swift
//  BakeryApp
//
//  Created by Yeison Henao on 11/01/24.
//

import SwiftUI

struct InitialView: View {
    
    @StateObject var viewModel = InitialViewViewModel()
    
    var body: some View {
        VStack{
            HeaderComponent(title: "Bakery Shop 🍞", background: Color.fromHex("#9c634f"), titleColor: Color.fromHex("#eee1ba"))
            
            Text("A delicius taste")
                .foregroundColor(.white)
                .font(.system(size: 40))
                .italic()
                .offset(CGSize(width: 0.0, height: -80.0))
                .shadow(radius: 10)
                
            
            Spacer()

            ImageCollageComponent()
                .offset(CGSize(width: 0, height: -10.0))
            
            Spacer()
            
            VStack{
                Button("Ingresar", action: viewModel.goToHome)
                    .foregroundColor(.white)
                    .padding(20)
                    .background(Color.fromHex("#c37960"))
                    .cornerRadius(4)
            }
            .padding(50)
            
        }
        .background(Color.fromHex("#f0d7a7"))
    }
}

#Preview {
    InitialView()
}
