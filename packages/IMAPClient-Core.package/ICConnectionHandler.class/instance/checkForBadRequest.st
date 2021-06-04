as yet unclassified
checkForBadRequest

	(self fatalErrorOccured)
 		ifTrue: [^ false].
  
	(ICParser responseIsError: self stream lastResponse) ifTrue: [
		self fatalErrorOccured: true.
		self inform: 'Wrong username or password'.
		^ true].
 
	^ false