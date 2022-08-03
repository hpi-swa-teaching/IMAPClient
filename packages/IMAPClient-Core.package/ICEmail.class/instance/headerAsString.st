converting
headerAsString

	^ (self header keys sorted collect: [:headerField | headerField, ': ', (self header at: headerField)]) joinSeparatedBy: String cr