//
//  ProductList.swift
//  BakeryApp
//
//  Created by Yeison Henao on 30/05/24.
//

import SwiftUI

struct ProductList: View {

    @Binding
    var data: [ProductModel]
    
    private let columns = Array(repeating: GridItem(.flexible(), alignment: .center), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 5) {
                ForEach(data) { info in
                    ProductRow(product: info)
                }
            }
        }.padding(.horizontal)
    }
}

#Preview {
    ProductList(data: .constant([
        ProductModel(id: 1, image: "cake", title: "Pastel de cereza", description: "Delicioso pastel de cereza", price: 10.99)
    ]))
}
