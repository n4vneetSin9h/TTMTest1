//
//  FeedsTableViewCell.swift
//  TTMTest1
//
//  Created by Navneet Singh on 15/10/17.
//  Copyright © 2017 Navneet Singh. All rights reserved.
//

import UIKit

class FeedsTableViewCell: UITableViewCell {
    
    var expand: Bool = false
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var twitterHandle: UILabel!
    @IBOutlet weak var feedContent: UITextView!
    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var seeMoreLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    //MARK:- Custom Functions
}
