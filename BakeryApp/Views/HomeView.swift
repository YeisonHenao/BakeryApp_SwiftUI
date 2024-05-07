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
            HeaderComponent(title: Strings.titleApp, background: Color.fromHex("#9c634f"), titleColor: Color.fromHex("#eee1ba"))
            
            HStack{
                Button {
                    viewModel.sayHi()
                } label: {
                    Image(systemName: "cart")
                }
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.fromHex("#c37960"))
                    .cornerRadius(4)
                Button(Strings.placeholder_button_search, action: viewModel.showSearch)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.fromHex("#c37960"))
                    .cornerRadius(4)
            }.padding(.top, -60)
            
            if viewModel.show_InputSearch {
                HStack{
                    TextField(Strings.placeholder_search, text: $viewModel.search_text)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                        .padding()
                    Image(systemName: "magnifyingglass.circle")
                        .imageScale(.large)
                        .padding(.trailing,10)
                }
                .padding(.bottom, 10)
            }
            
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
                        .padding()
                    }
            .padding(.top,-20)
                }
        }
    
    struct ProductView: View {
        let product: ProductModel
        
        var body: some View {
            VStack(alignment: .leading) {
                if let imageName = product.image{
                                Image(imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(maxHeight: 100)
                                    .cornerRadius(10)
                            }
                Text(product.title)
                    .font(.title)
                Text(product.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                Text("$\(product.price, specifier: "%.2f")")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
            .padding(.horizontal, 4)
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
