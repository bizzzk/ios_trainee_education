//
//  TabBarCircleButton.swift
//  PartOne
//
//  Created by Sergey Deryabin on 14.06.2020.
//  Copyright © 2020 Sergey Deryabin. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupHelpButton()
  }
  
  func setupHelpButton() {
    let helpButton = UIButton(frame: CGRect(x: 0, y: 0, width: 54, height: 54))
    
    var helpButtonFrame = helpButton.frame
    helpButtonFrame.origin.y = view.bounds.height - helpButtonFrame.height - 12
    helpButtonFrame.origin.x = view.bounds.width/2 - helpButtonFrame.size.width/2
    helpButton.frame = helpButtonFrame
    helpButton.layer.borderWidth = 6.0
    helpButton.layer.borderColor = UIColor.white.cgColor
    helpButton.layer.cornerRadius = 27
    helpButton.layer.shadowOffset = CGSize(width: 0, height: -1)
    helpButton.layer.shadowOpacity = 1
    helpButton.layer.shadowRadius = 0.1
    helpButton.layer.shadowColor = UIColor(red: 225/255,
                                           green: 225/255,
                                           blue: 225/255,
                                           alpha: 1.0).cgColor
    
    
    view.addSubview(helpButton)
    
    helpButton.setImage(UIImage(named: "Help"), for: .normal)
    helpButton.addTarget(self, action: #selector(helpButtonAction(sender:)), for: .touchUpInside)
  }
  
  @objc private func helpButtonAction(sender: UIButton) {
    selectedIndex = 2
  }
}

