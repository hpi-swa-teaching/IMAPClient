keyboard handling
keyEvent: aKey
	
	| shouldAccept |
	
	Smalltalk os platformName = 'Win32'
		ifTrue: [shouldAccept := (aKey keyValue = 13)]
		ifFalse: [shouldAccept := (aKey keyValue = 36)].

	shouldAccept
		ifTrue: [self accept]