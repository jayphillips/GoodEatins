//
//  RecipeDetailViewController.swift
//  GoodEatins
//
//  Created by Jay Phillips on 9/10/19.
//  Copyright © 2019 Jay Phillips. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeInstructions: UILabel!
    
    var selectedRecipe: Recipe!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeImage.image = UIImage(named: selectedRecipe.imageName)
        recipeTitle.text = selectedRecipe.title
        recipeInstructions.text = selectedRecipe.instructions

        
    }
    


}
