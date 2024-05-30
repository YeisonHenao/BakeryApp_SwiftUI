//
//  ProductRow.swift
//  BakeryApp
//
//  Created by desarrollador3 on 30/05/24.
//

import SwiftUI

struct ProductRow: View {
    
    let product: ProductModel
    
    var body: some View {
        VStack(alignment: .leading){
            if let imageName = product.image {
                HStack(alignment: .center){
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxHeight: 100)
                        .cornerRadius(10)
                }
                .frame(maxWidth: .infinity)
            }
            VStack(alignment: .leading, spacing: 0){
                Text(product.title)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                
                Text(product.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                
                Text("$\(product.price, specifier: "%.2f")")
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
        .padding(.horizontal, 4)
    }
}


#Preview {
    ProductRow(product: ProductModel(id: 1, image: "cake", title: "Pastel de cereza", description: "Delicioso pastel de cereza", price: 10.99))
}
