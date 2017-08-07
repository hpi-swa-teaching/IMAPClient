stateTransitions
read9: aChar 

	aChar == Character space
		ifTrue: [ self state: 10 ]
		ifFalse: [ self throwError ]