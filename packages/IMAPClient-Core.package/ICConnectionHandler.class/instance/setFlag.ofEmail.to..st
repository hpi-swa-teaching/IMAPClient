fetching
setFlag: aFlagSymbol ofEmail: anEmailID to: aBool

	(aFlagSymbol == #flagged) ifTrue: [self sendCommand: (self class resetFlagFlagged: anEmailID)].
	(aFlagSymbol == #seen) ifTrue: [self sendCommand: (self class resetFlagSeen: anEmailID)].		
	self fetchNextResponse