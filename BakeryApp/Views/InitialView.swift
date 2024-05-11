//
//  InitialView.swift
//  BakeryApp
//
//  Created by Yeison Henao on 11/01/24.
//

import SwiftUI


/// Vista inicial de la aplicación en la cual se espera que el usuario ingrese a la vista Home
struct InitialView: View {
    
    @StateObject var viewModel = InitialViewViewModel()

    var body: some View {
        
        if (viewModel.isInHome){
            HomeView(viewModel: HomeViewModel())
        }else{
            initial
        }
    }
    
    @ViewBuilder
    var initial: some View {
        VStack{
            HeaderComponent(title: Strings.titleApp, background: Color.fromHex(Colors.HeaderbackgroundColor), titleColor: Color.fromHex(Colors.tintTitleColor))
            
            Text(Strings.descriptionLabel)
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
                Button(Strings.enter, action: viewModel.userGoToHome)
                    .foregroundColor(.white)
                    .padding(15)
                    .background(Color.fromHex(Colors.secondaryBackgroundColor))
                    .cornerRadius(4)
            }
            .padding(50)
            
        }
        .background(Color.fromHex(Colors.backgroundColorApplication))
    }
}

#Preview {
    InitialView()
}
