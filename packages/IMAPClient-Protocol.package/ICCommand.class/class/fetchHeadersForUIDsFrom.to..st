commands
fetchHeadersForUIDsFrom: aBeginId to: anEndId

	^ self join: {
		'UID FETCH'.
		aBeginId asString, ':', anEndId asString.
		'(FLAGS BODY.PEEK[HEADER.FIELDS (from to subject date content-type content-transfer-encoding)])'}