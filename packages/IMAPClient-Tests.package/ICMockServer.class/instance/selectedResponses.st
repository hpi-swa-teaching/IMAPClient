accessing
selectedResponses

	^ Dictionary newFrom: {
		'. NOOP' -> (OrderedCollection newFrom: #('. OK [NOOP COMPLETED]')).
		'. LOGIN ', self validUsername, ' ', self validPassword -> (OrderedCollection newFrom: #('. OK logged in')).
		'. LOGOUT' -> (OrderedCollection newFrom: #('. OK' . '. OK')).
		'. FETCH 42 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponse.
		'. FETCH 44 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithDifferentOrder.
		'. FETCH 42 body[1.1]' -> self fetchBodyResponse.
		'. FETCH 43 body[1.1]' -> self fetchMultlineBodyResponse}