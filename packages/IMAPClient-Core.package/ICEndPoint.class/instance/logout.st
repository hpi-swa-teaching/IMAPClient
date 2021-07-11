login
logout

	self connectionHandler checkConnected.
	self connectionHandler sendDirectCommand: ICCommand logout.
	self close.

	^ true