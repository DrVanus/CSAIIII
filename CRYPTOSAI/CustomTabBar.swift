//
//  CustomTab.swift
//  CRYPTOSAI
//
//  Created by DM on 3/16/25.
//

// CustomTabBar.swift
import SwiftUI

enum CustomTab: String, CaseIterable {
    case home, market, trade, portfolio, ai
}

struct CustomTabBar: View {
    @Binding var selectedTab: CustomTab
    
    var body: some View {
        HStack {
            ForEach(CustomTab.allCases, id: \.self) { tab in
                Button(action: {
                    selectedTab = tab
                }) {
                    VStack(spacing: 4) {
                        // Swap icons to your preference
                        Image(systemName: iconName(for: tab))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 22, height: 22)
                            .foregroundColor(selectedTab == tab ? .blue : .gray)
                    }
                    .padding(.vertical, 8)
                    .frame(maxWidth: .infinity)
                }
            }
        }
        .background(Color(UIColor.systemBackground))
    }
    
    private func iconName(for tab: CustomTab) -> String {
        switch tab {
        case .home: return "house.fill"
        case .market: return "chart.bar.fill"
        case .trade: return "arrow.left.arrow.right"
        case .portfolio: return "chart.pie.fill"
        case .ai: return "brain.head.profile"
        }
    }
}
