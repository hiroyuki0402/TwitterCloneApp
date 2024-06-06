//
//  WhoToFolloewView.swift
//  TwitterCloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2024/06/04.
//

import SwiftUI

struct WhoToFolloewView: View {
    let whoToFollowData: WhoToFollowData
    
    var body: some View {
        HStack(alignment: .top) {
            userImage()
            VStack(alignment: .leading) {
                nameArea()
                messageArea()
            }
        }
        .padding(.vertical)
        .padding(.horizontal)
    }
    
    
    private func messageArea() -> some View {
        Text(whoToFollowData.message)
    }
    
    private func nameArea() -> some View {
        HStack {
            userInfo()
            Spacer()
            follwButton()
        }

    }
    
    
    private func userInfo() -> some View {
        VStack {
            Text(whoToFollowData.nickName)
                .font(.subheadline)
                .fontWeight(.bold)
            Text(whoToFollowData.userID)
        }
    }
    
    private func follwButton() -> some View {
        Button {
            
        } label: {
            Text("フォローする")
                .font(.subheadline)
                .bold()
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(.black)
                .clipShape(.capsule)
        }
    }
    
    private func userImage() -> some View {
        let url = URL(string: whoToFollowData.imageUrl) ?? URL(string: "")
        return AsyncImage(url: url) { imagePhase in
            if let image = imagePhase.image {
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            }
            

        }
            
    }
}

#Preview {
    WhoToFolloewView(whoToFollowData: TestData.whoToFollowTestData())
        .background(.blue)
}
