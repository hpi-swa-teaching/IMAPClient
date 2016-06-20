protocol parse
parseListResponse
	
	self fetchNextResponse.
	
	self lastResponse do: [ :each | self folderFromResponse: (each copyFrom: (each indexOf: self class protocolQuote asCharacter) to: each size) ]