connection
checkForParameterError
	
	(self fatalErrorOccured)
		ifTrue: [^ false].
  
	(ICParser responseIsParameterError: self stream lastResponse) ifTrue: [
		self fatalErrorOccured: true.
		self inform: 'Wrong username or password in check for parameter error (ConnectionHandler)'.
		^ true].
  
	^ false