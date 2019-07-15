connection
fillBodyFor: anEmail
	
	self 
		sendCommand: (self class fetchBodyCommand: anEmail messageID);
		fetchNextResponse.
	anEmail body: (ICParser parseFetchBody: self lastResponse)