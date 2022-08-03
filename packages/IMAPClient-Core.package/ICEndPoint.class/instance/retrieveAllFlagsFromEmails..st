protocol handling - fetch
retrieveAllFlagsFromEmails: anOrderdCollection

	self isConnected ifTrue: [
		self connectionHandler fetchAllFlags.
		self parseFetchedFlagsAndPopulateFromEmails: anOrderdCollection]