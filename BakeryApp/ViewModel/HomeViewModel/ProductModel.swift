//
//  Product.swift
//  BakeryApp
//
//  Created by desarrollador3 on 4/05/24.
//

import Foundation

struct ProductModel: Codable {
    let id: Int
    let image: String?
    let title: String
    let description: String
    let price: Double
}
