//
//  CategoryCell.swift
//  GoodEatins
//
//  Created by Jay Phillips on 9/9/19.
//  Copyright © 2019 Jay Phillips. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryImage.layer.cornerRadius = 10
    }

    func configureCell(category: FoodCategory) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
