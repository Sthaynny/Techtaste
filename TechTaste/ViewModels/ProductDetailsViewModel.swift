//
//  ProductDetailsViewModel.swift
//  TechTaste
//
//  Created by Igor Sthaynny 29/01/25.
//

import Foundation

class ProductDetailsViewModel {
    var productName: String
    var productDescription: String
    var productFormattedPrice: String
    var productImage: String
    
    init(product: Product) {
        self.productName = product.name
        self.productDescription = product.description
        self.productFormattedPrice = product.formattedPrice
        self.productImage = product.image
    }
}
