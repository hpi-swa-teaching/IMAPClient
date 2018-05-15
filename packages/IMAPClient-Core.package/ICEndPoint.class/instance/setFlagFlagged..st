fetching
setFlagFlagged: anEmail

	self 
		sendCommand: (self class setFlagFlagged: anEmail messageID);
		fetchNextResponse.