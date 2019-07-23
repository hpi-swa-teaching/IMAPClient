commands
fetchHeadersWithUIDRange: aBeginId to: anEndId

	^ {ICEndPoint protocolCommandStart . 'UID FETCH' .
		(aBeginId asString, ':', anEndId asString) .
		'(FLAGS BODY.PEEK[HEADER.FIELDS (from to subject date content-type content-transfer-encoding)])'} 
		joinSeparatedBy: ICEndPoint protocolBlank