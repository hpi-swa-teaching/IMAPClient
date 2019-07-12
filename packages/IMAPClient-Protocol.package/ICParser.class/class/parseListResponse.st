parsing
parseListResponse
	
	self fetchNextResponse.
	self lastResponse do: [:each | self folderFromResponse: (each copyAfter: self class protocolQuote asCharacter)]