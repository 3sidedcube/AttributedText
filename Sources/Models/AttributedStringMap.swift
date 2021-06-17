//
//  AttributedStringMap.swift
//  AttributedString
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

/// Wrapper of mapping `UIControl.State` to `AttributedString`
public struct AttributedStringMap {

    /// Map `ButtonState` to `AttributedString`
    public var attributedMap: [ButtonState: AttributedString] = [:]

    /// Subscript for getting and setting `AttributedString` for the given `state`
    ///
    /// - Parameters:
    ///   - state: `UIControl.State`
    public subscript (state: UIControl.State) -> AttributedString {
        mutating get {
            return getAttributedString(for: state)
        }
        set {
            attributedMap[ButtonState(state: state)] = newValue
        }
    }

    /// Get `AttributedString` for the given `state`.
    /// If there is no value for key then set a new instance for that key
    ///
    /// - Parameters:
    ///   - state: `UIControl.State`
    private mutating func getAttributedString(
        for state: UIControl.State
    ) -> AttributedString {
        let buttonState = ButtonState(state: state)

        var attributedString: AttributedString! = attributedMap[buttonState]
        if attributedString == nil {
            attributedString = AttributedString()
            attributedMap[buttonState] = attributedString
        }

        return attributedString
    }
}

#endif
