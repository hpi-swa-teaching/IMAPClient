initialize-release
initialize

	self endpoint: ICMockEndpoint new.
	self endpoint connectionHandler storedCommands: ICMockCommandStorage new.
	self initializeRootFolder.
	
	self reset