initialization
initialize

	self responses: (Dictionary newFrom: {
		'. NOOP' -> self noopResponse.
		'. LOGIN ', self validUsername, ' ', self validPassword -> self loginResponse.
		'. LOGOUT' -> self logoutResponse.
		'. FETCH 3:4 BODY.PEEK[HEADER.FIELDS (from to subject date)])' -> self fetchHeadersWithRangeResponse.
		'. UID FETCH 3:4 (FLAGS BODY.PEEK[HEADER.FIELDS (from to subject date content-type content-transfer-encoding)])' -> self fetchHeadersWithRangeResponse.
		'. UID FETCH 3:4 (FLAGS)'  -> self fetchFlagsOnlyResponse.
		'. FETCH 3:* (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeadersWithRangeResponse.
		'. FETCH 42 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponse.
		'. FETCH 44 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithDifferentOrder.
		'. FETCH 45 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithMultilineSender.
		'. FETCH 46 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithMultilineReceiver.
		'. MOVE 47 "trash"' -> self noopResponse.
		'. FETCH 42 body[TEXT]' -> self fetchBodyResponse.
		'. FETCH 43 body[TEXT]' -> self fetchMultlineBodyResponse.
		'. SELECT "root"' ->  self selectResponse.
		'. SELECT "trash"' ->  self selectResponse}), self fetchSetFlags, self fetchResetFlags