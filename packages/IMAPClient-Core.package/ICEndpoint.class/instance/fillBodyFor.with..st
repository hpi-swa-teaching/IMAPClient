connection
fillBodyFor: message with: messageId
	
	self stream sendCommand: (self class fetchBodyCommand: messageId).
	message body: self parseFetchBody