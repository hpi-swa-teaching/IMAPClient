connection
handleInvalidAccountInfo

	self fatalErrorOccured: true.
	^ Error signal: self class errorInvalidConnectionConfiguration