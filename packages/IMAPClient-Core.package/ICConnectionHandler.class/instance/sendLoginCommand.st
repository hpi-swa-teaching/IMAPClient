login
sendLoginCommand
	
	self sendDirectCommand: (ICCommand loginWith: self accountInfo).
	self loggedIn: (ICParser commandSucceeded: self stream lastResponse)