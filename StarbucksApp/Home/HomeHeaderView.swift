//
//  HomeHeaderView.swift
//  StarbucksApp
//
//  Created by Marina on 05/06/2022.
//

import UIKit

class HomeHeaderView: UIView{
    var greetingLabel = UILabel()
    var inboxButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setStyle()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
}

extension HomeHeaderView{
    
    func setStyle(){
        greetingLabel.translatesAutoresizingMaskIntoConstraints =  false
        setUser(name: "")
        greetingLabel.numberOfLines = 0
        greetingLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        greetingLabel.lineBreakMode = .byWordWrapping
        
        inboxButton.translatesAutoresizingMaskIntoConstraints =  false
        inboxButton.setTitle(String(localizedKey: LocalizedKeys.inboxKey), for: .normal)
        inboxButton.setTitleColor(.label, for: .normal)
        
        
    }
    
    func setLayout(){
        addSubview(greetingLabel)
        addSubview(inboxButton)
        NSLayoutConstraint.activate([
            greetingLabel.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 1),
            greetingLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 1),
            greetingLabel.trailingAnchor.constraint(equalToSystemSpacingAfter: self.trailingAnchor, multiplier: 1),
            
            inboxButton.topAnchor.constraint(equalToSystemSpacingBelow: greetingLabel.bottomAnchor, multiplier: 2),
            inboxButton.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 2),
            self.bottomAnchor.constraint(equalToSystemSpacingBelow: inboxButton.bottomAnchor, multiplier: 1)
        ])
        
    }
    
    func setUser(name:String){
        var greetingString = String(localizedKey: LocalizedKeys.greetingKey)
        greetingString = greetingString.replacingOccurrences(of: "*", with: name)
        greetingLabel.text =  greetingString
    }
    
}
