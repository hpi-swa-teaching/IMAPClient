connection
checkForBadRequest

	(self fatalErrorOccured)
 		ifTrue: [^ false].
  
	(ICParser responseIsError: self stream lastResponse) ifTrue: [
		self fatalErrorOccured: true.
		BreakPoint break.
		Transcript show: 'error username'; cr.
		self inform: 'Wrong username or passwordddddddddd'.
		Transcript show: self stream lastResponse; cr.
		^ true].
 
	^ false