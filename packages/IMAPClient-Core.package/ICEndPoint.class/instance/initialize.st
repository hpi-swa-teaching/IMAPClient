initialization
initialize

	super initialize.
	self loggedIn: false.
	self serverInfo: ICServerInfo new.
	self ssl: false.
	self authenticationInfo: ICAuthenticationInfo new.
	self stream: ICStreamWrapper new.
	self rootFolder: (ICFolder newRootFolderWith: self).
	self lastResponse: OrderedCollection new.