login
fillBodyFor: anEmail
	
	self 
		sendCommand: (ICCommand fetchBody: anEmail messageID);
		fetchNextResponse.
	anEmail body: self parseFetchBody