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
///
/// - Warning:
/// Only getter/setter properties declared on `AttributedString` are supported
open class AttributedLabel: InsetLabel {

    /// Wrapped `AttributedString`
    public private(set) var attributedString = AttributedString() {
        didSet {
            super.attributedText = self.attributedText
        }
    }

    // MARK: - NSAttributedString

    /// Get and set via `attributedString`
    override open var attributedText: NSAttributedString? {
        get {
            // No super
            return attributedString.attributedString
        }
        set {
            attributedString = AttributedString(newValue ?? NSAttributedString())
        }
    }

    // MARK: - Properties

    /// Get and set via `text` on `attributedString`
    override open var text: String? {
        get {
            // No super
            return attributedString.text
        }
        set {
            attributedString.text = newValue
        }
    }

    /// Get and set via `font` on `attributedString`
    override open var font: UIFont? {
        get {
            // No super
            return attributedString.font
        }
        set {
            attributedString.font = newValue
        }
    }

    /// Get and set via `textColor` on `attributedString`
    override open var textColor: UIColor? {
        get {
            // No super
            return attributedString.textColor
        }
        set {
            attributedString.textColor = newValue
        }
    }

    /// Get and set via `backgroundColor` on `attributedString`
    override open var backgroundColor: UIColor? {
        get {
            // No super
            return attributedString.backgroundColor
        }
        set {
            attributedString.backgroundColor = newValue
        }
    }

    /// Get and set via `letterSpacing` on `attributedString`
    open var letterSpacing: CGFloat? {
        get {
            return attributedString.letterSpacing
        }
        set {
            attributedString.letterSpacing = newValue
        }
    }

    /// Get and set via `textAlignment` on `attributedString`
    override open var textAlignment: NSTextAlignment {
        get {
            // No super
            return attributedString.textAlignment
        }
        set {
            attributedString.textAlignment = newValue
        }
    }

    /// Get and set via `lineBreakMode` on `attributedString`
    override open var lineBreakMode: NSLineBreakMode {
        get {
            // No super
            return attributedString.lineBreakMode
        }
        set {
            attributedString.lineBreakMode = newValue
        }
    }

    /// Get and set via `lineHeight` on `attributedString`
    open var lineHeight: CGFloat? {
        get {
            return attributedString.lineHeight
        }
        set {
            attributedString.lineHeight = newValue
        }
    }
}

#endif
