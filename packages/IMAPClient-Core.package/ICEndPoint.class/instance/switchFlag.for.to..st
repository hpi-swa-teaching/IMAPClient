protocol handling - flags
switchFlag: aFlag for: anEmail to: aBool
	
	aBool
		ifTrue: [self connectionHandler setFlag: anEmail of: aFlag]
		ifFalse: [self connectionHandler resetFlag: anEmail of: aFlag]