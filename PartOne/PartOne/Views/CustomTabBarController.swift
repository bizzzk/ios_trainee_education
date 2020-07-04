//
//  TabBarCircleButton.swift
//  PartOne
//
//  Created by Sergey Deryabin on 14.06.2020.
//  Copyright © 2020 Sergey Deryabin. All rights reserved.
//

import UIKit

final class CustomTabBarController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupHelpButton()
  }
  
  private func setupHelpButton() {
    let helpButton = UIButton(frame: CGRect(x: 0, y: 0, width: 54, height: 54))
    
    if view.frame.height >= 800 {
      helpButton.frame.origin.y = view.bounds.height - helpButton.frame.height - 46
    } else {
      helpButton.frame.origin.y = view.bounds.height - helpButton.frame.height - 12
    }
    helpButton.frame.origin.x = view.bounds.width/2 - helpButton.frame.size.width/2
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

