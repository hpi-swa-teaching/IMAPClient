fetching
resetFlag: anEmail and: aFlag
	
	self sendCommand: (ICCommand resetFlag: aFlag for: anEmail messageID).
	self fetchNextResponse