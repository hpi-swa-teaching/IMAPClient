login
login

	(self checkConnected) ifFalse: [
		self fatalErrorOccured: true.
		UIManager default inform: 'Cant connect to the server'. 
		^ false].
  	
	(self authenticationInfo isValid) ifFalse: [
		self fatalErrorOccured: true.
		^ false].
  
	self sendCommand: (
		{ self class loginCommand. 
		self authenticationInfo username. 
		self authenticationInfo password }
		joinSeparatedBy: self class protocolBlank);
		fetchNextResponse;
		loggedIn: self commandSucceeded.
  
	(self checkLoggedIn) ifFalse: [
		self fatalErrorOccured: true.
		^ false].
 
	self loadEmailsFromMaildir.
 
	^ true