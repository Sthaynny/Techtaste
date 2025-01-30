//
//  Double+.swift
//  TechTaste
//
//  Created by Igor Sthaynny 29/01/25.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
