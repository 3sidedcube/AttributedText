//
//  NSLineBreakMode+Defaults.swift
//  AttributedText
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

extension NSLineBreakMode {

    /// Default `NSLineBreakMode` from `NSParagraphStyle`
    static var `default`: NSLineBreakMode {
        return NSParagraphStyle().lineBreakMode
    }
}

#endif
