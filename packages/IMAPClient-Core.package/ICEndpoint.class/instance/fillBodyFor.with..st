connection
fillBodyFor: message with: messageId
	
	self stream sendCommand: (self class fetchBodyCommand: messageId).
	self fetchNextResponse.
	message body: self parseFetchBody