//
//  Channel.swift
//  Smack
//
//  Created by Jenifer on 1/16/19.
//  Copyright © 2019 Jenifer. All rights reserved.
//

import Foundation

struct Channel : Decodable {
    public private(set) var _id: String
    public private(set) var name: String
    public private(set) var description: String
    public private(set) var __v: Int?
    
    init(channelTitle: String, channelDescription: String, id: String) {
        
        self._id = id
        self.description = channelDescription
        self.name = channelTitle
    }
    
    
    
    
}
