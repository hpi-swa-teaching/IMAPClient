connection
connectTo: serverInfo

	serverInfo isValid ifFalse: [ ^ Error signal: self class errorInvalidConnectionConfiguration ].
	
	self serverInfo: serverInfo.
	self stream
		ssl: self useSSL;
		connectTo: self serverInfo host on: self serverInfo port;
		nextResponse. "skip server greetings"