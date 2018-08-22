commands
fetchFlagsWithUIDRange: aBeginUID to: anEndUID

	^ {self protocolCommandStart . 'UID FETCH' . (aBeginUID asString, ':', anEndUID asString) . '(FLAGS)'} 
		joinSeparatedBy: self protocolBlank