initialize-release
initialize

	self endPoint: ICMockEndPoint new.
	self endPoint connectionHandler storedCommands: ICMockCommandStorage new.
	self initializeRootFolder.
	
	self reset