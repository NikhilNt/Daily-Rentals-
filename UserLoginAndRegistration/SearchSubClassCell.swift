//
//  SearchSubClassCell.swift
//  UserLoginAndRegistration
//
//  Created by Nikhil Tanappagol on 8/11/17.
//  Copyright © 2017 Nikhil Tanappagol. All rights reserved.
//

import UIKit

class SearchSubClassCell: UITableViewCell {
    
    
    
    @IBOutlet var searchListLabel: UILabel!
    @IBOutlet var searchListImage: UIImageView!
    @IBOutlet var pageController: UIPageControl!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
                // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
