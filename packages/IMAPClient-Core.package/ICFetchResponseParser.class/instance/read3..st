stateTransitions
read3: aChar 

	aChar isDigit
		ifTrue: [ currentUid := currentUid , aChar.
				self state: 3 ]
		ifFalse: [ aChar = Character space
					ifTrue: [ self state: 4 ]
					ifFalse: [ self throwError ]]