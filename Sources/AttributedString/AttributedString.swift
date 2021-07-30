//
//  AttributedString.swift
//  AttributedString
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

/// Wrapper of `NSAttributedString`
///
/// - Warning:
/// This does not take range into account; it wraps a dictionary of attributes to be set over a fixed range.
public struct AttributedString {

    /// Text to draw
    public var text: String

    /// `Attributes` of key value pairs
    public internal(set) var attributes: Attributes

    // MARK: - Init

    /// Default public memberwise initializer
    ///
    /// - Parameters:
    ///   - text: `String`
    public init(text: String? = nil) {
        self.text = text ?? ""
        self.attributes = [:]
    }

    /// Initialize with `attributedString`
    ///
    /// - Warning:
    /// As `AttributedString` wraps attributes over a fixed range, if `attributedString`
    /// has different attributes at different ranges, then those differences will be lost.
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
