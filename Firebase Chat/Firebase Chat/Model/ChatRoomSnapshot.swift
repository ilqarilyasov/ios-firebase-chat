//
//  ChatRoomSnapshot.swift
//  Firebase Chat
//
//  Created by Ilgar Ilyasov on 10/23/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import Firebase

struct ChatRoomSnapshot {
    
    let chatRooms: [ChatRoom]
    
    init?(with snapshot: DataSnapshot){
        var chatRooms = [ChatRoom]()
        guard let snapDict = snapshot.value as? [String: [String: Any]] else { return nil }
        
        for snap in snapDict {
            guard let chatRoom = ChatRoom(roomID: snap.key, chatRoomDict: snap.value) else { continue }
            chatRooms.append(chatRoom)
        }
        
        self.chatRooms = chatRooms
    }
}
