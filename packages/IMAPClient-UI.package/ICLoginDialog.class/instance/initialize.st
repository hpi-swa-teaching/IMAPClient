initialization
initialize

	super initialize.
	self ssl: false.
	self credentials: false.
	
	self symbolArray: OrderedCollection new. 
	self symbolArray add: #serverAddress.
	self symbolArray add: #serverPort.
	self symbolArray add: #username.
	self symbolArray add: #password.
					
	"At the moment the login credentials are stored in clear text in the maildir folder within
	the confix.txt file. ToDo: Find a way to store it more secure"
	self applyCredentials
			
			
			
		
  