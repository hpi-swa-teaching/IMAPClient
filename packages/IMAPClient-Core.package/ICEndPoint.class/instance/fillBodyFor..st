connection
fillBodyFor: anEmail
	
	self 
		sendCommand: (self class fetchBodyCommand: anEmail uid);
		fetchNextResponse.
	anEmail body: self parseFetchBody