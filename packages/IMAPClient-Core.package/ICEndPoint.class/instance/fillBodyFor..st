login
fillBodyFor: anEmail
	
	self 
		sendCommand: (self class fetchBodyCommand: anEmail messageID);
		fetchNextResponse.
	anEmail body: self parseFetchBody