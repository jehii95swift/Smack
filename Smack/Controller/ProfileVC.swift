//
//  ProfileVC.swift
//  Smack
//
//  Created by Jenifer on 1/11/19.
//  Copyright © 2019 Jenifer. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    //outlets
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func logoutPressed(_ sender: Any) {
    }
    @IBAction func closeModalPressed(_ sender: Any) {
    }
    
}
