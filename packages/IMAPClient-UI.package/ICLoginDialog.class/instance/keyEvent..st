helper
keyEvent: aKey
	"global keyEvent listener attached to morph and input fields"
	(aKey keyValue = 13)
		ifTrue: [self login]