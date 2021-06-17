//
//  AttributedString+NSAttributedString.swift
//  AttributedString
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

public extension AttributedString {

    /// Map to and from `NSAttributedString`
    var attributedString: NSAttributedString {
        return NSAttributedString(string: text ?? "", attributes: attributes)
    }
}

#endif
