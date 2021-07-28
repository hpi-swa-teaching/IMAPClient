initialization
initialize

	self responses:
		(Dictionary newFrom: {
		(ICCommand fetchFlagsForUIDsFrom: 3 to: 4) -> (self fetchFlag: #flagged from: (3 to: 4) asOrderedCollection).
		"'. FETCH 3:4 BODY.PEEK[HEADER.FIELDS (from to subject date)])' -> self fetchHeadersWithRangeResponse.
		(ICCommand fetchHeadersForUIDsFrom: 3 to: 4) -> self fetchHeadersWithRangeResponse.
		'. FETCH 3:* (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeadersWithRangeResponse.
		'. FETCH 42 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponse.
		'. FETCH 44 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithDifferentOrder.
		'. FETCH 45 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithMultilineSender.
		'. FETCH 46 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithMultilineReceiver.
		(ICCommand fetchBody: 42) -> self fetchBodyResponse.
		(ICCommand fetchBody: 43) -> self fetchMultlineBodyResponse.
		'. UID SEARCH ALL' -> self uidResponse"	}),
		self authenticatedResponses,
		self fetchBodyResponses,
		self fetchHeaderResponses,
		self fetchSetFlags, 
		self fetchResetFlags,
		self fetchSelectResponse,
		self fetchMoveResponse