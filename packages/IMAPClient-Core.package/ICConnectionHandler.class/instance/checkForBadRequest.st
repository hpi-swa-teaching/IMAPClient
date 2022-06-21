connection
checkForBadRequest

	self fatalErrorOccured ifTrue: [^ false].
	
	(ICParser responseIsError: self stream lastResponse) ifTrue: [
		self fatalErrorOccured: true.
		self inform: 'responseError in checkForBadRequest'.
		^ true].
	
	^ false