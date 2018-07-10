connection
checkForParameterError

	(self fatalErrorOccured)
		ifTrue: [^ false].
		
	self responseIsParameterError 
		ifTrue: [
			self fatalErrorOccured: true.
			UserDialogBoxMorph inform: 'Wrong username or password' title: ''.
			^ true].
		
	^ false