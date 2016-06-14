protocol parse
parseListResponse
	
	| line |
	self stream nextResponse.
	self checkForBadRequest.
	
	[self stream lastResponse beginsWith: self class commandSucceeded] whileFalse: [
		line := self stream lastResponse.
		self folderFromResponse: (line copyFrom: (line indexOf: self class protocolQuote asCharacter) to: line size).
		self stream nextResponse ]