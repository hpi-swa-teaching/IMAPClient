protocol handling - fetch
retrieveFlagsFromEmails: anOrderdCollection

	self isConnected ifTrue: [
		self connectionHandler fetchFlagsForUIDs: anOrderdCollection last uniqueID to: anOrderdCollection first uniqueID.
		self parseFetchedFlagsAndPopulateFromEmails: anOrderdCollection]