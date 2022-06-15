# AttributedText

Simple wrapper of `NSAttributedString`. Importantly, `AttributedText` does not take range into account; it wraps a dictionary of attributes to be set over a *fixed* range.
So, to achieve various attributes at different ranges, it's common to append many `AttributedText`s to an `NSMutableAttributedString`. Or even just using the native `NSAttributedString`.

Currently supported properties which map to `NSAttributedString.Key` (See file `AttributedText+Attributes`):

* `font` (key: `.font`)
* `textColor` (key: `.foregroundColor`)
* `textBackgroundColor` (key: `.backgroundColor`)
* `letterSpacing` (key: `.kern`)
* `underlineStyle` (key: `.underlineStyle`)
* `link` (key: `.link`)
* `textAlignment` (key: `.paragraphStyle` - `.alignment`)
* `lineBreakMode` (key: `.paragraphStyle` - `.lineBreakMode`)
* `lineHeightMultiple` (key: `.paragraphStyle` - `.lineHeightMultiple`)

`text` is a stored property as it doesn't have corresponding `NSAttributedString.Key` like the others. 

## Warning:
An `NSAttributedString` with empty text has no attributes (because it has no range).

## Notes:
This framework was previously called `AttributedString` until iOS 15 when Apple released their own [AttributedString](https://developer.apple.com/documentation/foundation/attributedstring). As a result, this framework was renamed to `AttributedText` to prevent naming conflicts.
