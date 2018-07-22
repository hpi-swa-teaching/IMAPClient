connection
connectTo: serverInfo with: aStreamClass

	serverInfo isValid ifFalse: [ ^ Error signal: self class errorInvalidConnectionConfiguration ].
	
	Transcript cr; cr; show: 'connectTo'; cr; cr.
	
	self serverInfo: serverInfo.
	[self stream
		ssl: self useSSL;
		connectTo: self serverInfo host on: self serverInfo port with: aStreamClass;
		nextResponse "skip server greetings"]
	on: Error
	do: [self fatalErrorOccured: true]