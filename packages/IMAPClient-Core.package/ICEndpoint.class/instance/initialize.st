initialization
initialize

	super initialize.
	
	self loggedIn: false.
	self serverInfo: ICServerInfo new.
	self autheticationInfo: ICAuthenticationInfo new.