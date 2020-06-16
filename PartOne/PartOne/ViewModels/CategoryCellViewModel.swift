//
//  CategoryCellViewModel.swift
//  PartOne
//
//  Created by Sergey Deryabin on 15.06.2020.
//  Copyright © 2020 Sergey Deryabin. All rights reserved.
//

import UIKit
import Foundation

class CategoryCellViewModel {
  
  var text = ""
  var imageURL = ""
  
  init(text: String, imageURL: String) {
    self.text = text
    self.imageURL = imageURL
  }
}
