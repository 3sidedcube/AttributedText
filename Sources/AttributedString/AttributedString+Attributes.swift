//
//  AttributedString+Attributes.swift
//  AttributedString
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

public extension AttributedString {

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

    /// Height of each line of text
    ///
    /// - Note:
    /// Requires `font` to be defined first
    var lineHeight: CGFloat? {
        mutating get {
            guard let font = font else { return nil }
            return paragraphStyle().lineSpacing + font.lineHeight
        }
        set {
            guard let font = font else { return }

            var newLineHeight: CGFloat
            if let lineHeight = newValue {
                paragraphStyle().lineHeightMultiple = 1
                newLineHeight = lineHeight
            } else {
                paragraphStyle().lineHeightMultiple = .defaultLineHeightMultiple
                newLineHeight = .defaultLineHeight(for: font)
            }

            paragraphStyle().lineSpacing = newLineHeight - font.lineHeight
        }
    }
}

#endif
