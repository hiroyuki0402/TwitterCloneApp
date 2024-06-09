//
//  FollowView.swift
//  TwitterCloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2024/06/08.
//

import SwiftUI

struct FollowView: View {
    // MARK: - プロパティー
    var whoToFollowData: WhoToFollowDatas
    
    // MARK: - ボディー
    var body: some View {
        LazyVStack {
            ForEach(whoToFollowData, id: \.self) { data in
                WhoToFolloewView(whoToFollowData: data)
            }
        }
    }
}

#Preview {
    FollowView(whoToFollowData: TestData.whoToFollowTestDatas())
}
