//
//  UILabel+AttributedString.swift
//  AttributedString
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

public extension UILabel {

    /// Get and set `attributedText` mapping to and from  `AttributedString`
    var attributedString: AttributedString {
        get {
            return AttributedString(attributedText ?? NSAttributedString())
        }
        set {
            attributedText = newValue.attributedString
        }
    }
}

#endif
