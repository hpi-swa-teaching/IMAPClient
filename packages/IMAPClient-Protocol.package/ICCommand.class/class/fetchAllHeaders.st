commands
fetchAllHeaders

	^ self join: {
		'UID FETCH 1:* (FLAGS BODY.PEEK[HEADER.FIELDS (from to subject date content-type content-transfer-encoding)])'}