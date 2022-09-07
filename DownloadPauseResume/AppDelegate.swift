//
//  AppDelegate.swift
//  DownloadPauseResume
//
//  Created by Vipal on 07/09/22.
//

import UIKit

//
// MARK: - App Delegate
//
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  //
  // MARK: - Constants
  //
//  let tintColor =  UIColor(red: 242/255, green: 71/255, blue: 63/255, alpha: 1)
    let tintColor =  UIColor.systemBlue
  //
  // MARK: - Variables And Properties
  //
  var backgroundSessionCompletionHandler: (() -> Void)?
  var window: UIWindow?
  
  //
  // MARK: - Application Delegate
  //
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    customizeAppearance()
    return true
  }
  
  func application(_ application: UIApplication,
                   handleEventsForBackgroundURLSession handleEventsForBackgroundURLSessionidentifier: String,
                   completionHandler: @escaping () -> Void) {
    backgroundSessionCompletionHandler = completionHandler
  }
  
  //
  // MARK - Private Methods
  //
  private func customizeAppearance() {
    window?.tintColor = tintColor
    
    UISearchBar.appearance().barTintColor = tintColor
    
    UINavigationBar.appearance().barTintColor = tintColor
    UINavigationBar.appearance().tintColor = UIColor.white
    
    let titleTextAttributes = [NSAttributedString.Key(rawValue: NSAttributedString.Key.foregroundColor.rawValue) : UIColor.white]
    UINavigationBar.appearance().titleTextAttributes = titleTextAttributes
  }
}

