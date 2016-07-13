fetching
fetchNextResponse
	
	| multiLineResponse |
	multiLineResponse := OrderedCollection new.
	[ (self stream nextResponse beginsWith: self class commandSucceeded) or: [ self checkForBadRequest ]] whileFalse: [ multiLineResponse add: self stream lastResponse ].

	self lastResponse: multiLineResponse "if multiLineResponse is empty but no error was risen, all we got was a single line of response containing something like '. OK ...'"