initialize-release
initialize

	self endPoint: ICMockEndpoint new.
	self endPoint connectionHandler storedCommands: ICMockCommandStorage new.
	self initializeRootFolder.
	
	self reset