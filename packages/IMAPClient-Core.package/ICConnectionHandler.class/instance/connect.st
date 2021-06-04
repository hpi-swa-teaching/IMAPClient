connection
connect

	self accountInfo isValid ifFalse: [^ Error signal: self class errorInvalidConnectionConfiguration].
	
	[self stream
		ssl: self accountInfo ssl;
		connectTo: self accountInfo host on: self accountInfo port with: self class defaultStreamClass;
		nextResponse "skip server greetings"]
	on: Error
	do: [self fatalErrorOccured: true]