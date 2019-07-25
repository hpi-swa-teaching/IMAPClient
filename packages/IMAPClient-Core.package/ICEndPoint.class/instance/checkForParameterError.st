error handling
checkForParameterError
	
	(self fatalErrorOccured)
		ifTrue: [^ false].
  
	(ICParser responseIsParameterError: self stream lastResponse) ifTrue: [
		self fatalErrorOccured: true.
		UIManager default inform: 'Wrong username or password'.
		^ true].
  
	^ false