helper methods
parseStringToBool: aString
		
		aString = 'true'
				ifTrue:  [^true]
				ifFalse: [ ^false]