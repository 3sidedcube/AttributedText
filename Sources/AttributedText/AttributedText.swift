//
//  AttributedText.swift
//  AttributedText
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

/// Wrapper of `NSAttributedString`
///
/// - Warning:
/// This does not take range into account; it wraps a dictionary of attributes to be set over a *fixed* range.
/// For different attributes across multiple ranges, either use multiple `AttributedText`s or
/// (the wrapped) `NSAttributedString`.
public struct AttributedText {

    /// Text to draw
    public var text: String

    /// `Attributes` of key value pairs
    public var attributes: Attributes

    // MARK: - Init

    /// Default public memberwise initializer
    ///
    /// - Parameters:
    ///   - text: `String` - defaults to empty string
    ///   - attributes: `Attributes` - defaults to empty dictionary
    public init(text: String = "", attributes: Attributes = [:]) {
        self.text = text
        self.attributes = attributes
    }

    /// Initialize with `attributedString`
    ///
    /// - Warning:
    /// 1. As `AttributedText` wraps attributes over a fixed range, if `attributedString`
    /// has different attributes at different ranges, then those differences will be lost.
    /// 2. If the `attributedString` is empty, then the attributes can not be determined
    /// (as there is no range to enumerate attributes over)
    ///
    /// - Parameters:
    ///   - attributedString: `NSAttributedString`
    public init(_ attributedString: NSAttributedString) {
        self.text = attributedString.string
        self.attributes = attributedString.length > 0 ?
            attributedString.attributes(at: 0, effectiveRange: nil) :
            [:]
    }
}

#endif
