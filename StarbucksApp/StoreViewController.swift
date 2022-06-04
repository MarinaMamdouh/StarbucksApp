//
//  StoreViewController.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import UIKit

class StoreViewController: StarBucksViewController {
    
    override func commonInit() {
        setTabBarItem(imageName: Images.storeTabBarImageName,
                      title: String(localizedKey: LocalizedKeys.storeTitleKey))
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = String(localizedKey: LocalizedKeys.storeTitleKey)
    }


}
