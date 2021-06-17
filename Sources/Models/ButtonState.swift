//
//  ButtonState.swift
//  AttributedString
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

/// A `Hashable` `UIControl.State`
public final class ButtonState: NSObject {

    /// `UIControl.State`
    public let state: UIControl.State

    /// Default memberwise initializer
    ///
    /// - Parameter state: `UIControl.State`
    public init(state: UIControl.State) {
        self.state = state
        super.init()
    }
}

// MARK: - Equatable

extension ButtonState {

    static func == (lhs: ButtonState, rhs: ButtonState) -> Bool {
        return lhs.state == rhs.state
    }
}

#endif
