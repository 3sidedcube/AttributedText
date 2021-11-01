//
//  NSTextAlignment+Defaults.swift
//  AttributedText
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

extension NSTextAlignment {

    /// Default `NSTextAlignment` from `NSParagraphStyle`
    static var `default`: NSTextAlignment {
        return NSParagraphStyle().alignment
    }
}

#endif
