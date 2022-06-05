//
//  ViewController.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import UIKit

class HomeViewController: StarBucksViewController {
    var headerView:HomeHeaderView!
    var userName = "Marinaaaaa"
    
    override func commonInit() {
        setTabBarItem(imageName: Images.homeTabBarImageName,
                      title: String(localizedKey: LocalizedKeys.homeTitleKey))
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = String(localizedKey: LocalizedKeys.homeTitleKey)
        style()
        layout()
    }
}

extension HomeViewController{
    
    func style(){
        headerView =  HomeHeaderView()
        headerView.setUser(name: userName)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func layout(){
        self.view.addSubview(headerView)
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
    }
    
}


