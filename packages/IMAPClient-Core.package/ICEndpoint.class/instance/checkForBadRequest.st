error handling
checkForBadRequest

	self responseIsError ifTrue: [ ^ Error signal: self class errorBadProtocol ]