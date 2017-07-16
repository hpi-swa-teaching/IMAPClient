fetching
fetchNextResponse
	
	| multiLineResponse |
	multiLineResponse := OrderedCollection new.
	self stream nextResponse.
	self checkForBadRequest;
		checkForParameterError.
	[ (self stream lastResponse beginsWith: self class commandSucceeded)] whileFalse: [ 
		multiLineResponse add: self stream lastResponse.
		self stream nextResponse ].

	self lastResponse: multiLineResponse "if multiLineResponse is empty but no error was risen, all we got was a single line of response containing something like '. OK ...'"