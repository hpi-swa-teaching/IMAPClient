fetching
resetFlag: anEmail and: aFlag

	(aFlag == #flagged) ifTrue: [self sendCommand: (self class resetFlagFlagged: anEmail messageID)].
	(aFlag == #seen) ifTrue: [self sendCommand: (self class resetFlagSeen: anEmail messageID)].		
	self fetchNextResponse