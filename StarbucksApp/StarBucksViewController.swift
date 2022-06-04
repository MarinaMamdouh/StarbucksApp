//
//  StarBucksViewController.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import UIKit

class StarBucksViewController: UIViewController{
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit(){
        
    }
    
    func setTabBarItem(imageName:String, title:String){
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem =  UITabBarItem(title: title, image: image, tag: 0)
    }
}
