# AttributedString

Simple wrapper of `NSAttributedString`.

Note: `AttributedString` does not take range into account; it wraps a dictionary of attributes to be set over a *fixed* range.
So, to achieve various attributes at different ranges, it's common to append many `AttributedString`s to an `NSMutableAttributedString`.

Currently supported properties which map to `NSAttributedString.Key` (See file `AttributedString+Attributes`):

* `font` (key: `.font`)
* `textColor` (key: `.foregroundColor`)
* `textBackgroundColor` (key: `.backgroundColor`)
* `letterSpacing` (key: `.kern`)
* `underlineStyle` (key: `.underlineStyle`)
* `textAlignment` (key: `.paragraphStyle` - `.alignment`)
* `lineBreakMode` (key: `.paragraphStyle` - `.lineBreakMode`)
* `lineHeight` (key: `.paragraphStyle` - `.lineHeightMultiple` & `.lineSpacing`)

`text` is a stored property as it doesn't have corresponding `NSAttributedString.Key` like the others. 
