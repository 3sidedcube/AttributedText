//
//  AttributedLabel.swift
//  AttributedText
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

/// A `UILabel ` wrapping an `AttributedText`.
///
/// - Warning:
/// 1. Only getter/setter properties declared on `AttributedText` are supported.
/// 2. The `attributedText` gets and sets `attributedString`, so to
/// set multiple attributes at different ranges use a `UILabel`
@available(*, deprecated, message: "Please use UILabel extension methods instead")
open class AttributedLabel: InsetLabel {

    /// Wrapped `AttributedText`
    ///
    /// - Warning:
    /// Unfortunately, the naming here is confusing with the:
    /// - `attributedString` property having type `AttributedText`
    /// - `attributedText` property having type `NSAttributedString`
    /// This library (and thus the `AttributedText` structure) was once called `AttributedString`.
    /// But in iOS 15 Apple released their own `AttributedString` so this had to be renamed
    /// due to naming conflicts.
    public var attributedString = AttributedText() {
        didSet {
            super.attributedText = self.attributedText
        }
    }

    // MARK: - NSAttributedString

    /// Get and set `attributedString`
    override open var attributedText: NSAttributedString? {
        get {
            // No super
            return attributedString.attributedString
        }
        set {
            attributedString = AttributedText(newValue ?? NSAttributedString())
        }
    }

    // MARK: - Properties

    /// Get and set `text` on `attributedString`
    override open var text: String? {
        get {
            // No super
            return attributedString.text
        }
        set {
            attributedString.text = newValue ?? ""
        }
    }

    /// Get and set `font` on `attributedString`
    override open var font: UIFont? {
        get {
            // No super
            return attributedString.font
        }
        set {
            attributedString.font = newValue
        }
    }

    /// Get and set `textColor` on `attributedString`
    override open var textColor: UIColor? {
        get {
            // No super
            return attributedString.textColor
        }
        set {
            attributedString.textColor = newValue
        }
    }

    /// Get and set `textBackgroundColor` on `attributedString`
    open var textBackgroundColor: UIColor? {
        get {
            // No super
            return attributedString.textBackgroundColor
        }
        set {
            attributedString.textBackgroundColor = newValue
        }
    }

    /// Get and set `letterSpacing` on `attributedString`
    open var letterSpacing: CGFloat? {
        get {
            return attributedString.letterSpacing
        }
        set {
            attributedString.letterSpacing = newValue
        }
    }

    /// Get and set `underlineStyle` on `attributedString`
    open var underlineStyle: NSUnderlineStyle? {
        get {
            return attributedString.underlineStyle
        }
        set {
            attributedString.underlineStyle = newValue
        }
    }

    /// Get and `link` on `attributedString`
    open var link: URL? {
        get {
            return attributedString.link
        }
        set {
            attributedString.link = newValue
        }
    }

    /// Get and set `textAlignment` on `attributedString`
    override open var textAlignment: NSTextAlignment {
        get {
            // No super
            return attributedString.textAlignment
        }
        set {
            attributedString.textAlignment = newValue
        }
    }

    /// Get and set `lineBreakMode` on `attributedString`
    override open var lineBreakMode: NSLineBreakMode {
        get {
            // No super
            return attributedString.lineBreakMode
        }
        set {
            attributedString.lineBreakMode = newValue
        }
    }

    /// Get and set `lineHeight` on `attributedString`
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
