//
//  AuthService.swift
//  Smack
//
//  Created by Jenifer on 1/2/19.
//  Copyright © 2019 Jenifer. All rights reserved.
//

import Foundation
import Alamofire

class AuthService {
    
    static let instance = AuthService()
    
    let defaults = UserDefaults.standard
    
    var isLoggedIn : Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey : LOGGED_IN_KEY)
        }
    }
    var authToken: String {
        get {
            return defaults.value(forKey: TOKEN_KEY) as! String
        }
        set {
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
    }
    var userEmail: String {
        get {
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        set {
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    func registrerUser(email: String , password: String, completion:@escaping CompletionHandler){
        
        let lowerCaseEmail = email.lowercased()
        
        let header = ["Content-type":"application/json; charset=utf-8"]

        let body: [String: Any] = [
            "email":lowerCaseEmail,
            "password":password]
        let url = URL_REGISTER
        Alamofire.request(url, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header) .responseString{ (response) in
                let status = response.response?.statusCode
                    switch status {
                    case 200:
                        completion(true)
                    default:
                        completion(false)
                        debugPrint(response.result.error as Any)
                    }
                            
        }

    }
}

