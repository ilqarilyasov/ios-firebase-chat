//
//  ChatRoom.swift
//  Firebase Chat
//
//  Created by Ilgar Ilyasov on 10/23/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct ChatRoom {
    
    // MARK: - Properties
    
    let roomID: String
    let roomName: String
    let messages: [String]
//    let messageID: String
//    let messageSender: String
//    let message: String
    
    
    // MARK: - Initializer
    
    init?(roomID: String , chatRoomDict: [String: Any] ) {
        self.roomID = roomID
        guard let roomName = chatRoomDict["roomName"] as? String else { return nil}
        let messages = chatRoomDict["messages"] as? [String] ?? []
        
        self.roomName = roomName
        self.messages = messages
    }
}
