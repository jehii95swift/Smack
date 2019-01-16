//
//  LoginVC.swift
//  Smack
//
//  Created by Jenifer on 12/27/18.
//  Copyright © 2018 Jenifer. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    //Outlets
    
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        spinner.isHidden = false
        spinner.startAnimating()
        
        guard let email = userNameTxt.text , userNameTxt.text != "" else {return}
        guard let pass = passwordTxt.text , passwordTxt.text != "" else {return}
        
        AuthService.instance.loginUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.findUserByEmail(completion: { (success) in
                    if success {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        self.spinner.isHidden = true
                        self.spinner.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                    }
                })
            }
        }
        
    }
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATEACCOUNT, sender: nil)
    }
    func setUpView() {
        spinner.isHidden = true
        userNameTxt.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedString.Key.foregroundColor: smackPurplePlaceHolder])
        passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedString.Key.foregroundColor: smackPurplePlaceHolder])
    }
    
} 
