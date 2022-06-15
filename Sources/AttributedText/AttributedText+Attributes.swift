//
//  AttributedText+Attributes.swift
//  AttributedText
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

public extension AttributedText {

    /// Font of the test
    var font: UIFont? {
        get {
            return attributes[.font] as? UIFont
        }
        set {
            attributes[.font] = newValue
        }
    }

    /// Text color of the text
    var textColor: UIColor? {
        get {
            return attributes[.foregroundColor] as? UIColor
        }
        set {
            attributes[.foregroundColor] = newValue
        }
    }

    /// Background color behind the text
    var textBackgroundColor: UIColor? {
        get {
            return attributes[.backgroundColor] as? UIColor
        }
        set {
            attributes[.backgroundColor] = newValue
        }
    }

    /// Letter spacing between characters of text
    var letterSpacing: CGFloat? {
        get {
            return attributes[.kern] as? CGFloat
        }
        set {
            attributes[.kern] = newValue
        }
    }

    /// Style of underline
    var underlineStyle: NSUnderlineStyle? {
        get {
            guard let value = attributes[.underlineStyle] as? Int else { return nil }
            return NSUnderlineStyle(rawValue: value)
        }
        set {
            attributes[.underlineStyle] = newValue?.rawValue
        }
    }

    /// The link for the text
    var link: URL? {
        get {
            return attributes[.link] as? URL
        }
        set {
            attributes[.link] = newValue
        }
    }

    // MARK: - Paragraph Style

    /// Alignment of the text
    var textAlignment: NSTextAlignment {
        mutating get {
            return paragraphStyle().alignment
        }
        set {
            paragraphStyle().alignment = newValue
        }
    }

    /// Line break mode of the text
    var lineBreakMode: NSLineBreakMode {
        mutating get {
            return paragraphStyle().lineBreakMode
        }
        set {
            paragraphStyle().lineBreakMode = newValue
        }
    }

    /// Line height multiple of the text
    var lineHeightMultiple: CGFloat {
        mutating get {
            return paragraphStyle().lineHeightMultiple
        }
        set {
            paragraphStyle().lineHeightMultiple = newValue
        }
    }
}

#endif
