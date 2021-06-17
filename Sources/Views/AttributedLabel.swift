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

    /// Wrapped `AttributedString`
    private var attributedString = AttributedString() {
        didSet {
            attributedText = attributedString.attributedString
        }
    }

    // MARK: - Override

    /// Setting the `attributedText` should update the `attributedString`
    override var attributedText: NSAttributedString? {
        didSet {
            attributedString = AttributedString(attributedText ?? NSAttributedString())
        }
    }

    /// Get and set via `text` on `attributedString`
    override var text: String? {
        get {
            return attributedString.text
        }
        set {
            attributedString.text = newValue ?? ""
        }
    }

    /// Get and set via `font` on `attributedString`
    override var font: UIFont? {
        get {
            return attributedString.font
        }
        set {
            attributedString.font = newValue
        }
    }

    /// Get and set via `textColor` on `attributedString`
    override var textColor: UIColor? {
        get {
            return attributedString.textColor
        }
        set {
            attributedString.textColor = newValue
        }
    }

    /// Get and set via `backgroundColor` on `attributedString`
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
