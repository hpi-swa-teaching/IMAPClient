stateTransitions
read4: aChar 

	aChar == $F
		ifTrue: [ self state: 5 ]
		ifFalse: [ self throwError ]