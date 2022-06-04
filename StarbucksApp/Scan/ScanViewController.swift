//
//  ScanViewController.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import Foundation
class ScanViewController: StarBucksViewController {
    
    override func commonInit() {
        setTabBarItem(imageName: Images.scanTabBarImageName,
                      title: String(localizedKey: LocalizedKeys.scanTitleKey))
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = String(localizedKey: LocalizedKeys.scanTitleKey)
    }


}
