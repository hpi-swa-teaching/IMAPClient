message handling
listFoldersIn: root using: filter
	self 
		checkConnected;
		checkLoggedIn.
	self sendCommand: (
			{self class listCommand. 
			self class asProtocolQuote: root. 
			self class asProtocolQuote: filter} 
		joinSeparatedBy: self class protocolBlank).
	^ self parseListResponse