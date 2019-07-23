login
login
	
	(self checkConnected) ifFalse: [
		self fatalErrorOccured: true.
		UIManager default inform: 'Cant connect to the server'. 
		^ false].
  	
	(self accountInfo isValid) ifFalse: [
		self fatalErrorOccured: true.
		^ false].
  
	self sendCommand: (
		{ ICCommand loginCommand. 
		self accountInfo usernameAsIMAPString. 
		self accountInfo passwordAsIMAPString }
		joinSeparatedBy: self class protocolBlank);
		fetchNextResponse;
		loggedIn: self commandSucceeded.
  
	(self checkLoggedIn) ifFalse: [
		self fatalErrorOccured: true.
		^ false].
 
	self loadEmailsFromMaildir.
 
	^ true