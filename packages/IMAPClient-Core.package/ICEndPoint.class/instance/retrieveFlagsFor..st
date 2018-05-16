connection
retrieveFlagsFor: anEmail
	
	| flags |
	self 
		sendCommand: (self class fetchFlagsCommand: anEmail messageID);
		fetchNextResponse.
	flags := self parseFetchFlags.
	^ Dictionary newFrom: {
		#seen -> (flags includesSubstring: '\Seen').
		#flagged -> (flags includesSubstring: '\Flagged').}. 
		