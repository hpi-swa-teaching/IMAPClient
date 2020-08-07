fetching
resetFlag: anEmail and: aFlag
	
	self sendCommand: (ICCommand resetFlag: aFlag asString for: anEmail messageID).
	self fetchNextResponse