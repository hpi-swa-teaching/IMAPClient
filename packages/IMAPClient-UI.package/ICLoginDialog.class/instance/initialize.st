initialization
initialize

	super initialize.
	self ssl: true.
	self serverPort: (Text fromString: '993').
	self updateMode: false.
	self symbolArray: OrderedCollection new. 
	self symbolArray add: #name.
	self symbolArray add: #serverAddress.
	self symbolArray add: #serverPort.
	self symbolArray add: #username.
	self symbolArray add: #password