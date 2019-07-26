helper
lastCharacterIsTab: aString

	^ aString notEmpty and: [aString last asciiValue == 9]