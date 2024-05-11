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
            
            ScrollView {
                        VStack(alignment: .leading) {
                            ForEach(0..<viewModel.products.count, id: \.self) { index in
                                if index % 2 == 0 {
                                    HStack {
                                        ProductView(product: viewModel.products[index])
                                        if index + 1 < viewModel.products.count {
                                            ProductView(product: viewModel.products[index + 1])
                                        } else {
                                            Spacer()
                                        }
                                    }
                                }
                            }
                        }
                    }
            .padding(.top, -50)
                }
        .background(Color.fromHex(Colors.backgroundColorApplication))
        }
    
    struct ProductView: View {
        let product: ProductModel
        
        var body: some View {
            VStack(alignment: .leading) {
                if let imageName = product.image{
                                Image(imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 150, height: 150)
                                    .cornerRadius(10)
                            }
                Text(product.title)
                Text(product.description)
                    .foregroundColor(.secondary)
                Text("$\(product.price, specifier: "%.2f")")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            .frame(maxWidth: .infinity)
            .border(Color.fromHex(Colors.secondaryBackgroundColor))
            .cornerRadius(10)
            .padding(.horizontal, 4)
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
