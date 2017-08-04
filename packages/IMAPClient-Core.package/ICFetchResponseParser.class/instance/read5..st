stateTransitions
read5: aChar 

	aChar == $E
		ifTrue: [ self state: 6 ]
		ifFalse: [ self throwError ]