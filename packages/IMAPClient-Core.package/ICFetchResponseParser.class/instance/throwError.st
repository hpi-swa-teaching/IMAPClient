stateTransitions
throwError
	| msg |
	msg := 'Parsing Error in state ' , self state.
	self error: msg