//
//  AttributedButton.swift
//  AttributedString
//
//  Created by Ben Shutt on 17/06/2021.
//  Copyright © 2021 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

#if os(iOS)
import UIKit

/// A `UIButton ` wrapping an `AttributedString`
///
/// - Warning:
/// Only getter/setter properties declared on `AttributedString` are supported
open class AttributedButton: UIButton {

    /// Prevent recursive cycle where:
    /// - `setAttributedTitle(_:for:)` calls the `didSet` of `attributedMap`
    /// - `didSet` of `attributedMap` calls `setAttributedTitle(_:for:)`
    private var setAttributedTitle = true

    /// Map `UIControl.State` to a wrapped `AttributedString`
    /// Each `UIControl.State` will have its own `AttributedString`
    public private(set) var attributedMap = AttributedStringMap() {
        didSet {
            guard setAttributedTitle else { return }
            attributedMap.attributedMap.forEach {
                setAttributedTitle($0.value.attributedString, for: $0.key.state)
            }
        }
    }

    // MARK: - NSAttributedString

    /// Get `NSAttributedString` via `attributedString` for `state`
    ///
    /// - Parameter state: `UIControl.State`
    override open func attributedTitle(
        for state: UIControl.State
    ) -> NSAttributedString? {
        // No super
        return attributedMap[state].attributedString
    }

    /// Setting the `attributedText` should update the `attributedMap`
    /// for the given `state`
    ///
    /// - Note:
    /// We have not set up a getter and setter here due to the available methods on the `UIButton`.
    /// Instead setting this should update the `attributedMap` and vice versa.
    ///
    /// - Parameters:
    ///   - title: `NSAttributedString`
    ///   - state: `UIControl.State`
    override open func setAttributedTitle(
        _ title: NSAttributedString?,
        for state: UIControl.State
    ) {
        super.setAttributedTitle(title, for: state)

        setAttributedTitle = false
        attributedMap[state] = AttributedString(title ?? NSAttributedString())
        setAttributedTitle = true
    }

    // MARK: - Properties

    /// Get `text` on `attributedMap` for `state`
    ///
    /// - Parameters:
    ///   - state: `UIControl.State`
    override open func title(for state: UIControl.State) -> String? {
        // No super
        return attributedMap[state].text
    }

    /// Set `text` on `attributedMap` for `state`
    ///
    /// - Parameters:
    ///   - text: `String`
    ///   - state: `UIControl.State`
    override open func setTitle(
        _ text: String?,
        for state: UIControl.State
    ) {
        attributedMap[state].text = text
    }

    /// Get `font` on `attributedMap` for `state`
    ///
    /// - Parameter state: `UIControl.State`
    open func font(for state: UIControl.State) -> UIFont? {
        return attributedMap[state].font
    }

    /// Set `font` on `attributedMap` for `state`
    ///
    /// - Parameters:
    ///   - font: `UIFont`
    ///   - state: `UIControl.State`
    open func setFont(_ font: UIFont?, for state: UIControl.State) {
        attributedMap[state].font = font
    }

    /// Get `textColor` on `attributedMap` for `state`
    ///
    /// - Parameter state: `UIControl.State`
    override open func titleColor(
        for state: UIControl.State
    ) -> UIColor? {
        // No super
        return attributedMap[state].textColor
    }

    /// Set `textColor` on `attributedMap` for `state`
    ///
    /// - Parameters:
    ///   - textColor: `UIColor`
    ///   - state: `UIControl.State`
    override open func setTitleColor(
        _ textColor: UIColor?,
        for state: UIControl.State
    ) {
        attributedMap[state].textColor = textColor
    }

    /// Get `backgroundColor` on `attributedMap` for `state`
    ///
    /// - Parameter state: `UIControl.State`
    open func titleLabelBackgroundColor(for state: UIControl.State) -> UIColor? {
        return attributedMap[state].backgroundColor
    }

    /// Set `backgroundColor` on `attributedMap` for `state`
    ///
    /// - Parameters:
    ///   - backgroundColor: `UIColor`
    ///   - state: `UIControl.State`
    open func setTitleLabelBackgroundColor(
        _ backgroundColor: UIColor?,
        for state: UIControl.State
    ) {
        attributedMap[state].backgroundColor = backgroundColor
    }

    /// Get `letterSpacing` on `attributedMap` for `state`
    ///
    /// - Parameter state: `UIControl.State`
    open func letterSpacing(for state: UIControl.State) -> CGFloat? {
        return attributedMap[state].letterSpacing
    }

    /// Set `letterSpacing` on `attributedMap` for `state`
    ///
    /// - Parameters:
    ///   - letterSpacing: `CGFloat`
    ///   - state: `UIControl.State`
    open func setLetterSpacing(
        _ letterSpacing: CGFloat?,
        for state: UIControl.State
    ) {
        attributedMap[state].letterSpacing = letterSpacing
    }

    /// Get `textAlignment` on `attributedMap` for `state`
    ///
    /// - Parameter state: `UIControl.State`
    open func textAlignment(for state: UIControl.State) -> NSTextAlignment {
        return attributedMap[state].textAlignment
    }

    /// Set `textAlignment` on `attributedMap` for `state`
    ///
    /// - Parameters:
    ///   - textAlignment: `NSTextAlingment`
    ///   - state: `UIControl.State`
    open func setTextAlignment(
        _ textAlignment: NSTextAlignment,
        for state: UIControl.State
    ) {
        attributedMap[state].textAlignment = textAlignment
    }

    /// Get `lineBreakMode` on `attributedMap` for `state`
    ///
    /// - Parameter state: `UIControl.State`
    open func lineBreakMode(for state: UIControl.State) -> NSLineBreakMode {
        return attributedMap[state].lineBreakMode
    }

    /// Set `lineBreakMode` on `attributedMap` for `state`
    ///
    /// - Parameters:
    ///   - lineBreakMode: `NSLineBreakMode`
    ///   - state: `UIControl.State`
    open func setLineBreakMode(
        _ lineBreakMode: NSLineBreakMode,
        for state: UIControl.State
    ) {
        attributedMap[state].lineBreakMode = lineBreakMode
    }

    /// Get `lineHeight` on `attributedMap` for `state`
    ///
    /// - Parameter state: `UIControl.State`
    open func lineHeight(for state: UIControl.State) -> CGFloat? {
        return attributedMap[state].lineHeight
    }

    /// Set `lineHeight` on `attributedMap` for `state`
    ///
    /// - Parameters:
    ///   - lineHeight: `CGFloat`
    ///   - state: `UIControl.State`
    open func setLineHeight(
        _ lineHeight: CGFloat?,
        for state: UIControl.State
    ) {
        attributedMap[state].lineHeight = lineHeight
    }
}

#endif
