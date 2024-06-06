//
//  HomeViewModel.swift
//  TwitterCloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2024/06/06.
//

import Foundation
import MyLibrary

class HomeViewModel: ObservableObject {
    @Published var whoToFollowData: WhoToFollowDatas = []
    private let url = URL(string: "")
    
    init() {
        debugTestDatas()
    }
    
    private func callAPI() {
        Task {
            do {
                whoToFollowData = try await MyLibrary.APIManager.shared.callAPI(url: url, method: .get, type: WhoToFollowDatas.self) ?? []
            } catch {
                whoToFollowData = []
            }
        }
    }
    
    private func debugTestDatas() {
        whoToFollowData = TestData.whoToFollowTestDatas()
    }
}
