fetching
setFlagFlagged: anEmail

	self 
		sendCommand: (self class setFlagFlagged: anEmail messageID);
		fetchNextResponse.
	anEmail flagged: true.