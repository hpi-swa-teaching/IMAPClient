commands
fetchFlagsWithUIDRange: aBeginId to: anEndId

	^ {self protocolCommandStart . 'UID FETCH' .
		(aBeginId asString, ':', anEndId asString) .
		'FLAGS' } joinSeparatedBy: self protocolBlank