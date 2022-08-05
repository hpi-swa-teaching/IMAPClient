protocol handling - fetch
retrieveAllFlagsFromEmails: anOrderedCollection

	self isConnected ifTrue: [
		self connectionHandler fetchAllFlags.
		self parseFetchedFlagsAndPopulateFromEmails: anOrderedCollection]