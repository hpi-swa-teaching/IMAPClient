connection
connectWith: aStreamClass

	self accountInfo isValid ifFalse: [^ Error signal: self class errorInvalidConnectionConfiguration].
 
	[self stream
		ssl: self accountInfo ssl;
		connectTo: self accountInfo host on: self accountInfo port with: aStreamClass;
		nextResponse "skip server greetings"]
	on: Error
	do: [self fatalErrorOccured: true]