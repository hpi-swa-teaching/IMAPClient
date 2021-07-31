header
fetchHeaderResponse

	^ (self fetchHeaderResponseBeginning: 42),
		self fetchHeaderResponseReceiver,
		self fetchHeaderResponseSender,
		self fetchHeaderResponseSubject,
		self fetchHeaderResponseDate,
		self fetchHeaderResponseEnding 