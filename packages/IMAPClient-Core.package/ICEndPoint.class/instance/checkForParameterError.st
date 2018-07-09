connection
checkForParameterError

	(self fatalErrorOccured)
		ifTrue: [^ self].
		
	self responseIsParameterError 
		ifTrue: [
			self fatalErrorOccured: true.
			UserDialogBoxMorph inform: 'Wrong username or password' title: ''.
			self  fatalErrorOccured: true.
			^ true].
	
	^ false