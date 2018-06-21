helper
parseStringToBool: aString

	aString = 'true'
		ifTrue:  [^ true]
		ifFalse: [ ^ false]