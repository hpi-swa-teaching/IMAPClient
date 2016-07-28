print
headerAsString

	| headerFields |
	headerFields := self header keys.
	^ (headerFields collect: [:headerField |
		headerField, ': ', (self header at: headerField)]) joinSeparatedBy: String cr