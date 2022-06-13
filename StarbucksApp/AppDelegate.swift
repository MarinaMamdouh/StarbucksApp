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
        // Create our main ViewControllers with their own navigationControllers
        let home =  HomeViewController()
        let scan = UINavigationController(rootViewController: ScanViewController())
        let order = UINavigationController(rootViewController: OrderViewController())
        let gift = UINavigationController(rootViewController: GiftViewController())
        let store = UINavigationController(rootViewController: StoreViewController())
        // create our main Tab bar controller and set it as our app root view controller
        let tabBarController =  UITabBarController()
        tabBarController.viewControllers = [home, scan, order, gift, store]
        window?.rootViewController = tabBarController
        
        return true
    }


}

