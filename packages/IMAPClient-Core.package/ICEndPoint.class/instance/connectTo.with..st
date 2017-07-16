connection
connectTo: serverInfo with: aStreamClass

	serverInfo isValid ifFalse: [ ^ Error signal: self class errorInvalidConnectionConfiguration ].
	
	self serverInfo: serverInfo.
	self stream
		ssl: self useSSL;
		connectTo: self serverInfo host on: self serverInfo port with: aStreamClass;
		nextResponse. "skip server greetings"