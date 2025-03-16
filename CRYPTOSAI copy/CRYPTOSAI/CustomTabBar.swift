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
                    Image(systemName: iconName(for: tab))
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(selectedTab == tab ? .blue : .gray)
                        .padding()
                }
            }
        }
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
    
    private func iconName(for tab: CustomTab) -> String {
        switch tab {
        case .home:
            return "house.fill"
        case .market:
            return "chart.bar.fill"
        case .trade:
            return "arrow.triangle.swap"
        case .portfolio:
            return "wallet.pass.fill"
        case .ai:
            return "brain.head.profile"
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.home))
    }
}
