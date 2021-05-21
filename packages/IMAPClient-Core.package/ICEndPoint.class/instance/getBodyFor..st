protocol handling - fetch
getBodyFor: anEmail
	
	self 
		sendCommand: (ICCommand fetchBody: anEmail messageID);
		fetchNextResponse.
	^ (ICParser parseFetchBody: self lastResponse)