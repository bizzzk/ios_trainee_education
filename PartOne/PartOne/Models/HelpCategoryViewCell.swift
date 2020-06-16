//
//  HelpCategoryViewCell.swift
//  PartOne
//
//  Created by Sergey Deryabin on 09.06.2020.
//  Copyright © 2020 Sergey Deryabin. All rights reserved.
//

import UIKit

class HelpCategoryViewCell: UICollectionViewCell {
  
  @IBOutlet weak var helpCategoryImage: UIImageView!
  @IBOutlet weak var helpCategoryLabel: UILabel!

  
  func bind(viewModel: CategoryCellViewModel) {
    self.helpCategoryLabel.text = viewModel.text
    self.helpCategoryImage.image = UIImage(named: viewModel.imageURL)
    self.backgroundColor = UIColor(red: 234/255, green: 237/255, blue: 232/255, alpha: 1.0)
  }
}
