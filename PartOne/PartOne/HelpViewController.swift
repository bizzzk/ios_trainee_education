//
//  ViewController.swift
//  PartOne
//
//  Created by Sergey Deryabin on 25.05.2020.
//  Copyright © 2020 Sergey Deryabin. All rights reserved.
//

import UIKit
import Alamofire

class HelpViewController: UIViewController, UICollectionViewDataSourcePrefetching, UICollectionViewDataSource {
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    navigationController?.navigationBar.frame.size.height = 0
    navigationItem.title = "Помочь"
  }
  
  func collectionView(_ collectionView: UICollectionView, prefetchItemsAt indexPaths: [IndexPath]) {
    return
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath)
    return cell
  }
  
}

