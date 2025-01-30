//
//  Product.swift
//  TechTaste
//
//  Created by Igor Sthaynny 29/01/25.
//

import Foundation

struct Product: Decodable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    let category: Category
    
    var formattedPrice: String {
        return "R$ " + price.formatPrice()
    }
}
