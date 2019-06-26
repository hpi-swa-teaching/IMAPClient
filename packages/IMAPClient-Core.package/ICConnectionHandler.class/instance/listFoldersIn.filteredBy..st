message handling
listFoldersIn: root filteredBy: aString

	self 
		checkConnected;
		checkLoggedIn.
		
	self sendCommand: (
		{self class listCommand. 
		self class asProtocolQuote: root. 
		self class asProtocolQuote: aString} 
		joinSeparatedBy: self class protocolBlank).
	
	^ self lastResponse