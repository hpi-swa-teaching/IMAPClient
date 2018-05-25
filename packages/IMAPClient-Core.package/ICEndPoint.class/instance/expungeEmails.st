delete
expungeEmails

	self sendCommand: (self class expungeEmails).	
	self fetchNextResponse
