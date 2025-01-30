//
//  Category.swift
//  TechTaste
//
//  Created by Igor Sthaynny 29/01/25.
//

import Foundation

enum Category: String, Decodable {
    case snack
    case main
    case pasta
    case dessert
    case drink
    
    var title: String {
        switch self {
        case .snack:
            return "Aperitivos"
        case .main:
            return "Principais"
        case .pasta:
            return "Massas"
        case .dessert:
            return "Sobremesas"
        case .drink:
            return "Bebidas"
        }
    }
}
