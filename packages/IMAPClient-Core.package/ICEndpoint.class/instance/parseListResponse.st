protocol parse
parseListResponse
	
	self stream nextResponse.
	self 
		checkForBadRequest;
		fetchNextResponse.
	
	self lastResponse do: [ :each |
		self folderFromResponse: (each copyFrom: (each indexOf: self class protocolQuote asCharacter) to: each size).
		self stream nextResponse ]