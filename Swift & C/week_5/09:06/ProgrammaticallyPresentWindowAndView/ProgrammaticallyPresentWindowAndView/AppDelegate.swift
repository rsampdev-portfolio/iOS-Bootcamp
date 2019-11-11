//
//  AppDelegate.swift
//  ProgrammaticallyPresentWindowAndView
//
//  Created by Rodney Sampson on 9/6/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        
        let vc = ViewController()
        self.window?.rootViewController = vc
        window?.backgroundColor = UIColor.green
        window?.makeKeyAndVisible()
        
        return true
    }
    
}
