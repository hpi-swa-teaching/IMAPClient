protocol handling - flags
modifyFlag: aFlag for: anEmail
	
	(anEmail perform: aFlag)
		ifTrue: [self resetFlag: anEmail and: aFlag]
		ifFalse: [self setFlag: anEmail and: aFlag]