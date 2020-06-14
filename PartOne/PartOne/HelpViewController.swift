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
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = "Помочь"
  }
  
  
  func collectionView(_ collectionView: UICollectionView,
                      numberOfItemsInSection section: Int) -> Int {
    return 5
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier,
                                                  for: indexPath) as! HelpCategoryViewCell
    cell.bind(indexPath: indexPath)
    return cell
  }
  
}

extension HelpViewController: UICollectionViewDelegateFlowLayout {
  
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
