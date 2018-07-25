fetching
setFlag: anEmail and: aFlag

	(aFlag == #flagged) ifTrue: [self sendCommand: (self class setFlagFlagged: anEmail messageID)].
	(aFlag == #seen) ifTrue: [self sendCommand: (self class setFlagSeen: anEmail messageID)].		
	self fetchNextResponse