//
//  HomeView.swift
//  CRYPTOSAI
//
//  Created by DM on 3/16/25.
//

// HomeView.swift
import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Example: Portfolio summary
                Text("Portfolio Summary")
                    .font(.title)
                    .padding()
                
                // Example: Watchlist
                List(viewModel.watchlist, id: \.self) { coin in
                    Text(coin)
                }
            }
            .navigationTitle("Home")
        }
        .onAppear {
            viewModel.fetchData()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
