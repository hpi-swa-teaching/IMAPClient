connection
retrieveFlagsFor: anEmail
	
	self 
		sendCommand: (self class fetchFlagsCommand: anEmail messageID);
		fetchNextResponse.
	^ Dictionary newFrom: {
		#seen -> (self parseFetchFlags includesSubString: '\Seen').
		#flagged -> (self parseFetchFlags includesSubstring: '\Flagged')}
		