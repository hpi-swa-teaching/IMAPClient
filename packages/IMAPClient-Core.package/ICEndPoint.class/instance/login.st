login
login
	
	(self checkConnected) ifFalse: [
		self fatalErrorOccured: true.
		self inform: 'Cant connect to the server'. 
		^ false].
  	
	(self accountInfo isValid) ifFalse: [
		self fatalErrorOccured: true.
		^ false].
  
	self sendCommand: (ICCommand loginWith: self accountInfo);
		fetchNextResponse;
		loggedIn: (ICParser commandSucceeded: self stream lastResponse).
  
	(self checkLoggedIn) ifFalse: [
		self fatalErrorOccured: true.
		^ false].
 
	self loadEmailsFromMaildir.
 
	^ true