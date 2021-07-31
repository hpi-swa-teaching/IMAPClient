header
fetchHeaderResponseWithDifferentOrder

	^ (self fetchHeaderResponseBeginning: 44),
		self fetchHeaderResponseDate,
		self fetchHeaderResponseReceiver,
		self fetchHeaderResponseSubject,
		self fetchHeaderResponseSender,
		self fetchHeaderResponseEnding 