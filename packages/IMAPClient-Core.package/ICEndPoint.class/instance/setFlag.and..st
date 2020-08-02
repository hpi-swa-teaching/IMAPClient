protocol handling - flags
setFlag: anEmail and: aFlag

	self sendCommand: (ICCommand setFlag: aFlag asString for: anEmail messageID).	
	self fetchNextResponse