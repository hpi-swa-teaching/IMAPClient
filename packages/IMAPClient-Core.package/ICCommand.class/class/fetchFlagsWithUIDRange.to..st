commands
fetchFlagsWithUIDRange: aBeginUID to: anEndUID

	^ {ICEndPoint protocolCommandStart . 'UID FETCH' . (aBeginUID asString, ':', anEndUID asString) . '(FLAGS)'} 
		joinSeparatedBy: ICEndPoint protocolBlank