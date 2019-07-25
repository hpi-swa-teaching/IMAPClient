error handling
checkForBadRequest

	(self fatalErrorOccured)
 		ifTrue: [^ false].
  
	(ICParser responseIsError: self stream lastResponse) ifTrue: [
		self fatalErrorOccured: true.
		^ Error signal: self class errorBadProtocol].
 
	^ false