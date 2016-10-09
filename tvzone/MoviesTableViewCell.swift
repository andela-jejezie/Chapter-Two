//
//  MoviesTableViewCell.swift
//  tvzone
//
//  Created by Johnson Ejezie on 02/10/2016.
//  Copyright © 2016 johnsonejezie. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cardView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
       self.cardView.backgroundColor = UIColor(red: 251/255.0, green: 250/255.0, blue: 248/255.0, alpha: 1)
        self.cardView.layer.borderWidth = 1
        self.cardView.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.3).cgColor
        self.cardView.layer.cornerRadius = self.frame.size.width * 0.015
        self.cardView.layer.shadowRadius = 3;
        self.cardView.layer.shadowOpacity = 0;
        self.cardView.layer.shadowOffset = CGSize(width: 1, height: 1)
    }
    
}
