login
sendLoginCommand
	
	self 
		sendDirectCommand: (ICCommand loginWith: self accountInfo);
		loggedIn: (ICParser commandSucceeded: self stream lastResponse)