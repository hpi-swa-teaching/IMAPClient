delete
expungeEmails

	self sendCommand: ICCommand expungeEmails.	
	self fetchNextResponse
