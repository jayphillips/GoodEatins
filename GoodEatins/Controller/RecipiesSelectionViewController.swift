//
//  RecipiesSelectionViewController.swift
//  GoodEatins
//
//  Created by Jay Phillips on 9/9/19.
//  Copyright © 2019 Jay Phillips. All rights reserved.
//

import UIKit

class RecipiesSelectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedCategory: String!
    var recipies: [Recipe]!
    let data = DataSet()
    var recipeToPass: Recipe!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        recipies = data.getRecipes(forCategoryTitle: selectedCategory)

    }
    
}

extension RecipiesSelectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as? RecipeCell {
            let recipie = recipies[indexPath.item]
            cell.configureCell(recipe: recipie)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let cellDimension = (width / 2) - 15
        return CGSize(width: cellDimension, height: cellDimension)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        recipeToPass = recipies[indexPath.item]
        performSegue(withIdentifier: "toRecipeSelection", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsViewController = segue.destination as? RecipeDetailViewController {
            detailsViewController.selectedRecipe = recipeToPass
        }
    }
}
