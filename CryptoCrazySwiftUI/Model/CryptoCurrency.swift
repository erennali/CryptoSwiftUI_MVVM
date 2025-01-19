//
//  CryptoCurrency.swift
//  CryptoCrazySwiftUI
//
//  Created by Eren Ali Koca on 19.01.2025.
//

import Foundation

struct CryptoCurrency :  Hashable , Codable , Identifiable {
    let id = UUID()
    let currency: String
    let price: String
    
    private enum CodingKeys : String , CodingKey {
        case currency = "currency"
        case price = "price"
    }
}
