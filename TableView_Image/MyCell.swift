//
//  MyCell.swift
//  TableView_Image
//
//  Created by iFlame. on 23/06/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var myimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
