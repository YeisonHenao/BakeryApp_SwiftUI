//
//  HomeViewModel.swift
//  BakeryApp
//
//  Created by desarrollador3 on 4/05/24.
//

import Foundation

class HomeViewModel: ObservableObject, HomeViewModelProtocol {
    @Published var search_text: String = ""
    @Published var products : [ProductModel] = []
    
    
    func createInfo(){
        let product1 = ProductModel(id: 1, image: "cake", title: "Pastel de cereza", description: "Delicioso pastel de cereza", price: 10.99)
        let product2 = ProductModel(id: 2, image: "buñuelos", title: "Buñuelos", description: "Deliciosos buñuelos", price: 7.6)
        let product3 = ProductModel(id: 3, image: "cake2", title: "Pastel de chocolate", description: "Delicioso pastel de chocolate", price: 11.99)
        let product4 = ProductModel(id: 4, image: "croissant", title: "Croissant", description: "Delicioso Croissant", price: 3.99)
        
        products.append(product1)
        products.append(product2)
        products.append(product3)
        products.append(product4)
    }
    
    func sayHi(){
        print("Hi")
    }
    
    
    
    
}
