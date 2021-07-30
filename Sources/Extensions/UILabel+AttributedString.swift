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

    /// Update `attributedString` with `block` and set `attributedText`
    ///
    /// - Parameter block: Closure to update `AttributedString`
    internal func updating(block: (inout AttributedString) -> Void) {
        var attributedString = self.attributedString
        block(&attributedString)
        attributedText = attributedString.attributedString
    }
}

#endif
