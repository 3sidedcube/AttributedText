# AttributedString

Simple wrapper of `NSAttributedString`.

Currently supported properties which map to `NSAttributedString.Key` (See file `AttributedString+Attributes`):

* `font` (key: `.font`)
* `textColor` (key: `.foregroundColor`)
* `backgroundColor` (key: `.backgroundColor`)
* `letterSpacing` (key: `.kern`)
* `textAlignment` (key: `.paragraphStyle` - `.alignment`)
* `lineBreakMode` (key: `.paragraphStyle` - `.lineBreakMode`)
* `lineHeight` (key: `.paragraphStyle` - `.lineHeightMultiple` & `.lineSpacing`)

`text` is a stored property as it doesn't have corresponding `NSAttributedString.Key` like the others. 
