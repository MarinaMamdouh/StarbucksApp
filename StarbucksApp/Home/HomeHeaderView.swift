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


//// Auto Layout Methods

extension HomeHeaderView{
    
    func setStyle(){
        greetingLabel.translatesAutoresizingMaskIntoConstraints =  false
        setUser(name: "")
        greetingLabel.numberOfLines = 0
        greetingLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        greetingLabel.lineBreakMode = .byWordWrapping
        
        self.makeInboxButton()
        
        
    }
    
    func setLayout(){
        addSubview(greetingLabel)
        addSubview(inboxButton)
        NSLayoutConstraint.activate([
            greetingLabel.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 1),
            greetingLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 1),
            greetingLabel.trailingAnchor.constraint(equalToSystemSpacingAfter: self.trailingAnchor, multiplier: 1),
            
            inboxButton.topAnchor.constraint(equalToSystemSpacingBelow: greetingLabel.bottomAnchor, multiplier: 2),
            inboxButton.leadingAnchor.constraint(equalToSystemSpacingAfter: self.leadingAnchor, multiplier: 1),
            self.bottomAnchor.constraint(equalToSystemSpacingBelow: inboxButton.bottomAnchor, multiplier: 1)
        ])
        
    }
    
    func setUser(name:String){
        var greetingString = String(localizedKey: LocalizedKeys.greetingKey)
        greetingString = greetingString.replacingOccurrences(of: "*", with: name)
        greetingLabel.text =  greetingString
    }
    
}


// InboxLabel Factory

extension HomeHeaderView{
    
    func makeInboxButton(){
        inboxButton.translatesAutoresizingMaskIntoConstraints =  false

        if #available(iOS 15.0, *) {
            var configuration = UIButton.Configuration.plain()
            configuration.title = String(localizedKey: LocalizedKeys.inboxKey)
            configuration.baseForegroundColor = .label
            configuration.image = UIImage(systemName: Images.inboxImageName, withConfiguration: UIImage.SymbolConfiguration(scale: .large))
            configuration.imagePadding = 5
            configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
            inboxButton.configuration = configuration
        } else {
            // Fallback on earlier versions
            let configuartion = UIImage.SymbolConfiguration(scale: .large)
            let image = UIImage(systemName: Images.inboxImageName, withConfiguration: configuartion)
            inboxButton.setImage(image, for: .normal)
            inboxButton.setTitle(String(localizedKey: LocalizedKeys.inboxKey), for: .normal)
            inboxButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
            inboxButton.setTitleColor(.label, for: .normal)
        }
        inboxButton.imageView?.tintColor = .secondaryLabel
        inboxButton.imageView?.contentMode = .scaleAspectFit
        
        
    }
    
}
