initialization
initialize

	super initialize.
	self ssl: false.
	
	self symbolArray: OrderedCollection new. 
	self symbolArray add: #name.
	self symbolArray add: #serverAddress.
	self symbolArray add: #serverPort.
	self symbolArray add: #username.
	self symbolArray add: #password