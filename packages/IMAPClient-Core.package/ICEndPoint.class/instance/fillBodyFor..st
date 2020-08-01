protocol handling - fetch
fillBodyFor: anEmail
	
	self 
		sendCommand: (ICCommand fetchBody: anEmail messageID);
		fetchNextResponse.
	anEmail body: (ICParser parseFetchBody: self lastResponse)