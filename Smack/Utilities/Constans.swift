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

let BASE_URL = "https://chattychatjb.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

//segues
let TO_LOGIN = "toLogin"
let TO_CREATEACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
