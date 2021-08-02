header
fetchHeaderResponses

	^Dictionary newFrom: {
		(ICCommand fetchHeadersForUIDsFrom: 3 to: 4) -> self fetchHeadersWithRangeResponse.
		'. FETCH 3:4 BODY.PEEK[HEADER.FIELDS (from to subject date)])' -> self fetchHeadersWithRangeResponse.
		'. FETCH 3:* (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeadersWithRangeResponse.
		'. FETCH 42 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponse.
		'. FETCH 44 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithDifferentOrder.
		'. FETCH 45 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithMultilineSender.
		'. FETCH 46 (body[HEADER.FIELDS (from to subject date)])' -> self fetchHeaderResponseWithMultilineReceiver}