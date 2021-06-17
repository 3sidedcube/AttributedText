//
//  AttributedLabel.swift
//  AttributedString
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

/// A `UILabel ` wrapping an `AttributedString`
class AttributedLabel: UILabel {

    private var attributedString = AttributedString() {
        didSet {
            attributedText = attributedString.attributedString
        }
    }

    override var attributedText: NSAttributedString? {
        didSet {
            guard let attributedText = attributedText else {
                attributedString = AttributedString()
                return
            }

            attributedString = AttributedString(attributedText)
        }
    }

    override var text: String? {
        get {
            return attributedString.text
        }
        set {
            attributedString.text = newValue ?? ""
        }
    }

    override var font: UIFont? {
        get {
            return attributedString.font
        }
        set {
            attributedString.font = newValue
        }
    }

    override var textColor: UIColor? {
        get {
            return attributedString.textColor
        }
        set {
            attributedString.textColor = newValue
        }
    }

    override var backgroundColor: UIColor? {
        get {
            return attributedString.backgroundColor
        }
        set {
            attributedString.backgroundColor = newValue
        }
    }
}

#endif
