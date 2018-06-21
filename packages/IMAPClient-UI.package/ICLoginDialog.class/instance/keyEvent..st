helper
keyEvent: aKey

	"global keyEvent listener attached to morph and input fields"
	
	| shouldLogin |
	
	Smalltalk os platformName = 'Win32'
		ifTrue: [shouldLogin := (aKey keyValue = 13)]
		ifFalse: [shouldLogin := (aKey keyValue = 36)].
	
	shouldLogin
		ifTrue: [self login]