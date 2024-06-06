//
//  HomeView.swift
//  TwitterCloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2024/06/02.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var homeViewModel = HomeViewModel()
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(homeViewModel.whoToFollowData, id: \.self) { data in
                    WhoToFolloewView(whoToFollowData: data)
                }

                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            feddButton(),
            alignment: .bottomTrailing
            
        )
        
    }
    
    private func feddButton() -> some View {
        Button {
            
        } label: {
            Image(systemName: "plus")
                .renderingMode(.template)
                .resizable()
                .foregroundStyle(.black)
                .padding(12)
                .frame(width: 40, height: 40)
                .background(Color.background)
                .clipShape(Circle())
                .padding(.horizontal, 10)
                .padding(.bottom, 50)
        }
    }
}

#Preview {
    HomeView()
}
