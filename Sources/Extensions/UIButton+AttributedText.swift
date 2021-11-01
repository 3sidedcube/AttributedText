//
//  UIButton+AttributedText.swift
//  AttributedText
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

public extension UIButton {

    /// Set the given `attributedString` for `state`
    ///
    /// - Parameters:
    ///   - attributedString: `AttributedText`
    ///   - state: `UIControl.State`
    func setAttributedTitle(
        _ attributedString: AttributedText,
        for state: UIControl.State
    ) {
        setAttributedTitle(
            attributedString.attributedString,
            for: state
        )
    }
}

#endif
