//
//  UILabel+AttributedText.swift
//  AttributedText
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

public extension UILabel {

    /// Set the given `attributedString`
    ///
    /// - Parameter attributedString: `AttributedText`
    func setAttributedString(_ attributedString: AttributedText) {
        attributedText = attributedString.attributedString
    }
}

#endif
