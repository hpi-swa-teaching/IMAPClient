protocol handling - fetch
retrieveAllFlagsIn: aFolder

	self isConnected ifTrue: [
		self connectionHandler fetchAllFlags.
		self parseFetchedFlagsAndPopulate: aFolder]