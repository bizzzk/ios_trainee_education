//
//  AppDelegate.swift
//  PartOne
//
//  Created by Sergey Deryabin on 25.05.2020.
//  Copyright © 2020 Sergey Deryabin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    UINavigationBar.appearance().barStyle = UIBarStyle.blackTranslucent
    UINavigationBar.appearance().tintColor = .white
    let font = UIFont(name: "OfficinaSansExtraBoldC", size: 21)
    UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.font: font as Any]
    UINavigationBar.appearance().barTintColor = UIColor(red: 102/255, green: 166/255, blue: 54/255, alpha: 1.0)
    UITabBar.appearance().tintColor = UIColor(red: 102/255, green: 166/255, blue: 54/255, alpha: 1.0)
    UITabBar.appearance().barTintColor = UIColor.white
    return true
  }
}
