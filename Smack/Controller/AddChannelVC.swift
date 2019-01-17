//
//  AddChannelVC.swift
//  Smack
//
//  Created by Jenifer on 1/17/19.
//  Copyright © 2019 Jenifer. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    //Outlets
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var chanDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    @IBAction func createChannelPressed(_ sender: Any) {
        guard let channelName = nameTxt.text , nameTxt.text != "" else { return }
        guard let channelDesc = chanDesc.text else { return }
        SocketService.instance.addChannel(name: channelName, description: channelDesc) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
        
    }
    @IBAction func closeeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedString.Key.foregroundColor : smackPurplePlaceHolder])
        chanDesc.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedString.Key.foregroundColor : smackPurplePlaceHolder])
        
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
