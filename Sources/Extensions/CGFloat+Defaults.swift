//
//  CGFloat+Defaults.swift
//  AttributedText
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

extension CGFloat {

    /// Default line height from `NSParagraphStyle`
    ///
    /// - Parameter font: `UIFont`
    static func defaultLineHeight(for font: UIFont) -> CGFloat {
        return NSParagraphStyle().lineSpacing + font.lineHeight
    }

    /// Default line height multiple from `NSParagraphStyle`
    static var defaultLineHeightMultiple: CGFloat {
        return NSParagraphStyle().lineHeightMultiple
    }
}

#endif
