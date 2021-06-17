//
//  AttributedString+ParagraphStyle.swift
//  AttributedString
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

internal extension AttributedString {

    /// Get the `NSMutableParagraphStyle` setting it on `attributes` if not already set
    mutating func paragraphStyle() -> NSMutableParagraphStyle {
        let style = attributes[.paragraphStyle] as? NSMutableParagraphStyle

        // Update if not already set
        var paragraphStyle: NSMutableParagraphStyle! = style
        if paragraphStyle == nil {
            paragraphStyle = NSMutableParagraphStyle()
            attributes[.paragraphStyle] = paragraphStyle
        }

        return paragraphStyle
    }
}

#endif
