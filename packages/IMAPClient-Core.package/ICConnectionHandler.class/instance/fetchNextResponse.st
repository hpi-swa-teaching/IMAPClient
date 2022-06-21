fetch
fetchNextResponse

	self stream nextResponse.
	self
		checkForBadRequest;
		checkForParameterError.
	
	self lastResponse: self assembleResponse