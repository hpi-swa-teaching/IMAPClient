initialization
initialize

	super initialize.
	
	self loggedIn: false.
	self serverInfo: ICServerInfo new.
	self authenticationInfo: ICAuthenticationInfo new.