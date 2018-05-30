initialization
initialize

	self responses: (Dictionary newFrom: {
		'. NOOP' -> self noopResponse.
		'. LOGIN ', self validUsername, ' ', self validPassword -> self loginResponse.
		'. LOGOUT' -> self logoutResponse.
		'. FETCH 3:4 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeadersWithRangeResponse.
		'. UID FETCH 3:4 (body[HEADER.FIELDS (from to subject date content-type)])' -> self fetchHeadersWithRangeResponse.
		'. FETCH 3:* (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeadersWithRangeResponse.
		'. FETCH 42 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponse.
		'. FETCH 44 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithDifferentOrder.
		'. FETCH 45 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithMultilineSender.
		'. FETCH 46 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithMultilineReceiver.
		'. FETCH 42 body[TEXT]' -> self fetchBodyResponse.
		'. FETCH 43 body[TEXT]' -> self fetchMultlineBodyResponse.
		'. UID SEARCH ALL' -> self uidResponse})