instance creation
parseStringToBool: aString
		
		aString = 'true'
				ifTrue:  [^true]
				ifFalse: [ ^false]