commands
fetchHeadersWithUIDRange: aBeginId to: anEndId

	^ {self protocolCommandStart . 'UID FETCH' .
		(aBeginId asString, ':', anEndId asString) .
		'(body[HEADER.FIELDS (from to subject date content-type content-transfer-encoding)])' } joinSeparatedBy: self protocolBlank