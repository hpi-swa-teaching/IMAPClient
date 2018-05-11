fetching
resetFlagSeen: anEmail

	self 
		sendCommand: (self class resetFlagSeen: anEmail messageID);
		fetchNextResponse.
	anEmail seen: false.