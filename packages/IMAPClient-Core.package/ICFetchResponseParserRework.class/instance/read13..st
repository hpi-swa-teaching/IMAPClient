stateTransitions
read13: aChar
		
		(self counter > 0)
		ifTrue: [
			currentMail := currentMail , aChar.
			self counter: (self counter -1).
			(aChar = Character cr) ifTrue: [self counter: (self counter -1)].
		]
		ifFalse: [currentMail := currentMail , aChar. self state: 14]