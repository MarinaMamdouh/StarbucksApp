//
//  Font+Extension.swift
//  StarbucksApp
//
//  Created by Marina on 04/06/2022.
//

import UIKit

extension UIFont {
  var bold: UIFont {
    return with(traits: .traitBold)
  } // bold

  var italic: UIFont {
    return with(traits: .traitItalic)
  } // italic

  var boldItalic: UIFont {
    return with(traits: [.traitBold, .traitItalic])
  } // boldItalic


    func with(traits: UIFontDescriptor.SymbolicTraits) -> UIFont {
    guard let descriptor = self.fontDescriptor.withSymbolicTraits(traits) else {
      return self
    } // guard

    return UIFont(descriptor: descriptor, size: 0)
  } // with(traits:)
}
