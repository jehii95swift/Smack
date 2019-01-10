//
//  Constans.swift
//  Smack
//
//  Created by Jenifer on 12/27/18.
//  Copyright © 2018 Jenifer. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ x: Bool) -> ()

//url constantes

let BASE_URL = "http://localhost:3005/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

//segues
let TO_LOGIN = "toLogin"
let TO_CREATEACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

// Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
