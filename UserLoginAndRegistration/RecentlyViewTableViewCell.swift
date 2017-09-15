//
//  RecentlyViewTableViewCell.swift
//  UserLoginAndRegistration
//
//  Created by Nikhil Tanappagol on 8/11/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class RecentlyViewTableViewCell: UITableViewCell {

    @IBOutlet var searchName: UILabel!
    @IBOutlet var imageViewCell: UIImageView!
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var carModel: UILabel!
    @IBOutlet var noOfTrrips: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
