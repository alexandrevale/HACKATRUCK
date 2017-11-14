//
//  MusicasTableViewCell.swift
//  TopMusicas
//
//  Created by Student on 08/11/17.
//  Copyright © 2017 Alexandre do Vale. All rights reserved.
//

import UIKit

class MusicasTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelMusica: UILabel!
    @IBOutlet weak var labelBanda: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
