//
//  PageTableViewCell.swift
//  DeathNote
//
//  Created by Siva Nadarassin on 27/01/2018.
//  Copyright © 2018 siva Nadarassin. All rights reserved.
//

import UIKit

class PageTableViewCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var deathDate: UILabel!
    
}

