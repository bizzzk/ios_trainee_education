//
//  ViewController.swift
//  PartOne
//
//  Created by Sergey Deryabin on 25.05.2020.
//  Copyright © 2020 Sergey Deryabin. All rights reserved.
//

import UIKit
import Alamofire

class HelpViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
  private let reuseIdentifier = "categoryCell"
  private let minimumItemSpacing: CGFloat = 9
  private let sectionInsets = UIEdgeInsets(top: 0.0, left: 9.0, bottom: 0.0, right: 9.0)
  
  var arrayViewModels = [CategoryCellViewModel]()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = "Помочь"
    setupCells()
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      numberOfItemsInSection section: Int) -> Int {
    return arrayViewModels.count
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier,
                                                  for: indexPath) as! HelpCategoryViewCell
    cell.bind(viewModel: arrayViewModels[indexPath.row])
    return cell
  }
}

extension HelpViewController: UICollectionViewDelegateFlowLayout {
  
  func setupCells() {
    arrayViewModels.append(CategoryCellViewModel(text: "Дети", imageURL: "helpcat1"))
    arrayViewModels.append(CategoryCellViewModel(text: "Взрослые", imageURL: "helpcat2"))
    arrayViewModels.append(CategoryCellViewModel(text: "Пожилые", imageURL: "helpcat3"))
    arrayViewModels.append(CategoryCellViewModel(text: "Животные", imageURL: "helpcat4"))
    arrayViewModels.append(CategoryCellViewModel(text: "Мероприятия", imageURL: "helpcat5"))
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: 174, height: 160)
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      insetForSectionAt section: Int) -> UIEdgeInsets {
    return sectionInsets
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return minimumItemSpacing
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return minimumItemSpacing
  }
}
