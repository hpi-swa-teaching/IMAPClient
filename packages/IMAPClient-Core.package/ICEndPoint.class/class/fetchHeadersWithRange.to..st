commands
fetchHeadersWithRange: aBeginId to: anEndId

	^ {self protocolCommandStart . 'FETCH' .
		(aBeginId asString, ':', anEndId asString) .
		'(body[HEADER.FIELDS (from to subject date content-type)])' } joinSeparatedBy: self protocolBlank