//
//  AppDelegate.swift
//  Professional Alarm
//
//  Created by Ermal Bujupaj on 22.04.24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let viewController = RootViewController()
        window?.rootViewController = viewController
        
        return true
    }
}
