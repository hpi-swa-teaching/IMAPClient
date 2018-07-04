delete
moveEmail: anEmail to: aFolder

	self sendCommand: (self class deleteEmail: anEmail messageID).		
	self fetchNextResponse