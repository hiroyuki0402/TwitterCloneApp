//
//  TestData.swift
//  TwitterCloneApp
//
//  Created by SHIRAISHI HIROYUKI on 2024/06/06.
//

import Foundation

class TestData {
    class func whoToFollowTestData() -> WhoToFollowData {
        return .init(
            userID: "@TestID",
            nickName: "TestUser",
            message: "messagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessagemessage",
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSei1q6rbNdGI9ZPeD88-DKm9gskfjy8NTMQ&s")
    }
    
    class func whoToFollowTestDatas() -> [WhoToFollowData] {
        return [
            .init(userID: "@TestID1", nickName: "TestUser1", message: "messagemessagemessagemessagemessageme", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSei1q6rbNdGI9ZPeD88-DKm9gskfjy8NTMQ&s"),
            
            .init(userID: "@TestID2", nickName: "TestUser2", message: "messagemessagemessagemessagemessageme", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXqX623Zb0PiKc3A6JhYymUtplpcEsag19rw&s"),
            
            .init(userID: "@TestID3", nickName: "TestUser3", message: "messagemessagemessagemessagemessageme", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjoHhFocjE5qVxzufMAgwdVkY3x34Mc-bUUw&s"),
            
            .init(userID: "@TestID4", nickName: "TestUser4", message: "messagemessagemessagemessagemessageme", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr4Fo2rTO4AovAp8Qpz4bg9p_UkHTmEkNXIQ&s"),
            
            .init(userID: "@TestID5", nickName: "TestUser5", message: "messagemessagemessagemessagemessageme", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtkzZMTh_n9DE3CznuCnA8wVdQI7IQT9sDng&s")
        ]
    }
}
