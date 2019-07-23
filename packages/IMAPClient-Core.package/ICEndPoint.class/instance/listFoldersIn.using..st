message handling
listFoldersIn: root using: filter

	self 
		checkConnected;
		checkLoggedIn.
		
	self sendCommand: (
		{ICCommand listCommand. 
		ICCommand asProtocolQuote: root. 
		ICCommand asProtocolQuote: filter} 
		joinSeparatedBy: self class protocolBlank).
		
	^ self parseListResponse