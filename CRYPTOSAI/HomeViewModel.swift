//
//  HomeViewModel.swift
//  CRYPTOSAI
//
//  Created by DM on 3/16/25.
//
//
//  HomeViewModel.swift
//  CRYPTOSAI
//
//  Created by DM on 3/16/25.
//

// HomeViewModel.swift
import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var watchlist: [String] = []
    
    func fetchData() {
        // Implement API calls to fetch portfolio data, trending coins, etc.
        // For now, simulate with dummy data:
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.watchlist = ["BTC", "ETH", "SOL"]
        }
    }
}
