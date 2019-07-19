error handling
checkForParameterError
	
	(self fatalErrorOccured)
		ifTrue: [^ false].
  
	self responseIsParameterError ifTrue: [
		self fatalErrorOccured: true.
		UIManager default inform: 'Wrong username or password'.
		^ true].
  
	^ false