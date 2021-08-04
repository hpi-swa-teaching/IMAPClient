header
fetchHeaderResponseWithMultilineReceiver

	^ (self fetchHeaderResponseBeginning: 42),
		self fetchHeaderResponseMultilineReceiver,
		self fetchHeaderResponseSender,
		self fetchHeaderResponseSubject,
		self fetchHeaderResponseDate,
		self fetchHeaderResponseEnding 