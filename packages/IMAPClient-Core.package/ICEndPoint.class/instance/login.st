message handling
login

	self checkConnected.
 	(self authenticationInfo isValid) 
		ifFalse: [
			self fatalErrorOccured: true.
			^ false].
  	self sendCommand: (
			{ self class loginCommand. 
			self authenticationInfo username. 
			self authenticationInfo password } 
			joinSeparatedBy: self class protocolBlank);
    		fetchNextResponse;
    		loggedIn: self commandSucceeded;
    		checkLoggedIn.
	self loadEmailsFromMaildir.
	
  ^ true