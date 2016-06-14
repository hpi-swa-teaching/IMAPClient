initialization
initialize

	super initialize.
	
	self loggedIn: false.
	self serverInfo: ICServerInfo new.
	self authenticationInfo: ICAuthenticationInfo new.
	self stream: ICStreamWrapper new.
	self rootFolder: ICFolder new.
	self lastResponse: OrderedCollection new.