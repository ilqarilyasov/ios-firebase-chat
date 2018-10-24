//
//  ChatRoom.swift
//  Firebase Chat
//
//  Created by Ilgar Ilyasov on 10/23/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class ChatRoom: Codable, Equatable {
    
    // MARK: - Properties
    
    let roomID: String
    let roomName: String
    let messages: [Message]
    
    
    // MARK: - Initializer
    
    init(roomID: String = UUID().uuidString, roomName: String, messages: [Message] = []) {
        self.roomID = roomID
        self.roomName = roomName
        self.messages = messages
    }
    
    // MARK: - Decoding
    
//    required init(from decoder: Decoder ) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        
//        let roomID = try container.decode(String.self, forKey: .roomID)
//        let roomName = try container.decode(String.self, forKey: .roomName)
//        
//        let messagesContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .messages)
//        
//    }
    
    
    // MARK: - Equatable
    
    static func == (lhs: ChatRoom, rhs: ChatRoom) -> Bool {
        return lhs.roomID == rhs.roomID &&
            lhs.roomName == rhs.roomName &&
            lhs.messages == rhs.messages
    }
}
