fetching
setFlagSeen: anEmail
	
	self 
		sendCommand: (self class setFlagSeen: anEmail messageID);
		fetchNextResponse.
	anEmail seen: true.