stateTransitions
read11: aChar 
	aChar == $(
		ifTrue: [ self parenthesesCounter: (self parenthesesCounter +1)].	
	aChar == $)	
		ifTrue: [ self parenthesesCounter: (self parenthesesCounter - 1)].
	parenthesesCounter = 0
		ifTrue: [ self emails add: (self endpoint parseFetchHeader: currentMail withId: currentUid).
			     	self state: 1; reset ]
		ifFalse: [ currentMail := currentMail , aChar ]