//
//  CardView.swift
//  CRYPTOSAI
//
//  Created by DM on 3/16/25.
//


// UtilityViews.swift
import SwiftUI

struct CardView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(UIColor.secondarySystemBackground))
            .shadow(radius: 5)
            .overlay(content)
            .padding()
    }
}

struct WatchlistRow: View {
    var coin: String
    var body: some View {
        HStack {
            Text(coin)
            Spacer()
        }
        .padding()
    }
}

struct TrendingCard: View {
    var coin: String
    var body: some View {
        CardView {
            Text("Trending: \(coin)")
                .font(.headline)
        }
    }
}

struct ChatBubble: View {
    var message: ChatMessage
    var body: some View {
        HStack {
            if message.sender == "ai" { Spacer() }
            Text(message.text)
                .padding()
                .background(message.sender == "ai" ? Color.blue.opacity(0.2) : Color.gray.opacity(0.2))
                .cornerRadius(10)
            if message.sender == "user" { Spacer() }
        }
        .padding(message.sender == "ai" ? .leading : .trailing)
    }
}
