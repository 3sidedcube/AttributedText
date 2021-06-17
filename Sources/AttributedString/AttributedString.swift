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
public struct AttributedString {

    /// Text to draw
    public var text: String?

    /// `Attributes` of key value pairs
    public internal(set) var attributes: Attributes

    // MARK: - Init

    /// Default public memberwise initializer
    ///
    /// - Parameters:
    ///   - text: `String`
    public init(text: String? = nil) {
        self.text = text
        self.attributes = [:]
    }

    /// Initialize with `attributedString`
    ///
    /// - Parameters:
    ///   - attributedString: `NSAttributedString`
    public init(_ attributedString: NSAttributedString) {
        self.text = attributedString.string
        guard attributedString.length > 0 else {
            self.attributes = [:]
            return
        }
        self.attributes = attributedString.attributes(at: 0, effectiveRange: nil)
    }
}

#endif
