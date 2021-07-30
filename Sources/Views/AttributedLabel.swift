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

    /// Get and set via `text` on `attributedString`
    override open var text: String? {
        get {
            // No super
            return attributedString.text
        }
        set {
            updating { $0.text = newValue ?? "" }
        }
    }

    /// Get and set via `font` on `attributedString`
    override open var font: UIFont? {
        get {
            // No super
            return attributedString.font
        }
        set {
            updating { $0.font = newValue }
        }
    }

    /// Get and set via `textColor` on `attributedString`
    override open var textColor: UIColor? {
        get {
            // No super
            return attributedString.textColor
        }
        set {
            updating { $0.textColor = newValue }
        }
    }

    /// Get and set via `textBackgroundColor` on `attributedString`
    open var textBackgroundColor: UIColor? {
        get {
            // No super
            return attributedString.textBackgroundColor
        }
        set {
            updating { $0.textBackgroundColor = newValue }
        }
    }

    /// Get and set via `letterSpacing` on `attributedString`
    open var letterSpacing: CGFloat? {
        get {
            return attributedString.letterSpacing
        }
        set {
            updating { $0.letterSpacing = newValue }
        }
    }

    /// Get and set via `underlineStyle` on `attributedString`
    open var underlineStyle: NSUnderlineStyle? {
        get {
            return attributedString.underlineStyle
        }
        set {
            updating { $0.underlineStyle = newValue }
        }
    }

    /// Get and set via `textAlignment` on `attributedString`
    override open var textAlignment: NSTextAlignment {
        get {
            // No super
            return attributedString.textAlignment
        }
        set {
            updating { $0.textAlignment = newValue }
        }
    }

    /// Get and set via `lineBreakMode` on `attributedString`
    override open var lineBreakMode: NSLineBreakMode {
        get {
            // No super
            return attributedString.lineBreakMode
        }
        set {
            updating { $0.lineBreakMode = newValue }
        }
    }

    /// Get and set via `lineHeight` on `attributedString`
    open var lineHeight: CGFloat? {
        get {
            return attributedString.lineHeight
        }
        set {
            updating { $0.lineHeight = newValue }
        }
    }
}

#endif
