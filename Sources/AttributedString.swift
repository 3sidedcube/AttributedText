#if os(iOS)
import UIKit

/// Attributes of an `NSAttributedString`
/// Map `NSAttributedString.Key` to `Any`
public typealias Attributes = [NSAttributedString.Key: Any]

/// Wrapper of `NSAttributedString`
public struct AttributedString {

    /// Text to draw
    public var text: String

    /// Font of the test
    public var font: UIFont?

    /// Text color of the text
    public var textColor: UIColor?

    /// Background color behind the text
    public var backgroundColor: CGFloat?

    /// Alignment of the text
    public var textAlignment: NSTextAlignment?

    /// Line break mode of the text
    public var lineBreakMode: NSLineBreakMode

    /// Height of each line of text
    public var lineHeight: CGFloat?

    /// Letter spacing between characters of text
    public var letterSpacing: CGFloat?
}

// MARK: - NSAttributedString

public extension AttributedString {

    /// Map to `Attributes`
    var attributes: Attributes {
        var attributes: Attributes = [:]

        // Set up `NSMutableParagraphStyle`
        let paragraphStyle = NSMutableParagraphStyle()

        // font
        if let font = font {
            attributes[.font] = font
        }

        // textColor
        if let textColor = textColor {
            attributes[.foregroundColor] = textColor
        }

        // backgroundColor
        if let backgroundColor = backgroundColor {
            attributes[.backgroundColor] = backgroundColor
        }

        // textAlignment
        if let textAlignment = textAlignment {
            paragraphStyle.alignment = textAlignment
        }

        // lineBreakMode
        paragraphStyle.lineBreakMode = lineBreakMode

        // lineHeight
        if let lineHeight = lineHeight, let font = font {
            paragraphStyle.lineHeightMultiple = 1
            paragraphStyle.lineSpacing = lineHeight - font.lineHeight
        }

        // letterSpacing
        if let letterSpacing = letterSpacing {
            attributes[.kern] = letterSpacing
        }

        // Commit attributes and set `attributedText`
        attributes[.paragraphStyle] = paragraphStyle
        return attributes
    }

    /// Map to `NSAttributedString`
    var attributesString: NSAttributedString {
        return NSAttributedString(string: text, attributes: attributes)
    }
}

#endif
