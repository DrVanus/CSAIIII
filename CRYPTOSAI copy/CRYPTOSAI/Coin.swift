//
//  Coin.swift
//  CRYPTOSAI
//
//  Created by DM on 3/16/25.
//


// Models.swift
import Foundation

struct Coin: Identifiable {
    var id: String
    var name: String
    var price: Double
}

struct Holding: Identifiable {
    var id = UUID()
    var coin: Coin
    var amount: Double
}

struct ChatMessage: Identifiable {
    var id: String
    var sender: String // "user" or "ai"
    var text: String
}