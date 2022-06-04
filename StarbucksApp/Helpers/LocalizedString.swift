//
//  LocalizedString.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import Foundation

extension String{
    init(localizedKey key: String) {
        self.init()
        let localizedString =  NSLocalizedString(key, comment: "")
        self = localizedString
    }
}
