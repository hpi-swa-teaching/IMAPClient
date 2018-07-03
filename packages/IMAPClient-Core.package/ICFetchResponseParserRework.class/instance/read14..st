stateTransitions
read14: aChar
		"Transcript show: 'after entering read14, i received: ', aChar; cr."
		
		aChar == $)
			ifTrue:[
				
				self emails add: (self endpoint parseFetchHeader: currentMail withId: currentUid).
				self state: 1; reset 
			]
			ifFalse: [currentMail := currentMail , aChar.]	
		