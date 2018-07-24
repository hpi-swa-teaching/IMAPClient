helper
checkIfLastCharacterIsTab: aString

	aString isEmpty ifTrue: [^ false].
	^ (aString last asciiValue == 9)