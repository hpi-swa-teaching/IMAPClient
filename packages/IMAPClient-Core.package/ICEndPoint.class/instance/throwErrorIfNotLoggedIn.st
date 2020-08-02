login
throwErrorIfNotLoggedIn
	
	(self checkConnected) ifFalse: [
		self fatalErrorOccured: true.
		self inform: 'Cant connect to the server'. 
		^ false].
	^ true