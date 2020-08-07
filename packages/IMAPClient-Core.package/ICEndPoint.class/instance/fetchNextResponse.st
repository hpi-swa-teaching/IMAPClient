protocol handling - fetch
fetchNextResponse
	
	| multiLineResponse |

	multiLineResponse := OrderedCollection new.
	self stream nextResponse.
	self 
		checkForBadRequest;
		checkForParameterError.
	
	[ICParser commandSucceeded: self stream lastResponse]
		whileFalse: [ 
			multiLineResponse add: self stream lastResponse.
			self stream nextResponse].
	
	self lastResponse: multiLineResponse