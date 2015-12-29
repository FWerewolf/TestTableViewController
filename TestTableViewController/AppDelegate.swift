//
//  AppDelegate.swift
//  TestTableViewController
//
//  Created by Markus Schmitt on 29.12.15.
//  Copyright © 2015 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.mainScreen().bounds)

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let mainViewController = MainViewController()
        let mainDataProvider: MainListDataProvider = MainListDataProvider()
        
        mainViewController.dataProvider = mainDataProvider
        mainViewController.title = "Main"
        
        window?.rootViewController = mainViewController
        window?.makeKeyAndVisible()
        
        return true
    }

    
}

