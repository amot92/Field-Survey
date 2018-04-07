//
//  FieldObservationTableViewCell.swift
//  Field Survey
//
//  Created by Adam Oakes on 4/6/18.
//  Copyright © 2018 Adam Oakes. All rights reserved.
//

import UIKit

class FieldObservationTableViewCell: UITableViewCell {

    @IBOutlet weak var fieldObservationIconImageView: UIImageView!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
