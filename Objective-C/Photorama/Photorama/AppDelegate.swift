//
//  AppDelegate.swift
//  Photorama
//
//  Created by Rodney Sampson on 10/30/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let navCon = self.window?.rootViewController as! UINavigationController
        let pvc = navCon.topViewController as! PhotosViewController
        pvc.photoStore = PhotoStore()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }

}
