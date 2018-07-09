error handling
checkForBadRequest

	(self fatalErrorOccured)
		ifTrue: [^ self].
		
	self responseIsError ifTrue: [
		self fatalErrorOccured: true.
		^ Error signal: self class errorBadProtocol].
	
	^ false