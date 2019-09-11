//
//  RecipeCell.swift
//  GoodEatins
//
//  Created by Jay Phillips on 9/10/19.
//  Copyright © 2019 Jay Phillips. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    @IBOutlet weak var recipeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        recipeImage.layer.cornerRadius = 10
    }
    
    func configureCell(recipe: Recipe) {
        recipeImage.image = UIImage(named: recipe.imageName)
    }
    
}
