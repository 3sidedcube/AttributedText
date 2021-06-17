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

    /// Set the given `attributedString`
    ///
    /// - Parameter attributedString: `AttributedString`
    func setAttributedString(_ attributedString: AttributedString) {
        attributedText = attributedString.attributedString
    }
}

#endif
