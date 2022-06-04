//
//  AppDelegate.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // set our main window
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        // create our main Tab bar controller and set it as our app root view controller
        let tabBarController =  UITabBarController()
        tabBarController.viewControllers = [HomeViewController(), ScanViewController(), OrderViewController(), GiftViewController()]
        window?.rootViewController = tabBarController
        
        return true
    }

}

