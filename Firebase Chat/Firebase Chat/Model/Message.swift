//
//  Message.swift
//  Firebase Chat
//
//  Created by Ilgar Ilyasov on 10/23/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Message: Codable, Equatable {
    
    let messageID: String
    let messageSender: String
    let message: String
    
    init(messageID: String = UUID().uuidString, messageSender: String, message: String) {
        self.messageID = messageID
        self.messageSender = messageSender
        self.message = message
    }
    
}
