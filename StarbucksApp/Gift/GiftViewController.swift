//
//  GiftViewController.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import UIKit
class GiftViewController: StarBucksViewController {
    
    override func commonInit() {
        setTabBarItem(imageName: Images.giftTabBarImageName,
                      title: String(localizedKey: LocalizedKeys.giftTitleKey))
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = String(localizedKey: LocalizedKeys.giftTitleKey)
    }


}
