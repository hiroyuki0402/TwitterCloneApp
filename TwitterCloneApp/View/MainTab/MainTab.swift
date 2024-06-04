//
//  MainTab.swift
//  TwitterCloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2024/06/02.
//

import SwiftUI

struct MainTab: View {
    // MARK: - プロパティー
    /// 選択したタブ
    @State private var selectedTab: TabItem = .home
    
    // MARK: - ライフサイクル
    var body: some View {
        VStack {
            /// タブの遷移先
            contentView(for: selectedTab)
            
            Spacer()
            
            /// タブの構築
            confugureTab()
        }
        .ignoresSafeArea(edges: .bottom)
    }
    
    // MARK: - メソッド
    
    /// タブの遷移先
    @ViewBuilder
    private func contentView(for tab: TabItem) -> some View {
        switch tab {
        case .home:
            HomeView()
        case .serarch:
            SerarchView()
        case .grok:
            GrokView()
        case .community:
            CommunityView()
        case .notification:
            NotificationView()
        case .message:
            MessageView()
        }
    }
    
    /// タブの構築
    private func confugureTab() -> some View {
        HStack {
            ForEach(TabItem.allCases, id: \.self) { item in
                Button(action: {
                    selectedTab = item
                }) {
                    VStack {
                        item.icon(selectedTab: selectedTab)
                            .font(.system(size: 20))
                        Spacer()
                    }
                }
                .foregroundColor(selectedTab == item ? .white : .white)
                .frame(maxWidth: .infinity)
                .frame(height: 60)
            }
        }
        .padding()
        .background(Material.ultraThin)
        .background(.black.opacity(0.5))
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

enum TabItem: CaseIterable {
    case home
    case serarch
    case grok
    case community
    case notification
    case message
    
    func icon(selectedTab: TabItem) -> Image {
        switch self {
        case .home:
            return Image(systemName: selectedTab == .home ? "house.fill": "house")
        case .serarch:
            return Image(systemName: selectedTab == .serarch ? "magnifyingglass": "magnifyingglass")
        case .grok:
            return Image(systemName: selectedTab == .grok ? "square.split.diagonal.fill": "square.split.diagonal")
        case .community:
            return Image(systemName: selectedTab == .community ? "person.2.fill": "person.2")
        case .notification:
            return Image(systemName: selectedTab == .notification ? "bell.fill": "bell")
        case .message:
            return Image(systemName: selectedTab == .message ? "envelope.fill": "envelope")
        }
    }
}

#Preview {
    MainTab()
}
