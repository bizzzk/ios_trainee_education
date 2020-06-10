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
  
  private let arrayOfImages = ["helpcat1", "helpcat2", "helpcat3", "helpcat4", "helpcat5"]
  private let arrayOfLabels = ["Дети", "Взрослые", "Пожилые", "Животные", "Мероприятия"]
  
  func bind(indexPath: IndexPath) {
    self.helpCategoryLabel.text = arrayOfLabels[indexPath.row]
    self.helpCategoryImage.image = UIImage(named: arrayOfImages[indexPath.row])
    self.backgroundColor = UIColor(red: 234/255, green: 237/255, blue: 232/255, alpha: 1.0)
  }
}
