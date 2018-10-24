//
//  DatabaseService.swift
//  Firebase Chat
//
//  Created by Ilgar Ilyasov on 10/23/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import Firebase

class DatabaseService {
    
    static let shared = DatabaseService()
    private init() {}
    
    // Create a database reference
    let chatRoomReference = Database.database().reference().child("roomName")
    let messagesReference = Database.database().reference().child("messages")
    
    
    
}
