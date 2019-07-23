fetching
setFlag: anEmail and: aFlag

	(aFlag == #flagged) ifTrue: [self sendCommand: (ICCommand setFlagFlagged: anEmail messageID)].
	(aFlag == #seen) ifTrue: [self sendCommand: (ICCommand setFlagSeen: anEmail messageID)].		
	self fetchNextResponse