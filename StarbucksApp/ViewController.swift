//
//  ViewController.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: Images.homeTabBarImageName, withConfiguration: configuration)
        tabBarItem =  UITabBarItem(title: String(localizedKey: LocalizedKeys.homeTabBarItemTitle), image: image, tag: 0)
    }


}

