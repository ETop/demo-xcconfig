//
//  AppDelegate.swift
//  DemoXCConfig
//
//  Created by Tomasz Szulc on 14/11/15.
//  Copyright © 2015 Tomasz Szulc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

if let dictionary = NSBundle.mainBundle().infoDictionary {
    let appName = dictionary["APP_NAME"] as! String
    let appVersion = dictionary["APP_VERSION"] as! String
    let appBuildVersion = dictionary["APP_BUILD_VERSION"] as! String
    print("\(appName) \(appVersion) (\(appBuildVersion))")

    let backend = (dictionary["BACKEND_URL"] as! String).stringByReplacingOccurrencesOfString("\\", withString: "")
    print("backend: \(backend)")
}
        
        return true
    }
}

