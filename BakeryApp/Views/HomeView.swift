//
//  HomeView.swift
//  BakeryApp
//
//  Created by Yeison Henao on 11/01/24.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel : HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        viewModel.createInfo()
    }
    
    var body: some View {
        VStack{
            HeaderComponent(title: Strings.titleApp, background: Color.fromHex(Colors.HeaderbackgroundColor), titleColor: Color.fromHex(Colors.tintTitleColor))
            
            HStack{
                Button {
                    viewModel.goToCartDetail()
                } label: {
                    Image(systemName: SystemNameImage.cart)
                }
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.fromHex(Colors.secondaryBackgroundColor))
                    .cornerRadius(4)
                    .alert(isPresented: $viewModel.showAlert, content: {
                        Alert(title: Text("Alerta").font(.title), message: Text("No tienes productos agregados al carrito"),dismissButton: .default(Text("OK")) )
                    })
                Button(Strings.placeholder_button_search, action: viewModel.showSearch)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.fromHex(Colors.secondaryBackgroundColor))
                    .cornerRadius(4)
            }.padding(.top, -110)
            
            ProductList(data: $viewModel.products)
            
                }
        .background(Color.fromHex(Colors.backgroundColorApplication))
        }

}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
