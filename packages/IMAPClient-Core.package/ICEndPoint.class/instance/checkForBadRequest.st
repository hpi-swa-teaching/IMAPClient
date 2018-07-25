error handling
checkForBadRequest

	(self fatalErrorOccured)
		ifTrue: [^ false].
		
	self responseIsError ifTrue: [
		self fatalErrorOccured: true.
		^ Error signal: self class errorBadProtocol].
	
	^ false