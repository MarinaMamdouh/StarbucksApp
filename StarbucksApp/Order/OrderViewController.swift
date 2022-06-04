//
//  OrderViewController.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import Foundation
class OrderViewController: StarBucksViewController {
    
    override func commonInit() {
        setTabBarItem(imageName: Images.orderTabBarImageName,
                      title: String(localizedKey: LocalizedKeys.orderTitleKey))
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = String(localizedKey: LocalizedKeys.orderTitleKey)
    }


}
