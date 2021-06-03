protocol handling
parseListResponse
	
	self lastResponse do: [:each | self folderFromResponse: each]