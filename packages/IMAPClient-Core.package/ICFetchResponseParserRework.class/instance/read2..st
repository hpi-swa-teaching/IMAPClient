stateTransitions
read2: aChar 

	aChar == Character space
		ifTrue: [ self state: 3 ]
		ifFalse: [ self throwError ]