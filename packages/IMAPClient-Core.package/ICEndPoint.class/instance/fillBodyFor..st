login
fillBodyFor: anEmail
	
	self 
		sendCommand: (ICCommand fetchBodyCommand: anEmail messageID);
		fetchNextResponse.
	anEmail body: self parseFetchBody