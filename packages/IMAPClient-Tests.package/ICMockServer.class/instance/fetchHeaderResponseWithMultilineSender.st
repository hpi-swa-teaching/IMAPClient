header
fetchHeaderResponseWithMultilineSender

	^ (self fetchHeaderResponseBeginning: 45),
		self fetchHeaderResponseDate,
		self fetchHeaderResponseReceiver,
		self fetchHeaderResponseSubject,
		self fetchHeaderResponseMultilineSender,
		self fetchHeaderResponseEnding 