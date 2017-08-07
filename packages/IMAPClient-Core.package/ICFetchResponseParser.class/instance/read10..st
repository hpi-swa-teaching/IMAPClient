stateTransitions
read10: aChar 
	aChar == $(
		ifTrue: [self parenthesesCounter: (self parenthesesCounter +1).
				self state: 11 ]
		ifFalse: [ self throwError ]