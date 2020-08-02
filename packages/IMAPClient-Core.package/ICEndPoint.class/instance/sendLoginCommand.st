login
sendLoginCommand
	
	self sendCommand: (ICCommand loginWith: self accountInfo);
		fetchNextResponse;
		loggedIn: (ICParser commandSucceeded: self stream lastResponse)