//
//  Message.swift
//  Smack
//
//  Created by Jenifer on 1/18/19.
//  Copyright © 2019 Jenifer. All rights reserved.
//

import Foundation

struct Message : Decodable {
    public private(set) var messageBody: String
    public private(set) var userName: String
    public private(set) var channelId: String
    public private(set) var userAvatar: String
    public private(set) var userAvatarColor: String
    public private(set) var _id: String
    public private(set) var timeStamp: String
    public private(set) var __v: Int!
    
    init(messageBody: String, channelId: String, id: String,userName: String,userAvatar:String,userAvatarColor:String, _id: String, timeStamp:String) {
        
        self.messageBody = messageBody
        self.userName = userName
        self.channelId = channelId
        self.userAvatar = userAvatar
        self.userAvatarColor = userAvatarColor
        self._id = id
        self.timeStamp = timeStamp
        }
}
