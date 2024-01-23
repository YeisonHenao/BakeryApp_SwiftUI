//
//  InitialView.swift
//  BakeryApp
//
//  Created by Yeison Henao on 11/01/24.
//

import SwiftUI


/// Vista inicial de la aplicación en la cual se espera que el usuario ingrese a la vista Home
struct InitialView: View {
    
    /// Instancia del viewModel
    @StateObject var viewModel = InitialViewViewModel()
    
    /// El body de la vista a mostrar al usuario
    var body: some View {
        
        if (viewModel.isInHome){
            HomeView()
        }else{
            initial
        }
    }
    
    @ViewBuilder
    /// <#Description#>
    var initial: some View {
        VStack{
            HeaderComponent(title: "Bakery Shop 🍞", background: Color.fromHex("#9c634f"), titleColor: Color.fromHex("#eee1ba"))
            
            Text("A delicius taste")
                .foregroundColor(.white)
                .font(.system(size: 40))
                .italic()
                .offset(CGSize(width: 0.0, height: -80.0))
                .shadow(color: Color.black.opacity(0.6), radius: 5, x: 9, y: 9)
            
            Spacer()

            ImageCollageComponent()
                .offset(CGSize(width: 0, height: -10.0))
            
            Spacer()
            
            VStack{
                Button("Ingresar", action: viewModel.userGoToHome)
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
