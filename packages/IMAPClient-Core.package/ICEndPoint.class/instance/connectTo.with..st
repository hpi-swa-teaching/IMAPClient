connection
connectTo: serverInfo with: aStreamClass

	serverInfo isValid ifFalse: [ ^ Error signal: self class errorInvalidConnectionConfiguration ].
	
	Transcript cr; cr; show: 'connectTo'; cr; cr.
	
	self serverInfo: serverInfo.
	self stream
		ssl: self useSSL.
	[self connectTo: self serverInfo host on: self serverInfo port with: aStreamClass]
		on: Error
		do: [Transcript show: 'something'].
		
	Transcript show: 'Before nextResponse'; cr.
	self nextResponse. "skip server greetings"
		Transcript show: 'After nextResponse '