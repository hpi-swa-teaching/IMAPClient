fetching
resetFlag: anEmail and: aFlag

	(aFlag == #flagged) ifTrue: [self sendCommand: (ICCommand resetFlagFlagged: anEmail messageID)].
	(aFlag == #seen) ifTrue: [self sendCommand: (ICCommand resetFlagSeen: anEmail messageID)].		
	self fetchNextResponse