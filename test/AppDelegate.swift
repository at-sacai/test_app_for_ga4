//
//  AppDelegate.swift
//  test
//
//  Created by at-sakai on 2022/01/12.
//

import Foundation
import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?)
    -> Bool {
  
    FirebaseApp.configure()
    return true
  }
}
