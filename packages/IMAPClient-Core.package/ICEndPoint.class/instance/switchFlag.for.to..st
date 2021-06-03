protocol handling - flags
switchFlag: aFlag for: anEmail to: aBool
	
	aBool
		ifTrue: [self setFlag: anEmail and: aFlag]
		ifFalse: [self resetFlag: anEmail and: aFlag]