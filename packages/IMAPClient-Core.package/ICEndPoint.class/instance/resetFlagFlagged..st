fetching
resetFlagFlagged: anEmail

	self 
		sendCommand: (self class resetFlagFlagged: anEmail messageID);
		fetchNextResponse.
	anEmail flagged: false.