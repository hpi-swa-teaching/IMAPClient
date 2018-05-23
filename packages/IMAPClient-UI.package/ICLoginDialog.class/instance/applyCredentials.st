initialization
applyCredentials 
	|loginCollection|
	
	loginCollection := self loadCredentialsFromFile.
	
	loginCollection size = 5
		ifTrue: [
		self serverAddress: (loginCollection at: 1).
		self serverPort: (loginCollection at: 2).
		self username: (loginCollection at: 3).
		self password: (loginCollection at: 4).
		self ssl: ( self parseStringToBool: (loginCollection at:5)).
		
		self changed.
		]
			
			
				
		
  