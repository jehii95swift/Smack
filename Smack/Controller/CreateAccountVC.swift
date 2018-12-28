//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Jenifer on 12/28/18.
//  Copyright © 2018 Jenifer. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
