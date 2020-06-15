//
//  MyTableViewCell.swift
//  DisplayFirebaseData
//
//  Created by mark me on 6/11/20.
//  Copyright © 2020 mark me. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var lastNaneLabel: UILabel!
    @IBOutlet var emailIdLabel: UILabel!
    
    
    var chatModel: ModelFirebase? {
        didSet {
            nameLabel.text = chatModel?.firstName
            nameLabel.text = chatModel?.lastName
            nameLabel.text = chatModel?.emailId
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.layer.cornerRadius = profileImage.bounds.width/2
        
    }
   

}
