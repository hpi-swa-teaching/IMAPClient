protocol handling - flags
switchFlag: aFlag for: anEmail to: aBool
	
	aBool
		ifTrue: [self connectionHandler setFlag: aFlag of: anEmail]
		ifFalse: [self connectionHandler resetFlag: aFlag of: anEmail]