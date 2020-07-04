//
//  LaunchScreenViewController.swift
//  PartOne
//
//  Created by Sergey Deryabin on 17.06.2020.
//  Copyright © 2020 Sergey Deryabin. All rights reserved.
//

import UIKit

final class LaunchScreenViewController: UIViewController {
  
  @IBOutlet weak private var activityIndicator: UIActivityIndicatorView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupActivityIndicator()
    
    Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
  }
  
  private func setupActivityIndicator() {
    animateActivityIndicator()
    setActivityIndicatorSize()
  }
  
  private func animateActivityIndicator() {
    activityIndicator.startAnimating()
  }
  
  private func setActivityIndicatorSize() {
    activityIndicator.scaleIndicator(factor: 1.8)
  }
  
  @objc private func timeToMoveOn() {
    self.performSegue(withIdentifier: "showTabBar", sender: self)
  }
  
}

extension UIActivityIndicatorView {
  func scaleIndicator(factor: CGFloat) {
    guard factor > 0.0 else { return }

    transform = CGAffineTransform(scaleX: factor, y: factor)
  }
}
