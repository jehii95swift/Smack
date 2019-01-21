//
//  MessageService.swift
//  Smack
//
//  Created by Jenifer on 1/16/19.
//  Copyright © 2019 Jenifer. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    static let instance = MessageService()
    
    var channels = [Channel]()
    var messages = [Message]()
    var selectedChannel : Channel?
    
    func findAllChannel(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                
                do {
                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
                    completion(true)
                    
                }catch let error {
                    debugPrint(error as Any)
                    completion(false)
                }
                NotificationCenter.default.post(name: NOTIF_CHANNELS_LOADED, object: nil)
                print(self.channels)
                
            }
        }
    }
    func findAllMessageForChannel(channelId: String, completion: @escaping CompletionHandler) {
        Alamofire.request("\(URL_GET_MESSAGES)\(channelId)", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                        
                    do {
                        self.messages = try JSONDecoder().decode([Message].self, from: data)
                        print("asd")
                        
                    }catch let error {
                            debugPrint(error as Any)
                        }
        
                        print(self.messages)
                        
                }
                
                }
             }
    
    func clearMessages() {
        messages.removeAll()
    }
    func clearChannels() {
        channels.removeAll()
    }
    
}
