fetching
resetImportantFlag: anEmail

	self 
		sendCommand: (self class resetImportantFlag: anEmail messageID);
		fetchNextResponse.
	anEmail important: false.