converting
headerAsString

	| headerFields |
	
	headerFields := self header keys sorted.
	^ (headerFields collect: [:headerField |
		headerField, ': ', (self header at: headerField)]) joinSeparatedBy: String cr