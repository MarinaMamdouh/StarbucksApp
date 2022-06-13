//
//  ViewController.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import UIKit

class HomeViewController: StarBucksViewController {
    var headerView = HomeHeaderView()
    var stackView = UIStackView()
    var tableView =  UITableView()
    var userName = "Marinaaaa<3"
    var cellId = "homeCell"
    let titles:[String] = [
        "Title1",
        "Title2",
        "Title3"
    ]
    
    override func commonInit() {
        setTabBarItem(imageName: Images.homeTabBarImageName,
                      title: String(localizedKey: LocalizedKeys.homeTitleKey))
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        style()
        layout()
    }
}

///// Auto Layout Methods

extension HomeViewController{
    
    func style(){
        headerView.setUser(name: userName)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = .cyan
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func layout(){
        self.view.addSubview(headerView)
        self.view.addSubview(tableView)
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
}

//// Table View Delegate Methods

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func setupTableView(){
        tableView.delegate =  self
        tableView.dataSource =  self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.tableFooterView =  UIView()
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = titles[indexPath.row]
        cell.contentConfiguration =  content
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    
}


