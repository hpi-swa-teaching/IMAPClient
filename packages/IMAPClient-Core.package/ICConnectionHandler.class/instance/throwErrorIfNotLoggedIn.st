login
throwErrorIfNotLoggedIn

	self checkConnected ifFalse: [
		self fatalErrorOccured: true.
		self inform: 'Cannot connect to the server. Please check whether you are connected to the internet'.
		
		^ false].
	^ true