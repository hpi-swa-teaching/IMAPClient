fetching
resetSeenFlag: anEmail

	self 
		sendCommand: (self class resetSeenFlag: anEmail messageID);
		fetchNextResponse.
	anEmail seen: false.