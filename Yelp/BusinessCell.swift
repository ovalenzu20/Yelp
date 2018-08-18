//
//  BusinessCell.swift
//  Yelp
//
//  Created by Omar Valenzuela on 8/17/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var ratingCountLabel: UILabel!
    
    var business : Business! {
        didSet{
            nameLabel.text! = business.name!
            thumbImageView.setImageWith(business.imageURL!)
            categoryLabel.text! = business.categories!
            addressLabel.text! = business.address!
            ratingCountLabel.text! = "\(business.reviewCount!) Reviews"
            ratingImageView.image = business.ratingImage!
            distanceLabel.text! = business.distance!
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
