fetching
setSeenFlag: anEmail
	
	self 
		sendCommand: (self class setSeenFlag: anEmail messageID);
		fetchNextResponse.
	anEmail seen: true.