protocol handling
parseListResponse
	
	self fetchNextResponse.
	self lastResponse do: [:each | self folderFromResponse: each]