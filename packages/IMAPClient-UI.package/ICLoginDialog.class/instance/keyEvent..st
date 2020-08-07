helper
keyEvent: aKey
	
	| shouldLogin |
	
	Smalltalk os platformName = 'Win32'
		ifTrue: [shouldLogin := (aKey keyValue = 13)]
		ifFalse: [shouldLogin := (aKey keyValue = 36)].

	shouldLogin
		ifTrue: [self login]