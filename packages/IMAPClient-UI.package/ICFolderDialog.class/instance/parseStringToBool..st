as yet unclassified
parseStringToBool: aString
		
		aString = 'true'
				ifTrue:  [^true]
				ifFalse: [ ^false]