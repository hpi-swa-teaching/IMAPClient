connection
logout

	self checkConnected.
	self sendDirectCommand: ICCommand logout.
	self close.
	
	^ true