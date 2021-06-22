login
throwErrorIfNotLoggedIn
	
	(self checkConnected) ifFalse: [
		self fatalErrorOccured: true.
		self inform: 'Cannot connect to the server'. 
		^ false].
	^ true