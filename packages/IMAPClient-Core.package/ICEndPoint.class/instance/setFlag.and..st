fetching
setFlag: anEmail and: aFlag

	self sendCommand: (ICCommand setFlag: aFlag for: anEmail messageID).	
	self fetchNextResponse