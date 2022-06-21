protocol handling - fetch
retrieveFlagsFrom: anUID to: anotherUID in: aFolder

	self isConnected ifTrue: [
		self connectionHandler fetchFlagsForUIDs: anUID to: anotherUID.
		self parseFetchedFlagsAndPopulate: aFolder]