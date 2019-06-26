connection
fillBodyFor: anEmail
	
	self halt.
	self 
		sendCommand: (self class fetchBodyCommand: anEmail messageID);
		fetchNextResponse.
	anEmail body: self parseFetchBody