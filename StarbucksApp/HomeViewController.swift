//
//  ViewController.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import UIKit

class HomeViewController: StarBucksViewController {
    
    override func commonInit() {
        setTabBarItem(imageName: Images.homeTabBarImageName,
                      title: String(localizedKey: LocalizedKeys.homeTitleKey))
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = String(localizedKey: LocalizedKeys.homeTitleKey)
    }


}


