//
//  POITableViewCell.swift
//  com.jcadrg.BlocSpot2
//
//  Created by Juanca on 3/27/18.
//  Copyright © 2018 Juanca. All rights reserved.
//

import UIKit

class POITableViewCell: UITableViewCell {

    @IBOutlet weak var POITitle: UILabel!
    @IBOutlet weak var POIIcon: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.accessoryType = .disclosureIndicator
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
