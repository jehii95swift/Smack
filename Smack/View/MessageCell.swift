//
//  MessageCell.swift
//  Smack
//
//  Created by Jenifer on 1/21/19.
//  Copyright © 2019 Jenifer. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    
    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var timeStampLbl: UILabel!
    @IBOutlet weak var messageBodyLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configureCell(message: Message) {
        messageBodyLbl.text = message.messageBody
        userNameLbl.text = message.userName
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
        
    }

}