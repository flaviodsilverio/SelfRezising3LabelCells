//
//  SelfSizingCell.swift
//  SelfSizingTableViewCells
//
//  Created by Flávio Silvério on 17/02/17.
//  Copyright © 2017 Flávio Silvério. All rights reserved.
//

import UIKit

class SelfSizingCell: UITableViewCell {

    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    
    @IBOutlet var Label3ToBottom: NSLayoutConstraint!
    @IBOutlet var Label2ToBottom: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func changeState(){
        Label2ToBottom.isActive = !Label2ToBottom.isActive
        Label3ToBottom.isActive = !Label3ToBottom.isActive
        self.setNeedsLayout()
    }
    
}
