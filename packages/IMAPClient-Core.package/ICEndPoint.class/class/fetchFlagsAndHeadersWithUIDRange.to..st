commands
fetchFlagsAndHeadersWithUIDRange: aBeginId to: anEndId

	^ {self protocolCommandStart . 'UID FETCH' .
		(aBeginId asString, ':', anEndId asString) .
		'(FLAGS BODY.PEEK[HEADER.FIELDS (from to subject date)])' } joinSeparatedBy: self protocolBlank