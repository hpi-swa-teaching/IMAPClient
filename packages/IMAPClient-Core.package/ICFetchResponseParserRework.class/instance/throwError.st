stateTransitions
throwError
	| msg |
	self halt.
	msg := 'Parsing Error in state ' , self state.
	self error: msg