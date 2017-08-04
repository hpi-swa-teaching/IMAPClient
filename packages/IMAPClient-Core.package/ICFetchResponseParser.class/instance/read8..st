stateTransitions
read8: aChar 

	aChar == $H
		ifTrue: [ self state: 9 ]
		ifFalse: [ self throwError ]