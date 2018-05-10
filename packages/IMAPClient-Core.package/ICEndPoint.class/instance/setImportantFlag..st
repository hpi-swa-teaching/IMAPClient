fetching
setImportantFlag: anEmail

	self 
		sendCommand: (self class setImportantFlag: anEmail messageID);
		fetchNextResponse.
	anEmail important: true.