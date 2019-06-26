initialization
initialize

	super initialize.
	
	self 
		loggedIn: false;
		serverInfo: ICServerInfo new;
		ssl: false;
		name: '';
		authenticationInfo: ICAuthenticationInfo new;
		stream: ICStreamWrapper new;
		rootFolder: (ICFolder newRootFolderWith: self);
		lastResponse: OrderedCollection new;
		fatalErrorOccured: false