protocol handling - delete
expungeEmails

	self sendCommand: ICCommand expungeEmails.	
	self fetchNextResponse
