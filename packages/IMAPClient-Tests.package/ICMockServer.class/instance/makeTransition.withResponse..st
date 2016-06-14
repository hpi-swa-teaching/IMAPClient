accessing
makeTransition: aCommand withResponse: aResponse

	(self commandSucceeded: aResponse)
		ifTrue: [ self responses: (self stateTransitions at: aCommand ifAbsent: self responses) ]
	