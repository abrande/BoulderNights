//
//  TableViewCell.swift
//  BoulderNights
//
//  Created by Ana-Sophia Brande on 2/21/16.
//  Copyright © 2016 T9Hacks. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var EventTitle: UILabel!
    @IBOutlet var Desc: UILabel!
    @IBOutlet var tagline: UILabel!
    @IBOutlet var Date: UILabel!
    @IBOutlet var Time: UILabel!
    
    
    
    func configCell(bar:Bar){
        EventTitle.text = bar.eventName
        Desc.text = bar.description
        tagline.text = bar.overview
        Date.text = bar.date
        Time.text = bar.time
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
