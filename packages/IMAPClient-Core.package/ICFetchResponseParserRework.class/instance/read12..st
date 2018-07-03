stateTransitions
read12: aChar
	aChar isAlphaNumeric
		ifTrue: [ self parseBytes: (self parseBytes) , aChar]	
		ifFalse: [
			aChar == $}	
			ifTrue: [ self counter: (self parseBytes) asNumber. self state: 13]
			ifFalse: [ self throwError]
		].
	